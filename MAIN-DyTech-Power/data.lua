require "config"


if Config.Nuclear_Reactors then
    if use_membranes then
	  require("prototypes.nuclear-reactors.nuclear-items.membranes")
	else
	  require("prototypes.nuclear-reactors.nuclear-items.no-gem-membranes")
	end
	require("prototypes.resources.uraniumdioxide")
--	require("prototypes.resources.fluorite")
	require("prototypes.tile.noise-layers")
	require("prototypes.autoplace-controls")
	require("prototypes.nuclear-reactors.nuclear-entities.chemical-processor")
	require("prototypes.nuclear-reactors.nuclear-entities.nuclear-reactor")
	require("prototypes.nuclear-reactors.nuclear-entities.dynamo")
	require("prototypes.nuclear-reactors.nuclear-items.fuel")
	require("prototypes.nuclear-reactors.nuclear-items.items")
	require("prototypes.nuclear-reactors.nuclear-items.reactor-item")
	require("prototypes.nuclear-reactors.nuclear-tech.reactor-tech")
	require("prototypes.nuclear-reactors.nuclear-recipes.reactor-recipe")
	require("prototypes.nuclear-reactors.nuclear-recipes.fuel")
  end

--[[ Boilers Check ]]--
if Config.Boilers then
	if Config.High_Boilers then
		require("prototypes.boilers.high.high-entity")
		require("prototypes.boilers.high.high-item")
		require("prototypes.boilers.high.high-recipe")
		require("prototypes.boilers.tech.highTech")
	end
	if Config.Normal_Boilers then
		require("prototypes.boilers.normal.entity")
		require("prototypes.boilers.normal.item")
		require("prototypes.boilers.normal.recipe")
	end

	if Config.Normal_Boilers and not Config.High_Boilers then
		require("prototypes.boilers.tech.normal")
	elseif Config.High_Boilers and not Config.Normal_Boilers then
		require("prototypes.boilers.tech.hightech")
	elseif Config.Normal_Boilers and Config.High_Boilers then
		require("prototypes.boilers.tech.normal")
		require("prototypes.boilers.tech.highTech")
	end
end

--[[ Accumulators Check ]]--
if Config.Accumulators then 
	if Config.Small_Accumulators then
		require("prototypes.accumulators.small.entity")
		require("prototypes.accumulators.small.item")
		require("prototypes.accumulators.small.recipe")
	end
	if Config.Normal_Accumulators then
		require("prototypes.accumulators.normal.entity")
		require("prototypes.accumulators.normal.item")
		require("prototypes.accumulators.normal.recipe")
	end
	if Config.Large_Accumulators then
		require("prototypes.accumulators.large.entity")
		require("prototypes.accumulators.large.item")
		require("prototypes.accumulators.large.recipe")
	end
	if Config.Small_Accumulators and not Config.Normal_Accumulators and not Config.Large_Accumulators then
		require("prototypes.accumulators.tech.small")
	elseif Config.Normal_Accumulators and not Config.Small_Accumulators and not Config.Large_Accumulators then
		require("prototypes.accumulators.tech.normal")
	elseif Config.Large_Accumulators and not Config.Small_Accumulators and not Config.Normal_Accumulators then
		require("prototypes.accumulators.tech.small")
	elseif Config.Small_Accumulators and Config.Normal_Accumulators and not Config.Large_Accumulators then
		require("prototypes.accumulators.tech.small_and_normal")
	elseif Config.Small_Accumulators and Config.Large_Accumulators and not Config.Normal_Accumulators then
		require("prototypes.accumulators.tech.small_and_large")
	elseif Config.Normal_Accumulators and Config.Large_Accumulators and not Config.Small_Accumulators then
		require("prototypes.accumulators.tech.normal_and_large")
	elseif Config.Small_Accumulators and Config.Normal_Accumulators and Config.Large_Accumulators then
		require("prototypes.accumulators.tech.small_normal_and_large")
	end
end

--[[ Solar Panels Check ]]--
if SolarPanels then 
	if Config.Small_SolarPanels then
		require("prototypes.solar-panels.small.entity")
		require("prototypes.solar-panels.small.item")
		require("prototypes.solar-panels.small.recipe")
	end
	if Config.Normal_SolarPanels then
		require("prototypes.solar-panels.normal.entity")
		require("prototypes.solar-panels.normal.item")
		require("prototypes.solar-panels.normal.recipe")
	end
	if Config.Large_SolarPanels then
		require("prototypes.solar-panels.large.entity")
		require("prototypes.solar-panels.large.item")
		require("prototypes.solar-panels.large.recipe")
	end
	if Config.Small_SolarPanels and not Config.Normal_SolarPanels and not Config.Large_SolarPanels then
		require("prototypes.solar-panels.tech.small")
	elseif Config.Normal_SolarPanels and not Config.Small_SolarPanels and not Config.Large_SolarPanels then
		require("prototypes.solar-panels.tech.normal")
	elseif Config.Large_SolarPanels and not Config.Small_SolarPanels and not Config.Normal_SolarPanels then
		require("prototypes.solar-panels.tech.large")
	elseif Config.Small_SolarPanels and Config.Normal_SolarPanels and not Config.Large_SolarPanels then
		require("prototypes.solar-panels.tech.small_and_normal")
	elseif Config.Small_SolarPanels and Config.Large_SolarPanels and not Config.Normal_SolarPanels then
		require("prototypes.solar-panels.tech.small_and_large")
	elseif Config.Normal_SolarPanels and Config.Large_SolarPanels and not Config.Small_SolarPanels then
		require("prototypes.solar-panels.tech.normal_and_large")
	elseif Config.Small_SolarPanels and Config.Normal_SolarPanels and Config.Large_SolarPanels then
		require("prototypes.solar-panels.tech.small_normal_and_large")
	end
end

--[[ Steam Engines Check ]]--
if Config.SteamEngines then 
	if Config.High_SteamEngines then
		require("prototypes.steam-engines.high.high-entity")
		require("prototypes.steam-engines.high.high-item")
		require("prototypes.steam-engines.high.high-recipe")
		require("prototypes.steam-engines.tech.highTech")
	end
	if Config.Normal_SteamEngines then
		require("prototypes.steam-engines.normal.entity")
		require("prototypes.steam-engines.normal.item")
		require("prototypes.steam-engines.normal.recipe")
	end
	if Config.Normal_Boilers and not Config.High_Boilers then
		require("prototypes.steam-engines.tech.normal")
	elseif Config.High_Boilers and not Config.Normal_Boilers then
		require("prototypes.steam-engines.tech.hightech")
	elseif Config.Normal_Boilers and Config.High_Boilers then
		require("prototypes.steam-engines.tech.normal")
		require("prototypes.steam-engines.tech.highTech")
	end
end