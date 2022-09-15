# == Schema Information
#
# Table name: type_brands
#
#  id         :bigint           not null, primary key
#  type_id    :bigint
#  brand_id   :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe TypeBrand, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
