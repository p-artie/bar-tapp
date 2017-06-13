class AddBarIdToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :bar, foreign_key: true
  end
end
