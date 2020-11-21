class Product < ApplicationRecord
  has_many :productvariations
  has_many :product_categories
  has_many :orders, :through => :orderitems
  accepts_nested_attributes_for :orderitems
end
