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