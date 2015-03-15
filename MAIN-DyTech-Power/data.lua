require "config"

if Use_Wattage then
	-- hier kan jij al je requires toevoegen die je nodig hebt!
	--[[ Boilers Check ]]--
	if Boilers then 
		require("prototypes.new.boilers.entity")
		require("prototypes.new.boilers.item")
		require("prototypes.new.boilers.recipe")
		require("prototypes.new.boilers.tech")
	end
	--[[ Accumulators Check ]]--
	if Accumulators then 
		require("prototypes.new.accumulators-normal.entity")
		require("prototypes.new.accumulators-normal.item")
		require("prototypes.new.accumulators-normal.recipe")
		require("prototypes.new.accumulators-normal.tech")
	end
	--[[ Steam Engines Check ]]--
	if SteamEngines then 
		require("prototypes.new.steam-engines-normal.entity")
		require("prototypes.new.steam-engines-normal.item")
		require("prototypes.new.steam-engines-normal.recipe")
		require("prototypes.new.steam-engines-normal.tech")
	end
	--[[ Solar Panels Check ]]--
	if SolarPanels then 
		require("prototypes.new.solar-panels-normal.entity")
		require("prototypes.new.solar-panels-normal.item")
		require("prototypes.new.solar-panels-normal.recipe")
		require("prototypes.new.solar-panels-normal.tech")
	end
	if Nuclear_Reactors then
		require("prototypes.new.nuclear-reactors.entity")
		require("prototypes.new.nuclear-reactors.item")
		require("prototypes.new.nuclear-reactors.recipe")
		require("prototypes.new.nuclear-reactors.tech")
	end
else
-- hieronder is de oude DyTech-Power. Gaarne hier van af blijven :D
--[[ Boilers Check ]]--
if Boilers then 
require("prototypes.old.boilers.entity")
require("prototypes.old.boilers.item")
require("prototypes.old.boilers.recipe")
require("prototypes.old.boilers.tech")
end
--[[ Accumulators Check ]]--
if Accumulators then 
require("prototypes.old.accumulators-normal.entity")
require("prototypes.old.accumulators-normal.item")
require("prototypes.old.accumulators-normal.recipe")
require("prototypes.old.accumulators-normal.tech")
end
--[[ Steam Engines Check ]]--
if SteamEngines then 
require("prototypes.old.steam-engines-normal.entity")
require("prototypes.old.steam-engines-normal.item")
require("prototypes.old.steam-engines-normal.recipe")
require("prototypes.old.steam-engines-normal.tech")
end
--[[ Solar Panels Check ]]--
if SolarPanels then 
require("prototypes.old.solar-panels-normal.entity")
require("prototypes.old.solar-panels-normal.item")
require("prototypes.old.solar-panels-normal.recipe")
require("prototypes.old.solar-panels-normal.tech")
end
end