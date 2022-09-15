# == Schema Information
#
# Table name: baskets
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Basket < ApplicationRecord
  belongs_to :user
  has_many :basket_devices
end
