if Category.count.zero? && Rails.env.development?
	total_verticals = Vertical.count
	(1..10).each do
		Category.create!([
			{
				name: Faker::Name.unique.name,
				vertical_id: rand(1..total_verticals),
				state: 'active'
			}
		])
	end
	puts "Successfully seeded #{Category.count} categories to the database."
else
	puts "Categories are already been seeded before."
end