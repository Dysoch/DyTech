require "config"

if Use_Wattage then
  if Nuclear_Reactors then
    if use_membranes then
	  require("prototypes.new.nuclear-reactors.nuclear-items.membranes")
	else
	  require("prototypes.new.nuclear-reactors.nuclear-items.no-gem-membranes")
	end
	require("prototypes.nocore.resources.uraniumdioxide")
--	require("prototypes.nocore.resources.fluorite")
	require("prototypes.nocore.tile.noise-layers")
	require("prototypes.nocore.autoplace-controls")
--[[	require("prototypes.new.nuclear-reactors.recipe")
	require("prototypes.new.resources.uraniumdioxide")
--	require("prototypes.new.resources.fluorite")
	require("prototypes.new.tile.noise-layers")
	require("prototypes.new.autoplace-controls")]]
	require("prototypes.new.nuclear-reactors.nuclear-entities.chemical-processor")
	require("prototypes.new.nuclear-reactors.nuclear-entities.nuclear-reactor")
	require("prototypes.new.nuclear-reactors.nuclear-items.fuel")
	require("prototypes.new.nuclear-reactors.nuclear-items.items")
	require("prototypes.new.nuclear-reactors.nuclear-items.reactor-item")
	require("prototypes.new.nuclear-reactors.nuclear-tech.reactor-tech")
	require("prototypes.new.nuclear-reactors.nuclear-recipes.reactor-recipe")
	require("prototypes.new.nuclear-reactors.nuclear-recipes.fuel")
	require("prototypes.nocore.item-group.dytech-nuclear")
	require("prototypes.nocore.categories.recipe-category")
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
--[[		require("prototypes.new.boilers.small.entity")
		require("prototypes.new.boilers.small.item")
		require("prototypes.new.boilers.small.recipe")
		require("prototypes.new.boilers.small.tech")]]
		require("prototypes.new.boilers.normal.entity")
		require("prototypes.new.boilers.normal.item")
		require("prototypes.new.boilers.normal.recipe")
		require("prototypes.new.boilers.normal.tech")
--[[		require("prototypes.new.boilers.large.entity")
		require("prototypes.new.boilers.large.item")
		require("prototypes.new.boilers.large.recipe")
		require("prototypes.new.boilers.large.tech")]]
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
		if Small_Accumulators then
			require("prototypes.new.accumulators.small.entity")
			require("prototypes.new.accumulators.small.item")
			require("prototypes.new.accumulators.small.recipe")
		end
		if Normal_Accumulators then
			require("prototypes.new.accumulators.normal.entity")
			require("prototypes.new.accumulators.normal.item")
			require("prototypes.new.accumulators.normal.recipe")
		end
		if Large_Accumulators then
			require("prototypes.new.accumulators.large.entity")
			require("prototypes.new.accumulators.large.item")
			require("prototypes.new.accumulators.large.recipe")
		end
		
		if Small_Accumulators and not Normal_Accumulators and not Large_Accumulators then
			require("prototypes.new.accumulators.tech.small")
		elseif Normal_Accumulators and not Small_Accumulators and not Large_Accumulators then
			require("prototypes.new.accumulators.tech.normal")
		elseif Large_Accumulators and not Small_Accumulators and not Normal_Accumulators then
			require("prototypes.new.accumulators.tech.small")
		elseif Small_Accumulators and Normal_Accumulators and not Large_Accumulators then
			require("prototypes.new.accumulators.tech.small_and_normal")
		elseif Small_Accumulators and Large_Accumulators and not Normal_Accumulators then
			require("prototypes.new.accumulators.tech.small_and_large")
		elseif Normal_Accumulators and Large_Accumulators and not Small_Accumulators then
			require("prototypes.new.accumulators.tech.normal_and_large")
		elseif Small_Accumulators and Normal_Accumulators and Large_Accumulators then
			require("prototypes.new.accumulators.tech.small_normal_and_large")
		end
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
		if Small_SolarPanels then
			require("prototypes.new.solar-panels.small.entity")
			require("prototypes.new.solar-panels.small.item")
			require("prototypes.new.solar-panels.small.recipe")
		end
		if Normal_SolarPanels then
			require("prototypes.new.solar-panels.normal.entity")
			require("prototypes.new.solar-panels.normal.item")
			require("prototypes.new.solar-panels.normal.recipe")
		end
		if Large_SolarPanels then
			require("prototypes.new.solar-panels.large.entity")
			require("prototypes.new.solar-panels.large.item")
			require("prototypes.new.solar-panels.large.recipe")
		end
		
		if Small_SolarPanels and not Normal_SolarPanels and not Large_SolarPanels then
			require("prototypes.new.solar-panels.tech.small")
		elseif Normal_SolarPanels and not Small_SolarPanels and not Large_SolarPanels then
			require("prototypes.new.solar-panels.tech.normal")
		elseif Large_SolarPanels and not Small_SolarPanels and not Normal_SolarPanels then
			require("prototypes.new.solar-panels.tech.large")
		elseif Small_SolarPanels and Normal_SolarPanels and not Large_SolarPanels then
			require("prototypes.new.solar-panels.tech.small_and_normal")
		elseif Small_SolarPanels and Large_SolarPanels and not Normal_SolarPanels then
			require("prototypes.new.solar-panels.tech.small_and_large")
		elseif Normal_SolarPanels and Large_SolarPanels and not Small_SolarPanels then
			require("prototypes.new.solar-panels.tech.normal_and_large")
		elseif Small_SolarPanels and Normal_SolarPanels and Large_SolarPanels then
			require("prototypes.new.solar-panels.tech.small_normal_and_large")
		end
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
--[[		require("prototypes.new.steam-engines.small.entity")
		require("prototypes.new.steam-engines.small.item")
		require("prototypes.new.steam-engines.small.recipe")
		require("prototypes.new.steam-engines.small.tech")
		require("prototypes.new.steam-engines.normal.entity")
		require("prototypes.new.steam-engines.normal.item")
		require("prototypes.new.steam-engines.normal.recipe")
		require("prototypes.new.steam-engines.normal.tech")
		require("prototypes.new.steam-engines.large.entity")
		require("prototypes.new.steam-engines.large.item")
		require("prototypes.new.steam-engines.large.recipe")
		require("prototypes.new.steam-engines.large.tech")]]
	else
		require("prototypes.old.steam-engines-normal.entity")
		require("prototypes.old.steam-engines-normal.item")
		require("prototypes.old.steam-engines-normal.recipe")
		require("prototypes.old.steam-engines-normal.tech")
	end
end