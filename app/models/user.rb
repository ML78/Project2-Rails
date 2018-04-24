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

  #custom methods:

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
