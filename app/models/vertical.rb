class Vertical < ApplicationRecord
	self.table_name = 'verticals'
	self.primary_key = 'id'

	validates :name, uniqueness: true

	has_many :categories

	before_save do
		existing_category = Category.find_by(name: self.name)
		return false if !existing_category.nil?

		true
	end
end
