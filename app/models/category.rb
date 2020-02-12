class Category < ApplicationRecord
	before_save :check_name

	self.table_name = 'categories'
	self.primary_key = 'id'

	validates :name, uniqueness: true
	belongs_to :vertical

	def check_name
		if Vertical.exists?(name: self.name)
			throw :abort
		else
			true
		end
	end

end
