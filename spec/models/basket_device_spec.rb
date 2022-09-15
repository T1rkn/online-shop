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
require 'rails_helper'

RSpec.describe BasketDevice, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
