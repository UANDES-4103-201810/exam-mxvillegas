class Customer < ApplicationRecord
  has_many :pizzas, :through => :order

end
