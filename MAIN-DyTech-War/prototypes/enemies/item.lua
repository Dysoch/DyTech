local loot1 =
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
	table.insert(data.raw.unit["small-biter"].loot, loot1)
end

local loot2 =
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
	table.insert(data.raw.unit["medium-biter"].loot, loot2)
end

local loot3 =
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
	table.insert(data.raw.unit["big-biter"].loot, loot3)
end

local loot4 =
{
  item = "spitter-small-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["small-spitter"].loot == nil then 
		data.raw.unit["small-spitter"].loot = {}
	end
	table.insert(data.raw.unit["small-spitter"].loot, loot4)
end

local loot5 =
{
  item = "spitter-medium-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["medium-spitter"].loot == nil then 
		data.raw.unit["medium-spitter"].loot = {}
	end
	table.insert(data.raw.unit["medium-spitter"].loot, loot5)
end

local loot6 =
{
  item = "spitter-big-corpse",
  probability = 1,
  count_min = 1,
  count_max = 1,
}

if data.raw.unit~=nil then
	if data.raw.unit["big-spitter"].loot == nil then 
		data.raw.unit["big-spitter"].loot = {}
	end
	table.insert(data.raw.unit["big-spitter"].loot, loot6)
end

data:extend(
{
  {
    type = "item",
    name = "biter-small-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-small-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "1-biter-small",
    stack_size = 50
  },
  {
    type = "item",
    name = "biter-medium-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-medium-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "2-biter-medium",
    stack_size = 50
  },
  {
    type = "item",
    name = "biter-big-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-big-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "3-biter-big",
    stack_size = 50
  },
  {
    type = "item",
    name = "biter-berserk-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-berserk-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "4-biter-berserk",
    stack_size = 50
  },
  {
    type = "item",
    name = "biter-elder-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-elder-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "5-biter-elder",
    stack_size = 50
  },
  {
    type = "item",
    name = "biter-king-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-king-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "7-biter-king",
    stack_size = 50
  },
  {
    type = "item",
    name = "biter-queen-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-queen-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "8-biter-queen",
    stack_size = 50
  },
  {
    type = "item",
    name = "spitter-small-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-small-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "1-spitter-small",
    stack_size = 50
  },
  {
    type = "item",
    name = "spitter-medium-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-medium-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "2-spitter-medium",
    stack_size = 50
  },
  {
    type = "item",
    name = "spitter-big-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-big-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "3-spitter-big",
    stack_size = 50
  },
  {
    type = "item",
    name = "spitter-berserk-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-berserk-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "4-spitter-berserk",
    stack_size = 50
  },
  {
    type = "item",
    name = "spitter-elder-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-elder-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "5-spitter-elder",
    stack_size = 50
  },
  {
    type = "item",
    name = "spitter-king-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-king-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "7-spitter-king",
    stack_size = 50
  },
  {
    type = "item",
    name = "spitter-queen-corpse",
    icon = "__MAIN-DyTech-War__/graphics/enemies/biter-queen-corpse.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytechloot",
    order = "8-spitter-queen",
    stack_size = 50
  },
  {
    type = "item",
    name = "biter-queen-egg",
    icon = "__MAIN-DyTech-War__/graphics/enemies/queen-egg.png",
    flags = {"goes-to-quickbar"},
    subgroup = "raw-material",
    order = "b-q-e",
    stack_size = 50
  },
}
)