class Item < ApplicationRecord
  validates :name, presence: true
  validates :info, presence: true
  validates :category_id, presence: true
  validates :sales_status_id, presence: true
  validates :prefecture_id, presence: true
  validates :price, presence: true

  belongs_to :user
  # has_one    :purchase

end
