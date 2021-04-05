class Product < ApplicationRecord
  validates :price, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  has_and_belongs_to_many :categories
  has_many :order_items
  has_many :orders, through: :order_items
end
