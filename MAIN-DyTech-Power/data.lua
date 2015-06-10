require "config"


if Nuclear_Reactors then
    if use_membranes then
	  require("prototypes.nuclear-reactors.nuclear-items.membranes")
	else
	  require("prototypes.nuclear-reactors.nuclear-items.no-gem-membranes")
	end
	require("prototypes.nocore.resources.uraniumdioxide")
--	require("prototypes.nocore.resources.fluorite")
	require("prototypes.nocore.tile.noise-layers")
	require("prototypes.nocore.autoplace-controls")
--[[	require("prototypes.nuclear-reactors.recipe")
	require("prototypes.resources.uraniumdioxide")
--	require("prototypes.resources.fluorite")
	require("prototypes.tile.noise-layers")
	require("prototypes.autoplace-controls")]]
	require("prototypes.nuclear-reactors.nuclear-entities.chemical-processor")
	require("prototypes.nuclear-reactors.nuclear-entities.nuclear-reactor")
	require("prototypes.nuclear-reactors.nuclear-items.fuel")
	require("prototypes.nuclear-reactors.nuclear-items.items")
	require("prototypes.nuclear-reactors.nuclear-items.reactor-item")
	require("prototypes.nuclear-reactors.nuclear-tech.reactor-tech")
	require("prototypes.nuclear-reactors.nuclear-recipes.reactor-recipe")
	require("prototypes.nuclear-reactors.nuclear-recipes.fuel")
  end
  if dont_use_dytech then
	require("prototypes.nocore.resources.uraniumdioxide")
--	require("prototypes.nocore.resources.fluorite")
	require("prototypes.nocore.tile.noise-layers")
	require("prototypes.nocore.autoplace-controls")
	require("prototypes.nocore.nuclear-reactors.nuclear-entities.chemical-processor")
	require("prototypes.nocore.nuclear-reactors.nuclear-entities.nuclear-reactor")
	require("prototypes.nocore.nuclear-reactors.nuclear-items.fuel")
	require("prototypes.nocore.nuclear-reactors.nuclear-items.items")
	require("prototypes.nocore.nuclear-reactors.nuclear-items.reactor-item")
	require("prototypes.nocore.nuclear-reactors.nuclear-tech.reactor-tech")
	require("prototypes.nocore.nuclear-reactors.nuclear-recipes.reactor-recipe")
	require("prototypes.nocore.nuclear-reactors.nuclear-recipes.fuel")
	require("prototypes.nocore.item-group.dytech-nuclear")
	require("prototypes.nocore.categories.recipe-category")
end

--[[ Boilers Check ]]--
if Boilers then 
	require("prototypes.boilers.entity")
	require("prototypes.boilers.high-entity")
	require("prototypes.boilers.item")
	require("prototypes.boilers.recipe")
	require("prototypes.boilers.tech")
	end

--[[ Accumulators Check ]]--
if Accumulators then 
	if Small_Accumulators then
		require("prototypes.accumulators.small.entity")
		require("prototypes.accumulators.small.item")
		require("prototypes.accumulators.small.recipe")
	end
	if Normal_Accumulators then
		require("prototypes.accumulators.normal.entity")
		require("prototypes.accumulators.normal.item")
		require("prototypes.accumulators.normal.recipe")
		require("prototypes.accumulators.normal.tech")
	end
	if Large_Accumulators then
		require("prototypes.accumulators.large.entity")
		require("prototypes.accumulators.large.item")
		require("prototypes.accumulators.large.recipe")
	end
	if Small_Accumulators and not Normal_Accumulators and not Large_Accumulators then
		require("prototypes.accumulators.tech.small")
	elseif Normal_Accumulators and not Small_Accumulators and not Large_Accumulators then
		require("prototypes.accumulators.tech.normal")
	elseif Large_Accumulators and not Small_Accumulators and not Normal_Accumulators then
		require("prototypes.accumulators.tech.small")
	elseif Small_Accumulators and Normal_Accumulators and not Large_Accumulators then
		require("prototypes.accumulators.tech.small_and_normal")
	elseif Small_Accumulators and Large_Accumulators and not Normal_Accumulators then
		require("prototypes.accumulators.tech.small_and_large")
	elseif Normal_Accumulators and Large_Accumulators and not Small_Accumulators then
		require("prototypes.accumulators.tech.normal_and_large")
	elseif Small_Accumulators and Normal_Accumulators and Large_Accumulators then
		require("prototypes.accumulators.tech.small_normal_and_large")
	end
end

--[[ Solar Panels Check ]]--
if SolarPanels then 
	if Small_SolarPanels then
		require("prototypes.solar-panels.small.entity")
		require("prototypes.solar-panels.small.item")
		require("prototypes.solar-panels.small.recipe")
	end
	if Normal_SolarPanels then
		require("prototypes.solar-panels.normal.entity")
		require("prototypes.solar-panels.normal.item")
		require("prototypes.solar-panels.normal.recipe")
	end
	if Large_SolarPanels then
		require("prototypes.solar-panels.large.entity")
		require("prototypes.solar-panels.large.item")
		require("prototypes.solar-panels.large.recipe")
	end
	if Small_SolarPanels and not Normal_SolarPanels and not Large_SolarPanels then
		require("prototypes.solar-panels.tech.small")
	elseif Normal_SolarPanels and not Small_SolarPanels and not Large_SolarPanels then
		require("prototypes.solar-panels.tech.normal")
	elseif Large_SolarPanels and not Small_SolarPanels and not Normal_SolarPanels then
		require("prototypes.solar-panels.tech.large")
	elseif Small_SolarPanels and Normal_SolarPanels and not Large_SolarPanels then
		require("prototypes.solar-panels.tech.small_and_normal")
	elseif Small_SolarPanels and Large_SolarPanels and not Normal_SolarPanels then
		require("prototypes.solar-panels.tech.small_and_large")
	elseif Normal_SolarPanels and Large_SolarPanels and not Small_SolarPanels then
		require("prototypes.solar-panels.tech.normal_and_large")
	elseif Small_SolarPanels and Normal_SolarPanels and Large_SolarPanels then
		require("prototypes.solar-panels.tech.small_normal_and_large")
	end
end

--[[ Steam Engines Check ]]--
if SteamEngines then 
--	require("prototypes.steam-engines.small.entity")
--	require("prototypes.steam-engines.small.item")
--	require("prototypes.steam-engines.small.recipe")
--	require("prototypes.steam-engines.small.tech")
	require("prototypes.steam-engines.normal.entity")
	require("prototypes.steam-engines.normal.item")
	require("prototypes.steam-engines.normal.recipe")
	require("prototypes.steam-engines.normal.tech")
--	require("prototypes.steam-engines.large.entity")
--	require("prototypes.steam-engines.large.item")
--	require("prototypes.steam-engines.large.recipe")
--	require("prototypes.steam-engines.large.tech")
end