data.raw["recipe"]["iron-gear-wheel"].enabled = false
for k, v in pairs(data.raw["recipe"]["steam-engine"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["steam-engine"].ingredients, k) end
end
table.insert(data.raw["recipe"]["steam-engine"].ingredients,{"stone-gear-wheel", 5})
for k, v in pairs(data.raw["recipe"]["burner-mining-drill"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["burner-mining-drill"].ingredients, k) end
end
table.insert(data.raw["recipe"]["burner-mining-drill"].ingredients,{"stone-gear-wheel", 3})
for k, v in pairs(data.raw["recipe"]["burner-inserter"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["burner-inserter"].ingredients, k) end
end
table.insert(data.raw["recipe"]["burner-inserter"].ingredients,{"stone-gear-wheel", 1})
for k, v in pairs(data.raw["recipe"]["offshore-pump"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["offshore-pump"].ingredients, k) end
end
table.insert(data.raw["recipe"]["offshore-pump"].ingredients,{"stone-gear-wheel", 1})
for k, v in pairs(data.raw["recipe"]["science-pack-1"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["science-pack-1"].ingredients, k) end
end
table.insert(data.raw["recipe"]["science-pack-1"].ingredients,{"stone-gear-wheel", 1})
for k, v in pairs(data.raw["recipe"]["basic-transport-belt"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["basic-transport-belt"].ingredients, k) end
end
table.insert(data.raw["recipe"]["basic-transport-belt"].ingredients,{"stone-gear-wheel", 1})
for k, v in pairs(data.raw["recipe"]["lab"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["lab"].ingredients, k) end
end
table.insert(data.raw["recipe"]["lab"].ingredients,{"stone-gear-wheel", 10})
