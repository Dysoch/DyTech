require("prototypes.base-edit.entity")
require("prototypes.base-edit.equipment")
require("prototypes.base-edit.item")
require("prototypes.base-edit.recipe")
require("prototypes.base-edit.tech")
require("prototypes.entity.drill")
require("prototypes.entity.enemies")
require("prototypes.entity.gem-processing")
require("prototypes.entity.projectiles")
require("prototypes.entity.turret")
require("prototypes.equipment.equipment")
require("prototypes.item.ammo")
require("prototypes.item.armor")
require("prototypes.item.drill")
require("prototypes.item.enemies")
require("prototypes.item.equipment")
require("prototypes.item.gem-processing")
require("prototypes.item.gems")
require("prototypes.item.gun")
require("prototypes.item.turret")
require("prototypes.recipe.ammo")
require("prototypes.recipe.armor")
require("prototypes.recipe.drill")
require("prototypes.recipe.equipment")
require("prototypes.recipe.gem-processing")
require("prototypes.recipe.gun")
require("prototypes.recipe.intermediate")
require("prototypes.recipe.turret")
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