# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :user_id, presence: true

  def self.most_recent
    order(:created_at).last(20)
  end

end
