class OrderItem < ApplicationRecord
  belongs_to :drink
  belongs_to :order

  def price
    drink.price * quantity
  end
end
