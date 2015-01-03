table.insert(data.raw["recipe"]["car"].ingredients,{"wheel", 4})
table.insert(data.raw["recipe"]["laser-turret"].ingredients,{"stone-gear-wheel", 5})
for k, v in pairs(data.raw["recipe"]["speed-module"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["speed-module"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-2"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["speed-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-2"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["speed-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-2"].ingredients) do
	if v[1] == "speed-module" then table.remove(data.raw["recipe"]["speed-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-3"].ingredients) do
	if v[1] == "speed-module-2" then table.remove(data.raw["recipe"]["speed-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-3"].ingredients) do
	if v[1] == "alien-artifact" then table.remove(data.raw["recipe"]["speed-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-3"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["speed-module-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["speed-module"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["speed-module"].ingredients,{"copper-plate", 5})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"speed-module", 1})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"electronic-circuit", 5})
table.insert(data.raw["recipe"]["speed-module-3"].ingredients,{"speed-module-2", 1})
table.insert(data.raw["recipe"]["speed-module-3"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["speed-module-3"].ingredients,{"electronic-circuit", 5})
for k, v in pairs(data.raw["recipe"]["effectivity-module"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["effectivity-module"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-2"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["effectivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-2"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["effectivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-2"].ingredients) do
	if v[1] == "effectivity-module" then table.remove(data.raw["recipe"]["effectivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-3"].ingredients) do
	if v[1] == "effectivity-module-2" then table.remove(data.raw["recipe"]["effectivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-3"].ingredients) do
	if v[1] == "alien-artifact" then table.remove(data.raw["recipe"]["effectivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-3"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["effectivity-module-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["effectivity-module"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module"].ingredients,{"copper-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"effectivity-module", 1})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"electronic-circuit", 5})
table.insert(data.raw["recipe"]["effectivity-module-3"].ingredients,{"effectivity-module-2", 1})
table.insert(data.raw["recipe"]["effectivity-module-3"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-3"].ingredients,{"electronic-circuit", 5})
for k, v in pairs(data.raw["recipe"]["productivity-module"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["productivity-module"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-2"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["productivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-2"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["productivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-2"].ingredients) do
	if v[1] == "productivity-module" then table.remove(data.raw["recipe"]["productivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-3"].ingredients) do
	if v[1] == "productivity-module-2" then table.remove(data.raw["recipe"]["productivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-3"].ingredients) do
	if v[1] == "alien-artifact" then table.remove(data.raw["recipe"]["productivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-3"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["productivity-module-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["productivity-module"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["productivity-module"].ingredients,{"copper-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"productivity-module", 1})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"electronic-circuit", 5})
table.insert(data.raw["recipe"]["productivity-module-3"].ingredients,{"productivity-module-2", 1})
table.insert(data.raw["recipe"]["productivity-module-3"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-3"].ingredients,{"electronic-circuit", 5})
data.raw["recipe"]["iron-gear-wheel"].enabled = false
for k, v in pairs(data.raw["recipe"]["steam-engine"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["steam-engine"].ingredients, k) end
end
table.insert(data.raw["recipe"]["steam-engine"].ingredients,{"stone-gear-wheel", 5})
for k, v in pairs(data.raw["recipe"]["basic-mining-drill"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["basic-mining-drill"].ingredients, k) end
end
table.insert(data.raw["recipe"]["basic-mining-drill"].ingredients,{"stone-gear-wheel", 5})
for k, v in pairs(data.raw["recipe"]["burner-mining-drill"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["burner-mining-drill"].ingredients, k) end
end
table.insert(data.raw["recipe"]["burner-mining-drill"].ingredients,{"stone-gear-wheel", 3})
for k, v in pairs(data.raw["recipe"]["basic-inserter"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["basic-inserter"].ingredients, k) end
end
table.insert(data.raw["recipe"]["basic-inserter"].ingredients,{"stone-gear-wheel", 1})
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
data.raw["recipe"]["iron-axe"].enabled = false