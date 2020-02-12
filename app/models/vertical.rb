class Vertical < ApplicationRecord
	before_save :check_name

	self.table_name = 'verticals'
	self.primary_key = 'id'

	validates :name, uniqueness: true

	has_many :categories

	def check_name
		if Category.exists?(name: self.name)
			throw :abort
		else
			true
		end
	end
end
