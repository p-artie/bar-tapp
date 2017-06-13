class OrderItem < ApplicationRecord
  belongs_to :drink
  belongs_to :order
end
