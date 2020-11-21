class Order < ApplicationRecord
  belongs_to :user_id
  has_many :orderitems
end
