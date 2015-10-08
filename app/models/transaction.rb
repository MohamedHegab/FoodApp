class Transaction < ActiveRecord::Base
	has_many :food_transactions, foreign_key: "transaction_id"
	has_many :item_transactions
	has_many :meals, through: :food_transactions
	has_many :items, through: :item_transactions

	accepts_nested_attributes_for :food_transactions, reject_if: proc {|a| a['item_id'].blank?} , allow_destroy: true
	accepts_nested_attributes_for :item_transactions, reject_if: proc {|a| a['item_id'].blank?} , allow_destroy: true
end
