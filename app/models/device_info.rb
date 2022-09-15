# == Schema Information
#
# Table name: device_infos
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :string           not null
#  device_id   :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class DeviceInfo < ApplicationRecord
  belongs_to :device
end
