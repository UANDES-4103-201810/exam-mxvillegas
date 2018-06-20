class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :pizza

  validates :name, presence: true
end
