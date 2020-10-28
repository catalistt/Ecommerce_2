class Product < ApplicationRecord
  has_many :product_variations
  has_many :products, through: :product_variations 
end
