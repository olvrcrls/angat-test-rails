class Category < ApplicationRecord
	self.table_name = 'categories'
	self.primary_key = 'id'

	validates :name, uniqueness: true
	belongs_to :vertical

	before_save do
		existing_veritcal = Vertical.find_by(name: self.name)
		return false if !existing_vertical.nil?

		true
	end

end
