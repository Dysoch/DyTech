require("prototypes.base-edit.entity")
require("prototypes.base-edit.equipment")
require("prototypes.base-edit.item")
require("prototypes.base-edit.recipe")
require("prototypes.base-edit.tech")
require("prototypes.entity.drill")
require("prototypes.entity.enemies")
require("prototypes.entity.gem-processing")
require("prototypes.entity.projectiles")
require("prototypes.entity.robot")
require("prototypes.entity.tank")
require("prototypes.entity.turret")
require("prototypes.entity.wall")
require("prototypes.equipment.equipment")
require("prototypes.item.ammo")
require("prototypes.item.armor")
require("prototypes.item.capsule")
require("prototypes.item.corpses")
require("prototypes.item.drill")
require("prototypes.item.enemies")
require("prototypes.item.equipment")
require("prototypes.item.gem-processing")
require("prototypes.item.gems")
require("prototypes.item.gun")
require("prototypes.item.intermediate")
require("prototypes.item.robot")
require("prototypes.item.tank")
require("prototypes.item.turret")
require("prototypes.item.wall")
require("prototypes.recipe.ammo")
require("prototypes.recipe.armor")
require("prototypes.recipe.capsule")
require("prototypes.recipe.corpses")
require("prototypes.recipe.drill")
require("prototypes.recipe.equipment")
require("prototypes.recipe.gem-processing")
require("prototypes.recipe.gun")
require("prototypes.recipe.intermediate")
require("prototypes.recipe.robot")
require("prototypes.recipe.tank")
require("prototypes.recipe.turret")
require("prototypes.recipe.wall")
require("prototypes.resource.gems")
require("prototypes.technology.armor")
require("prototypes.technology.equipment")
require("prototypes.technology.gem-processing")
require("prototypes.technology.laser-turret")
require("prototypes.technology.laser-turret-upgrade")
require("prototypes.technology.military")
require("prototypes.autoplace-controls")

local loot1 =
{
  item = "biter-berserk-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1 
}

if data.raw.unit~=nil then
	if data.raw.unit["berserk-biter"].loot == nil then 
		data.raw.unit["berserk-biter"].loot = {}
	end
	table.insert(data.raw.unit["berserk-biter"].loot, loot1)
end

local loot2 =
{
  item = "biter-elder-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1 
}

if data.raw.unit~=nil then
	if data.raw.unit["elder-biter"].loot == nil then 
		data.raw.unit["elder-biter"].loot = {}
	end
	table.insert(data.raw.unit["elder-biter"].loot, loot2)
end

 local loot3 =
{
  item = "biter-king-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["king-biter"].loot == nil then 
		data.raw.unit["king-biter"].loot = {}
	end
	table.insert(data.raw.unit["king-biter"].loot, loot3)
end

local loot4 =
{
  item = "biter-queen-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["queen-biter"].loot == nil then 
		data.raw.unit["queen-biter"].loot = {}
	end
	table.insert(data.raw.unit["queen-biter"].loot, loot4)
end

local loot5 =
{
  item = "biter-small-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["small-biter"].loot == nil then 
		data.raw.unit["small-biter"].loot = {}
	end
	table.insert(data.raw.unit["small-biter"].loot, loot5)
end

local loot6 =
{
  item = "biter-medium-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["medium-biter"].loot == nil then 
		data.raw.unit["medium-biter"].loot = {}
	end
	table.insert(data.raw.unit["medium-biter"].loot, loot6)
end

local loot7 =
{
  item = "biter-big-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["big-biter"].loot == nil then 
		data.raw.unit["big-biter"].loot = {}
	end
	table.insert(data.raw.unit["big-biter"].loot, loot7)
end

if data.raw["recipe"]["wood-ModularToolPart[1-1-1]"] then
  require("prototypes.item.modularTools")
end
