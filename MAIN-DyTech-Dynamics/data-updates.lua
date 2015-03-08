require "config"
require "database/research-system"

function RemoveFromTech()
	for name, info in pairs(RSDatabase.ItemUnlock) do
		for k, tech in pairs(data.raw["technology"][info.Tech].effects) do
			if tech.recipe == name then table.remove(data.raw["technology"][info.Tech].effects, k) end
		--break
		end
	end
end

if Research_System then
	RemoveFromTech()
end