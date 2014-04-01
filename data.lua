-- game mechanics
require("prototypes.autoplace-controls")
require("prototypes.tile.noise-layers")

-- categories --3
require("prototypes.categories.ammo-category")
require("prototypes.categories.recipe-category")
require("prototypes.categories.resource-category")

-- Item-group --6
require("prototypes.item-group.dytechbundles")
require("prototypes.item-group.dytechgem")
require("prototypes.item-group.dytechintermediates")
require("prototypes.item-group.dytechmachines")
require("prototypes.item-group.dytechmodules")
require("prototypes.item-group.metallurgy-1")
require("prototypes.item-group.metallurgy-2")
require("prototypes.item-group.metallurgy-3")
require("prototypes.item-group.recycler")

-- Base Mod!
-- Entity --22
require("prototypes.base-mod.entity.assembling")
require("prototypes.base-mod.entity.base-edit")
require("prototypes.base-mod.entity.boiler")
require("prototypes.base-mod.entity.chest")
require("prototypes.base-mod.entity.collector")
require("prototypes.base-mod.entity.drill")
require("prototypes.base-mod.entity.enemies")
require("prototypes.base-mod.entity.energy")
require("prototypes.base-mod.entity.foundation")
require("prototypes.base-mod.entity.gem-processing")
require("prototypes.base-mod.entity.inserter")
require("prototypes.base-mod.entity.lab")
require("prototypes.base-mod.entity.nature")
require("prototypes.base-mod.entity.pollution")
require("prototypes.base-mod.entity.projectiles")
require("prototypes.base-mod.entity.radar")
require("prototypes.base-mod.entity.robot")
require("prototypes.base-mod.entity.transport")
require("prototypes.base-mod.entity.transport-belt")
require("prototypes.base-mod.entity.turret")
require("prototypes.base-mod.entity.wall")

-- Equipment --2
require("prototypes.base-mod.equipment.base-edit")
require("prototypes.base-mod.equipment.equipment")

-- Fluid --0

-- Item --31x
require("prototypes.base-mod.item.ammo")
require("prototypes.base-mod.item.armor")
require("prototypes.base-mod.item.assembling")
require("prototypes.base-mod.item.base-edit")
require("prototypes.base-mod.item.boiler")
require("prototypes.base-mod.item.chest")
require("prototypes.base-mod.item.collector")
require("prototypes.base-mod.item.drill")
require("prototypes.base-mod.item.enemies")
require("prototypes.base-mod.item.energy")
require("prototypes.base-mod.item.equipment")
require("prototypes.base-mod.item.foundation")
require("prototypes.base-mod.item.gears")
require("prototypes.base-mod.item.gem-processing")
require("prototypes.base-mod.item.gems")
require("prototypes.base-mod.item.gun")
require("prototypes.base-mod.item.inserter")
require("prototypes.base-mod.item.intermediate")
require("prototypes.base-mod.item.lab")
require("prototypes.base-mod.item.module")
require("prototypes.base-mod.item.packing")
require("prototypes.base-mod.item.pollution")
require("prototypes.base-mod.item.radar")
require("prototypes.base-mod.item.recycler")
require("prototypes.base-mod.item.resource")
require("prototypes.base-mod.item.robot")
require("prototypes.base-mod.item.tool")
require("prototypes.base-mod.item.transport")
require("prototypes.base-mod.item.transport-belt")
require("prototypes.base-mod.item.turret")
require("prototypes.base-mod.item.wall")

-- Recipe --38
require("prototypes.base-mod.recipe.ammo")
require("prototypes.base-mod.recipe.armor")
require("prototypes.base-mod.recipe.assembling")
require("prototypes.base-mod.recipe.base-edit")
require("prototypes.base-mod.recipe.boiler")
require("prototypes.base-mod.recipe.chest")
require("prototypes.base-mod.recipe.collector")
require("prototypes.base-mod.recipe.compressing")
require("prototypes.base-mod.recipe.drill")
require("prototypes.base-mod.recipe.energy")
require("prototypes.base-mod.recipe.equipment")
require("prototypes.base-mod.recipe.foundation")
require("prototypes.base-mod.recipe.gears")
require("prototypes.base-mod.recipe.gem-processing")
require("prototypes.base-mod.recipe.gun")
require("prototypes.base-mod.recipe.inserter")
require("prototypes.base-mod.recipe.intermediate")
require("prototypes.base-mod.recipe.lab")
require("prototypes.base-mod.recipe.module")
require("prototypes.base-mod.recipe.packing")
require("prototypes.base-mod.recipe.pollution")
require("prototypes.base-mod.recipe.radar")
require("prototypes.base-mod.recipe.recycler")
require("prototypes.base-mod.recipe.recycling-base")
require("prototypes.base-mod.recipe.recycling-dytech")
require("prototypes.base-mod.recipe.robot")
require("prototypes.base-mod.recipe.smelting")
require("prototypes.base-mod.recipe.tool")
require("prototypes.base-mod.recipe.transport")
require("prototypes.base-mod.recipe.transport-belt")
require("prototypes.base-mod.recipe.turret")
require("prototypes.base-mod.recipe.unpacking")
require("prototypes.base-mod.recipe.wall")

-- Resource --2
require("prototypes.base-mod.resource.gems")
require("prototypes.base-mod.resource.normal-ores")
require("prototypes.base-mod.resource.sand")

-- Technology --18
require("prototypes.base-mod.technology.armor")
require("prototypes.base-mod.technology.base-edit")
require("prototypes.base-mod.technology.chest")
require("prototypes.base-mod.technology.energy")
require("prototypes.base-mod.technology.equipment")
require("prototypes.base-mod.technology.gem-processing")
require("prototypes.base-mod.technology.inserter")
require("prototypes.base-mod.technology.intermediate")
require("prototypes.base-mod.technology.laser-turret")
require("prototypes.base-mod.technology.laser-turret-upgrade")
require("prototypes.base-mod.technology.main-research")
require("prototypes.base-mod.technology.military")
require("prototypes.base-mod.technology.mining")
require("prototypes.base-mod.technology.module")
require("prototypes.base-mod.technology.pollution")
require("prototypes.base-mod.technology.robot")
require("prototypes.base-mod.technology.transport")
require("prototypes.base-mod.technology.transport-belt")

-- Metallurgy
-- entity 4x
require("prototypes.metallurgy.entity.assemblers-molds")
require("prototypes.metallurgy.entity.lava-machines")
require("prototypes.metallurgy.entity.molten-metal-machines")
require("prototypes.metallurgy.entity.pipes")

-- fluid 5x
require("prototypes.metallurgy.fluid.intermediates")
require("prototypes.metallurgy.fluid.lava")
require("prototypes.metallurgy.fluid.metals-molten-advanced")
require("prototypes.metallurgy.fluid.metals-molten-base")
require("prototypes.metallurgy.fluid.metals-molten-basic")

-- item 9x
require("prototypes.metallurgy.item.alloys")
require("prototypes.metallurgy.item.assemblers-molds")
require("prototypes.metallurgy.item.intermediates")
require("prototypes.metallurgy.item.lava-machines")
require("prototypes.metallurgy.item.molds")
require("prototypes.metallurgy.item.molten-metal-machines")
require("prototypes.metallurgy.item.ores")
require("prototypes.metallurgy.item.pipes")
require("prototypes.metallurgy.item.plates")

-- meteors 5x
require("prototypes.metallurgy.meteors.asteroids")
require("prototypes.metallurgy.meteors.comets")
--require("prototypes.metallurgy.meteors.explosions") --NEED TO TEST THIS, IF IT WORKS!
require("prototypes.metallurgy.meteors.meteors-large")
require("prototypes.metallurgy.meteors.meteors-medium")
require("prototypes.metallurgy.meteors.meteors-small")
--require("prototypes.metallurgy.meteors.projectiles") --UNSURE IF NEEDED!
--require("prototypes.metallurgy.meteors.warning-system")

-- recipe 20x
require("prototypes.metallurgy.recipe.assemblers-molds")
require("prototypes.metallurgy.recipe.intermediates")
require("prototypes.metallurgy.recipe.lava-heating")
require("prototypes.metallurgy.recipe.lava-machines")
require("prototypes.metallurgy.recipe.metal-mixing")
require("prototypes.metallurgy.recipe.metals-advanced")
require("prototypes.metallurgy.recipe.metals-base")
require("prototypes.metallurgy.recipe.metals-basic")
require("prototypes.metallurgy.recipe.mold-crafting-ammo-advanced")
require("prototypes.metallurgy.recipe.mold-crafting-ammo-basic")
require("prototypes.metallurgy.recipe.mold-crafting-circuit")
require("prototypes.metallurgy.recipe.mold-crafting-gears")
require("prototypes.metallurgy.recipe.mold-crafting-tools")
require("prototypes.metallurgy.recipe.mold-crafting-wires")
require("prototypes.metallurgy.recipe.molds")
require("prototypes.metallurgy.recipe.molten-metal-machines")
--require("prototypes.metallurgy.recipe.ore-smelting-advanced")
require("prototypes.metallurgy.recipe.ore-smelting-base")
require("prototypes.metallurgy.recipe.ore-smelting-basic")
require("prototypes.metallurgy.recipe.pipes")

-- resource 1x
require("prototypes.metallurgy.resource.lava")

-- technology




local loot1 =
{
  item = "ruby-3",
  probability = 1,
  count_min = 2,
  count_max = 4 
}

if data.raw.unit~=nil then
	if data.raw.unit["berserk-biter"].loot == nil then 
		data.raw.unit["berserk-biter"].loot = {}
	end
	table.insert(data.raw.unit["berserk-biter"].loot, loot1)
end

local loot2 =
{
  item = "sapphire-3",
  probability = 1,
  count_min = 1,
  count_max = 3 
}

if data.raw.unit~=nil then
	if data.raw.unit["elder-biter"].loot == nil then 
		data.raw.unit["elder-biter"].loot = {}
	end
	table.insert(data.raw.unit["elder-biter"].loot, loot2)
end

 local loot3 =
{
  item = "emerald-3",
  probability = 1,
  count_min = 0,
  count_max = 2,
}

if data.raw.unit~=nil then
	if data.raw.unit["king-biter"].loot == nil then 
		data.raw.unit["king-biter"].loot = {}
	end
	table.insert(data.raw.unit["king-biter"].loot, loot3)
end

local loot4 =
{
  item = "biter-queen-egg",
  probability = 1,
  count_min = 1,
  count_max = 2,
}

if data.raw.unit~=nil then
	if data.raw.unit["queen-biter"].loot == nil then 
		data.raw.unit["queen-biter"].loot = {}
	end
	table.insert(data.raw.unit["queen-biter"].loot, loot4)
end