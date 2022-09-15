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
class TypeBrand < ApplicationRecord
  belongs_to :type
  belongs_to :brand
end
