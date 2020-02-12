json.results @verticals.each do |vertical|
	json.Id vertical.id
	json.Name vertical.name
end