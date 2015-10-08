class CreateItemTransactions < ActiveRecord::Migration
  def change
    create_table :item_transactions do |t|
      t.integer :item_id
      t.integer :transaction_id

      t.timestamps null: false
    end
  end
end
