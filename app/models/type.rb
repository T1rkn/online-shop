# == Schema Information
#
# Table name: types
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Type < ApplicationRecord
  has_many :devices
  has_many :type_brands

  has_many :brands, through: :type_brands
end
