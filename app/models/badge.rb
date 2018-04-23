# == Schema Information
#
# Table name: badges
#
#  id          :integer          not null, primary key
#  image       :text
#  score       :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Badge < ApplicationRecord
end
