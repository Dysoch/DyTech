require "config"
require "database/research-system"

function RemoveFromTech()
for name, in pairs(RSDatabase.ItemUnlock) do
	for tech, TechName in pairs(RSDatabase.ItemUnlock[name]) do
		for k, v in pairs(data.raw["technology"][TechName].effects) do
			if v.recipe == name then table.remove(data.raw["technology"][TechName].effects, k) end
			break
		end
	end
end
end

if Research_System then
	RemoveFromTech()
end