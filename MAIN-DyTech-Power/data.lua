require "config"

--[[ Boilers Check ]]--
if Boilers then 
require("prototypes.boilers.entity")
require("prototypes.boilers.item")
require("prototypes.boilers.recipe")
require("prototypes.boilers.tech")
end

--[[ Accumulators Check ]]--
if Accumulators then 
require("prototypes.accumulators-normal.entity")
require("prototypes.accumulators-normal.item")
require("prototypes.accumulators-normal.recipe")
require("prototypes.accumulators-normal.tech")
end

--[[ Steam Engines Check ]]--
if SteamEngines then 
require("prototypes.steam-engines-normal.entity")
require("prototypes.steam-engines-normal.item")
require("prototypes.steam-engines-normal.recipe")
require("prototypes.steam-engines-normal.tech")
end

--[[ Solar Panels Check ]]--
if SolarPanels then 
require("prototypes.solar-panels-normal.entity")
require("prototypes.solar-panels-normal.item")
require("prototypes.solar-panels-normal.recipe")
require("prototypes.solar-panels-normal.tech")
end