class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :price, :quantity, numericality: { greater_than: 0}
end
