require "config"

if Use_Wattage then
  if Nuclear_Reactors then
    if use_membranes then
	  require("prototypes.new.nuclear-reactors.nuclear-items.membranes")
	else
	  require("prototypes.new.nuclear-reactors.nuclear-items.no-gem-membranes")
	end
--	require("prototypes.new.nuclear-reactors.entity")
	require("prototypes.new.nuclear-reactors.recipe")
--	require("prototypes.new.nuclear-reactors.tech")
	require("prototypes.new.resources.uraniumdioxide")
--	require("prototypes.new.resources.fluorite")
	require("prototypes.new.tile.noise-layers")
	require("prototypes.new.autoplace-controls")
	require("prototypes.new.nuclear-reactors.nuclear-entities.chemical-processor")
	require("prototypes.new.nuclear-reactors.nuclear-entities.nuclear-reactor")
	require("prototypes.new.nuclear-reactors.nuclear-items.fuel")
	require("prototypes.new.nuclear-reactors.nuclear-items.items")
	require("prototypes.new.nuclear-reactors.nuclear-items.reactor-item")
	require("prototypes.new.nuclear-reactors.nuclear-tech.reactor-tech")
	require("prototypes.new.nuclear-reactors.nuclear-recipes.reactor-recipe")
	require("prototypes.new.nuclear-reactors.nuclear-recipes.fuel")
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
end

--[[ Boilers Check ]]--
if Boilers then 
	if Use_Wattage then
		require("prototypes.new.boilers.entity")
		require("prototypes.new.boilers.item")
		require("prototypes.new.boilers.recipe")
		require("prototypes.new.boilers.tech")
	else
		require("prototypes.old.boilers.entity")
		require("prototypes.old.boilers.high-entity")
		require("prototypes.old.boilers.item")
		require("prototypes.old.boilers.recipe")
		require("prototypes.old.boilers.tech")
	end
end

--[[ Accumulators Check ]]--
if Accumulators then 
	if Use_Wattage then
		require("prototypes.new.accumulators-normal.entity")
		require("prototypes.new.accumulators-normal.item")
		require("prototypes.new.accumulators-normal.recipe")
		require("prototypes.new.accumulators-normal.tech")
	else
		require("prototypes.old.accumulators-normal.entity")
		require("prototypes.old.accumulators-normal.item")
		require("prototypes.old.accumulators-normal.recipe")
		require("prototypes.old.accumulators-normal.tech")
	end
end

--[[ Solar Panels Check ]]--
if SolarPanels then 
	if Use_Wattage then
		require("prototypes.new.solar-panels-normal.entity")
		require("prototypes.new.solar-panels-normal.item")
		require("prototypes.new.solar-panels-normal.recipe")
		require("prototypes.new.solar-panels-normal.tech")	
	else
		require("prototypes.old.solar-panels-normal.entity")
		require("prototypes.old.solar-panels-normal.item")
		require("prototypes.old.solar-panels-normal.recipe")
		require("prototypes.old.solar-panels-normal.tech")
	end
end

--[[ Steam Engines Check ]]--
if SteamEngines then 
	if Use_Wattage then
		require("prototypes.new.steam-engines-normal.entity")
		require("prototypes.new.steam-engines-normal.item")
		require("prototypes.new.steam-engines-normal.recipe")
		require("prototypes.new.steam-engines-normal.tech")
	else
		require("prototypes.old.steam-engines-normal.entity")
		require("prototypes.old.steam-engines-normal.item")
		require("prototypes.old.steam-engines-normal.recipe")
		require("prototypes.old.steam-engines-normal.tech")
	end
end