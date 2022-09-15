# == Schema Information
#
# Table name: devices
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  rating     :integer          default(0)
#  img        :string           not null
#  type_id    :bigint
#  brand_id   :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Device < ApplicationRecord
  belongs_to :type
  belongs_to :brand

  has_many :ratings
  has_many :basket_devices
  has_many :device_infos, as: 'info'
end
