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
require 'rails_helper'

RSpec.describe Device, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
