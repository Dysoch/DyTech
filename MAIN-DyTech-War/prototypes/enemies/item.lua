local loot1 =
{
  item = "small-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

local loot2 =
{
  item = "medium-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

local loot3 =
{
  item = "big-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["small-biter"].loot == nil then 
		data.raw.unit["small-biter"].loot = {}
	end
	table.insert(data.raw.unit["small-biter"].loot, loot1)
	if data.raw.unit["small-spitter"].loot == nil then 
		data.raw.unit["small-spitter"].loot = {}
	end
	table.insert(data.raw.unit["small-spitter"].loot, loot1)
	if data.raw.unit["medium-biter"].loot == nil then 
		data.raw.unit["medium-biter"].loot = {}
	end
	table.insert(data.raw.unit["medium-biter"].loot, loot2)
	if data.raw.unit["medium-spitter"].loot == nil then 
		data.raw.unit["medium-spitter"].loot = {}
	end
	table.insert(data.raw.unit["medium-spitter"].loot, loot2)
	if data.raw.unit["big-biter"].loot == nil then 
		data.raw.unit["big-biter"].loot = {}
	end
	table.insert(data.raw.unit["big-biter"].loot, loot3)
	if data.raw.unit["big-spitter"].loot == nil then 
		data.raw.unit["big-spitter"].loot = {}
	end
	table.insert(data.raw.unit["big-spitter"].loot, loot3)
end

data:extend(
{
  {
    type = "item",
    name = "small-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-small-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-corpses",
    order = "1-[small]",
    stack_size = 250
  },
  {
    type = "item",
    name = "medium-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-medium-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-corpses",
    order = "2-[medium]",
    stack_size = 250
  },
  {
    type = "item",
    name = "big-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-big-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-corpses",
    order = "3-[big]",
    stack_size = 250
  },
  {
    type = "item",
    name = "berserk-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-berserk-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-corpses",
    order = "4-[berserk]",
    stack_size = 250
  },
  {
    type = "item",
    name = "elder-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-elder-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-corpses",
    order = "5-[elder]",
    stack_size = 250
  },
  {
    type = "item",
    name = "king-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-king-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-corpses",
    order = "7-[king]",
    stack_size = 250
  },
  {
    type = "item",
    name = "queen-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-queen-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-corpses",
    order = "8-[queen]",
    stack_size = 250
  },
  {
    type = "item",
    name = "queen-egg",
    icon = "__MAIN-DyTech-War__/graphics/enemies/queen-egg.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-intermediates-enemies",
    order = "a[egg]",
    stack_size = 250
  },
}
)