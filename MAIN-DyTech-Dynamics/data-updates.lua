require "config"
require "database/research-system"

function RemoveFromTechAuto()
	for name, info in pairs(RSDatabase.ItemUnlock) do
		for k, tech in pairs(data.raw["technology"][info.Tech].effects) do
			if tech.recipe == name then table.remove(data.raw["technology"][info.Tech].effects, k) end
		--break
		end
	end
end

function RemoveFromTechManual(Tech, Recipe)
		for k, tech in pairs(data.raw["technology"][Tech].effects) do
			if tech.recipe == Recipe then table.remove(data.raw["technology"][Tech].effects, k) end
		break
		end
end

if Research_System then
	RemoveFromTechAuto()
	-- The following Recipes are already in the database, but are twice as unlock available in the game. The second needs to be removed without the database.
	RemoveFromTechManual("logistic-robotics", "roboport")
	RemoveFromTechManual("logistic-robotics", "logistic-chest-passive-provider")
end