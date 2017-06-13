class CreateBars < ActiveRecord::Migration[5.1]
  def change
    create_table :bars do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :logo
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
