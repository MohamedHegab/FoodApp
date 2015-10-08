class FoodTransaction < ActiveRecord::Base
	belongs_to :transactione, class_name: "Transaction", foreign_key: "transaction_id"
	belongs_to :meal
end
