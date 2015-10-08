class ItemTransaction < ActiveRecord::Base
	belongs_to :item
	belongs_to :day_transaction, class_name: "Transaction"
end
