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
require 'rails_helper'

RSpec.describe DeviceInfo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
