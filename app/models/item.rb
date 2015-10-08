class Item < ActiveRecord::Base
	has_many :ingredients
	has_many :meals, through: :ingredients
	has_many :item_transactions
	has_many :transactions, through: :item_transactions
end
