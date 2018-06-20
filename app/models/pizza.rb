class Pizza < ApplicationRecord
  has_many :ingredients, :through => :recipe
  has_many :customers, :through => :order

  validates :name, presence: true


end
