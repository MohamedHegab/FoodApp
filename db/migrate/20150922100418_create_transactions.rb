class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.text :notes

      t.timestamps null: false
    end
  end
end
