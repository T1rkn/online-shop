class BasketDevice < ApplicationRecord
  belongs_to :basket
  belongs_to :device
end
