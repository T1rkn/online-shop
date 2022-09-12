class Type < ApplicationRecord
  has_many :devices

  has_and_belongs_to_many :brands, through: :type_brands
end
