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

if Config.Research_System then
	RemoveFromTechAuto()
	-- The following Recipes are already in the database, but are twice as unlock available in the game. The second needs to be removed without the database.
	RemoveFromTechManual("logistic-robotics", "roboport")
	RemoveFromTechManual("logistic-robotics", "logistic-chest-passive-provider")
data.raw["technology"]["follower-robot-count-1"].effects = {}
data.raw["technology"]["follower-robot-count-2"].effects = {}
data.raw["technology"]["follower-robot-count-3"].effects = {}
data.raw["technology"]["follower-robot-count-4"].effects = {}
data.raw["technology"]["follower-robot-count-5"].effects = {}
data.raw["technology"]["follower-robot-count-6"].effects = {}
data.raw["technology"]["follower-robot-count-7"].effects = {}
data.raw["technology"]["follower-robot-count-8"].effects = {}
data.raw["technology"]["follower-robot-count-9"].effects = {}
data.raw["technology"]["follower-robot-count-10"].effects = {}
data.raw["technology"]["follower-robot-count-11"].effects = {}
data.raw["technology"]["follower-robot-count-12"].effects = {}
data.raw["technology"]["follower-robot-count-13"].effects = {}
data.raw["technology"]["follower-robot-count-14"].effects = {}
data.raw["technology"]["follower-robot-count-15"].effects = {}
data.raw["technology"]["follower-robot-count-16"].effects = {}
data.raw["technology"]["follower-robot-count-17"].effects = {}
data.raw["technology"]["follower-robot-count-18"].effects = {}
data.raw["technology"]["follower-robot-count-19"].effects = {}
data.raw["technology"]["follower-robot-count-20"].effects = {}
data.raw["technology"]["character-logistic-trash-slots-1"].effects = {}
data.raw["technology"]["character-logistic-trash-slots-2"].effects = {}
data.raw["technology"]["character-logistic-slots-1"].effects = {}
data.raw["technology"]["character-logistic-slots-2"].effects = {}
data.raw["technology"]["character-logistic-slots-3"].effects = {}
data.raw["technology"]["character-logistic-slots-4"].effects = {}
data.raw["technology"]["character-logistic-slots-5"].effects = {}
data.raw["technology"]["character-logistic-slots-6"].effects = {}
data.raw["technology"]["character-logistic-slots-7"].effects = {}
data.raw["technology"]["character-logistic-slots-8"].effects = {}
data.raw["technology"]["character-logistic-slots-9"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-1"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-2"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-3"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-4"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-5"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-6"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-7"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-8"].effects = {}
data.raw["technology"]["inserter-stack-size-bonus-9"].effects = {}
data.raw["technology"]["toolbelt"].effects = {}
data.raw["technology"]["toolbelt-1"].effects = {}
data.raw["technology"]["toolbelt-2"].effects = {}
if Config.Longer_Research and not Config.Infinite_Research then
	for k, v in pairs(data.raw["technology"]) do
	 v.unit.count = v.unit.count * 5
	end
end
end