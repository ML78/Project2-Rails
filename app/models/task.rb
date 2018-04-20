# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  image       :text
#  category    :text
#  score       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ApplicationRecord
  has_many :achievements
  has_many :users, :through => :achievements
end
