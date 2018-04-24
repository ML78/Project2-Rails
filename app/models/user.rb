# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  image           :text
#  password_digest :string
#  location        :text
#  admin           :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  latitude        :float
#  longitude       :float
#

class User < ApplicationRecord
  has_secure_password
  has_many :achievements
  has_many :tasks, :through => :achievements
  has_many :messages, dependent: :destroy

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true

  geocoded_by :location
  after_validation :geocode

  has_many :active_relationships,  class_name:  "Relationship", foreign_key: "follower_id", dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship", foreign_key: "followed_id", dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower


# Methods for following

def feed
 end

 # Follows a user.
 def follow(other_user)
   following << other_user
 end

 # Unfollows a user.
 def unfollow(other_user)
   following.delete(other_user)
 end

 # Returns true if the current user is following the other user.
 def following?(other_user)
   following.include?(other_user)
 end


  #custom methods for score, levels and badges:

  def score
    total = 0
    achievements.each do |a|
      total += a.task.score
    end
    total
  end

  def level
    (score/100).floor
  end

  def badges
    Badge.where('score <= ?',score)
  end
end
