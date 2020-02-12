if Course.count.zero? && Rails.env.development?
	total_categories = Category.count
	(1..50).each do
		Course.create!([
			{
				name: Faker::Name.unique.name,
				author: Faker::Name.unique.name,
				category_id: rand(1..total_categories),
				state: 'active'
			}
		])
	end

	puts "Successfully seeded #{Course.count} courses to the database."
else
	puts "Course table has already been seeded."
end