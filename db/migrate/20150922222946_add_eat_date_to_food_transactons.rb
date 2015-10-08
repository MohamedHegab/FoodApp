class AddEatDateToFoodTransactons < ActiveRecord::Migration
  def change
    add_column :food_transactions, :eat_date, :date
  end
end
