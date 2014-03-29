-- Alien tech
require("prototypes.alien-tech.alien-assembling-machine")
require("prototypes.alien-tech.artifact-collector")
require("prototypes.alien-tech.item-destroyer")
require("prototypes.alien-tech.spawn")
require("prototypes.alien-tech.prospecting-device")
require("prototypes.alien-tech.underground-mining-drill")
require("prototypes.alien-tech.item-group")
require("prototypes.alien-tech.drilling-tower")



-- Metal Processing
if data.raw.resource["lava-600"] then --Added When DyTech is found. DyTech is set to be loaded first! (done in info.json)
	require("prototypes.metal-processing.tech-dytech")
	require("prototypes.metal-processing.tin-recipes-dytech")
	require("prototypes.metal-processing.ores.tin-dytech")
else --Added when it cant find DyTech! Thus the recipes and items below havent been added yet!
	require("prototypes.metal-processing.blast-furnace")
	require("prototypes.metal-processing.forge")
	require("prototypes.metal-processing.tech")
	require("prototypes.metal-processing.tin-recipes")
	require("prototypes.metal-processing.ores.iron")
	require("prototypes.metal-processing.ores.copper")
	require("prototypes.metal-processing.ores.gold")
	require("prototypes.metal-processing.ores.silver")
	require("prototypes.metal-processing.ores.tin")
	require("prototypes.metal-processing.ores.zinc")
	require("prototypes.metal-processing.plates")
end
require("prototypes.metal-processing.aluminium-recipes")
require("prototypes.metal-processing.electrolycer")
require("prototypes.metal-processing.pressure-vessel")
require("prototypes.metal-processing.salt-extractor")
require("prototypes.metal-processing.foundry")
	-- Ores
	require("prototypes.metal-processing.ores.aluminium")
	require("prototypes.metal-processing.ores.titanium")
	
	--Alloys
	require("prototypes.metal-processing.alloys.bronze") --this needs to be checked out. name differs from mine, so a problem. might change all recipes in fmod to suit my recipe when dytech is installed
	require("prototypes.metal-processing.alloys.soldering-tin")
	           
-- Misc
require("prototypes.misc.flooring")
require("prototypes.misc.dynamite")
--require("prototypes.misc.missile")
require("prototypes.misc.turretcar")
require("prototypes.misc.remote-controlled-robot")
require("prototypes.misc.charger")
require("prototypes.misc.black-screen")

-- Nature
require("prototypes.nature.berries")
require("prototypes.nature.yellow-trees")
require("prototypes.nature.white-trees")
require("prototypes.nature.wood")

-- Particles
require("prototypes.particles.alien-artifact-pickup")

--Recipe Categories
require("prototypes.recipe-category.f-crafting-c")

-- Rocket
require("prototypes.rocket.rocket")
require("prototypes.rocket.rocket-stages")
require("prototypes.rocket.landing-platform")

-- Storage
require("prototypes.storage.salt-pile")
require("prototypes.storage.stone-pile")
require("prototypes.storage.scrap")
require("prototypes.storage.light-oil-barrels")

-- Mining Drill
require("prototypes.tools.mining-drill")
require("prototypes.tools.pda")
require("prototypes.tools.soldering-iron")

--wireless
require("prototypes.wireless.door")
require("prototypes.wireless.wireless-base")

--GUI
require("prototypes.GUI.chipset-background")
require("prototypes.GUI.missile-menu")
require("prototypes.GUI.planets")

--energy
--require("prototypes.energy.cooling-tower")
--require("prototypes.energy.reactor")
--require("prototypes.energy.geotermal")
--require("prototypes.energy.wind")
--require("prototypes.energy.tidal")

--Planets
require("prototypes.planets.market")
require("prototypes.planets.house")
require("prototypes.planets.category")
	--Red planets
	require("prototypes.planets.red-planets.red-sand")
	require("prototypes.planets.red-planets.doodads")
	require("prototypes.planets.red-planets.special-traded-entities")

local loot =
{
  item = "small-alien-artifact",
  probability = 1,
  count_min = 1,
  count_max = 1 
}

if data.raw.unit~=nil then
	if data.raw.unit["small-biter"].loot == nil then 
		data.raw.unit["small-biter"].loot = {}
	end
	table.insert(data.raw.unit["small-biter"].loot, loot)
end

loot.count_max=2
loot.count_min=2

if data.raw.unit~=nil then
	if data.raw.unit["medium-biter"].loot == nil then 
		data.raw.unit["medium-biter"].loot = {}
	end
	table.insert(data.raw.unit["medium-biter"].loot, loot)
end

loot.count_max=3
loot.count_min=3

if data.raw.unit~=nil then
	if data.raw.unit["big-biter"].loot == nil then 
		data.raw.unit["big-biter"].loot = {}
	end
	table.insert(data.raw.unit["big-biter"].loot, loot)
end

data:extend({
  {
    type = "recipe-category",
    name = "assembling"
  },
})

table.insert(data.raw["tile"]["water"].allowed_neighbors ,"sand")
table.insert(data.raw["tile"]["water"].allowed_neighbors ,"red-sand")
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories,"assembling")
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories,"assembling")
table.insert(data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories,"assembling")
table.insert(data.raw["technology"]["steel-processing"].effects,{type = "unlock-recipe",recipe = "soldering-iron"})
table.insert(data.raw["technology"]["steel-processing"].effects,{type = "unlock-recipe", recipe = "charge-soldering-iron"})
table.insert(data.raw["technology"]["rocketry"].effects,{type = "unlock-recipe", recipe = "rocket-1"})