if Vertical.count.zero? && Rails.env.development?
	(1..20).each do
		Vertical.create([
			name: Faker::Name.unique.name
		])
	end
	puts "Successfully seeded #{Vertical.count} verticals to database."
else
	puts "Verticals are already been seeded before"
end