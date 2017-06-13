class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
