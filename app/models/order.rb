class Order < ApplicationRecord
  has_many :order_items
  belongs_to :bar

  def total
    order_items.sum(&:price)
  end
end
