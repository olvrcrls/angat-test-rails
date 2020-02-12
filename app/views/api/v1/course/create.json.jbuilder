json.results do
	json.Id @course.id
	json.Author @course.author
	json.Categories @course.category_id
	json.state @course.state
end