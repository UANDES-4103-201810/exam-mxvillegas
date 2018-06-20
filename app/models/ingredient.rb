class Ingredient < ApplicationRecord
  has_many :pizzas, :through => :recipe
end
