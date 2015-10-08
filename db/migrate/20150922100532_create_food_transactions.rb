class CreateFoodTransactions < ActiveRecord::Migration
  def change
    create_table :food_transactions do |t|
      t.integer :meal_id
      t.integer :transaction_id

      t.timestamps null: false
    end
  end
end
