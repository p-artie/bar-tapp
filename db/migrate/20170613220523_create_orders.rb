class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :stripe_token

      t.timestamps
    end
  end
end
