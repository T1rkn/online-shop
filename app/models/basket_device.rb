# == Schema Information
#
# Table name: basket_devices
#
#  id         :bigint           not null, primary key
#  basket_id  :bigint
#  device_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BasketDevice < ApplicationRecord
  belongs_to :basket
  belongs_to :device
end
