for k, v in pairs(data.raw["recipe"]["basic-laser-defense-equipment-2"].ingredients) do
	if v[1] == "steel-plate" then table.remove(data.raw["recipe"]["basic-laser-defense-equipment-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["basic-laser-defense-equipment-3"].ingredients) do
	if v[1] == "steel-plate" then table.remove(data.raw["recipe"]["basic-laser-defense-equipment-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["basic-laser-defense-equipment-2"].ingredients,{"silver-plate", 5})
table.insert(data.raw["recipe"]["basic-laser-defense-equipment-3"].ingredients,{"tungsten-plate", 5})
for k, v in pairs(data.raw["recipe"]["laser-turret-7"].ingredients) do
	if v[1] == "steel-gear-wheel" then table.remove(data.raw["recipe"]["laser-turret-7"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["laser-turret-8"].ingredients) do
	if v[1] == "steel-gear-wheel" then table.remove(data.raw["recipe"]["laser-turret-8"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["laser-turret-9"].ingredients) do
	if v[1] == "steel-gear-wheel" then table.remove(data.raw["recipe"]["laser-turret-9"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["laser-turret-7"].ingredients) do
	if v[1] == "steel-plate" then table.remove(data.raw["recipe"]["laser-turret-7"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["laser-turret-8"].ingredients) do
	if v[1] == "steel-plate" then table.remove(data.raw["recipe"]["laser-turret-8"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["laser-turret-9"].ingredients) do
	if v[1] == "steel-plate" then table.remove(data.raw["recipe"]["laser-turret-9"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["laser-turret-sniper-3"].ingredients) do
	if v[1] == "steel-plate" then table.remove(data.raw["recipe"]["laser-turret-sniper-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["laser-turret-sniper-3"].ingredients) do
	if v[1] == "steel-gear-wheel" then table.remove(data.raw["recipe"]["laser-turret-sniper-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["laser-turret-7"].ingredients,{"gunmetal-alloy", 5})
table.insert(data.raw["recipe"]["laser-turret-8"].ingredients,{"gunmetal-alloy", 10})
table.insert(data.raw["recipe"]["laser-turret-9"].ingredients,{"gunmetal-alloy", 20})
table.insert(data.raw["recipe"]["laser-turret-7"].ingredients,{"tungsten-gear-wheel", 5})
table.insert(data.raw["recipe"]["laser-turret-8"].ingredients,{"tungsten-gear-wheel", 10})
table.insert(data.raw["recipe"]["laser-turret-9"].ingredients,{"tungsten-gear-wheel", 20})
table.insert(data.raw["recipe"]["laser-turret-sniper-3"].ingredients,{"tungsten-gear-wheel", 20})
table.insert(data.raw["recipe"]["laser-turret-sniper-3"].ingredients,{"gunmetal-alloy", 80})
for k, v in pairs(data.raw["recipe"]["power-armor-mk3"].ingredients) do
	if v[1] == "steel-gear-wheel" then table.remove(data.raw["recipe"]["power-armor-mk3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["power-armor-mk3"].ingredients,{"gunmetal-alloy", 80})