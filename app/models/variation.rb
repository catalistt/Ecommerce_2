class Variation < ApplicationRecord
  enum size: [:S, :M, :L, :XL, :XXL]
  enum color: ["Red", "Blue", "White"]
  has_many :product_variations
  has_many :products, through: :product_variations

end
