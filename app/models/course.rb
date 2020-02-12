class Course < ApplicationRecord
	self.table_name = 'courses'
	self.primary_key = 'id'

	belongs_to :category
end
