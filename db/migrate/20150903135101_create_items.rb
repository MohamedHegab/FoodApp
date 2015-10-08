class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :cost
      t.string :measurment_unit

      t.timestamps null: false
    end
  end
end
