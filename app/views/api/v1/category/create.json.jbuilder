json.results do
	json.Id @category.id
	json.Name @category.name
	json.Verticals @category.vertical_id
	json.State @category.state
end