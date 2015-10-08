class AddPriceToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :price, :decimal
  end
end
