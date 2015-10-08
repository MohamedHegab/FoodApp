class Meal < ActiveRecord::Base
	before_save :meal_price
	has_many :ingredients
	has_many :items, through: :ingredients
	has_many :food_transactions
	has_many :transactions, through: :food_transactions

	accepts_nested_attributes_for :ingredients, reject_if: proc {|a| a['item_id'].blank?} , allow_destroy: true

	def meal_price
		cost = self.items.pluck :cost
		quant = self.ingredients.pluck :quantity		
		self.price = cost.zip(quant).inject(0) {|r, (a, b)| r + (a * b)}
	end
end	