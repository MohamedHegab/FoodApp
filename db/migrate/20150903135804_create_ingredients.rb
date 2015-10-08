class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
		t.integer :item_id
		t.integer :meal_id
		t.decimal :quantity
		
      t.timestamps null: false
    end
  end
end
