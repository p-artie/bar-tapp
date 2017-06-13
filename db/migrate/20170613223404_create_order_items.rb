class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :shots
      t.integer :quantity
      t.text :instructions
      t.references :drink, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
