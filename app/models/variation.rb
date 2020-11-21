class Variation < ApplicationRecord
  enum size: [:S, :M, :L, :XL, :XXL]
  enum color: ["Yellow", "White", "Pink"]
  has_many :productvariations

end
