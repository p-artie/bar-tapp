class AddBarIdToDrink < ActiveRecord::Migration[5.1]
  def change
    add_reference :drinks, :bar, foreign_key: true
  end
end
