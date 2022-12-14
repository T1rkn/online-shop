# == Schema Information
#
# Table name: brands
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Brand < ApplicationRecord
  has_many :devices
  has_many :type_brands
  has_many :types, through: :type_brands
end
