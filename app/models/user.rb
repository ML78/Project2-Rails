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
#

class User < ApplicationRecord
  has_secure_password
  has_many :achievements
  has_many :tasks, :through => :achievements
<<<<<<< HEAD
=======

  validates :email, :presence => true, :uniqueness => true
  validates :name, :presence => true

>>>>>>> f01271ba79e76400a457d6c52179c96f6ec3a574
end
