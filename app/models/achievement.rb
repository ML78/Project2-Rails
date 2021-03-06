# == Schema Information
#
# Table name: achievements
#
#  id         :integer          not null, primary key
#  task_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :task
end
