class Order < ApplicationRecord
  has_one :item
  has_one :address
end
