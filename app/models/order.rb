class Order < ApplicationRecord
  belongs_to :user
  before_create :generate_number

  has_many :order_items
  has_many :products, through: :order_items
  has_many :payments

  validates :number, uniqueness: true

  def add_product(product_id, quantity)
    product = Product.find(product_id)
    if product && (product.stock > 0)
    order_items.create(product_id: product, quantity: quantity, price: product.price)
    end
  end

  def generate_number
    self.number ||= loop do
      random = random_candidate
      break random unless self.class.exists?(number: random)
    end
  end

  def random_candidate
    "#{hash_prefix}#{Array.new(hash_size){rand(hash_size)}.join}"
  end

  def hash_prefix
    "BO"
  end

  def hash_size
    9
  end
end
def compute_total
    sum = 0
    order_items.each do |item|
      sum += item.price
    end
    update_attribute(:total, sum)
  
end