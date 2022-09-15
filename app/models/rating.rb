# == Schema Information
#
# Table name: ratings
#
#  id         :bigint           not null, primary key
#  rate       :integer          not null
#  user_id    :bigint
#  device_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :device
end
