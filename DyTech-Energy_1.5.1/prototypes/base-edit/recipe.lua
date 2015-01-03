for k, v in pairs(data.raw["recipe"]["small-pump"].ingredients) do
	if v[1] == "electric-engine-unit" then table.remove(data.raw["recipe"]["small-pump"].ingredients, k) end
end
table.insert(data.raw["recipe"]["small-pump"].ingredients,{"engine-unit", 1})