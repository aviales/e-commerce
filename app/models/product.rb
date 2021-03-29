class Product < ApplicationRecord
  validates :price, numericality: {only_integer: true, greater_tan_or_equal_to: 0}
  has_and_belongs_to_many :categories
end
