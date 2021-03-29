class Order < ApplicationRecord
  belongs_to :user
  before_create :generate_number

  validates :number, uniqueness: true

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
