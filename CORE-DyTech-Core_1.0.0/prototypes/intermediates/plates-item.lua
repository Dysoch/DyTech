data:extend(
{
  {
    type = "item",
    name = "zinc-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/zinc/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "zinc",
    stack_size = 200,
    --[[modularInfo = 
	{
      handle = true,
      rod = false,
      head = true, 
      durability = 4000,
      mininglevel = 2,
      miningspeed = 4,
      strength = 1.2,
      hold = 0.8,
      flexibility = 0.4
    }]]--
  },
  {
    type = "item",
    name = "tin-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tin/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "tin",
    stack_size = 200,
    --[[modularInfo = 
	{
      handle = true,
      rod = false,
      head = true, 
      durability = 5000,
      mininglevel = 2,
      miningspeed = 3,
      strength = 0.7,
      hold = 1.7,
      flexibility = 1.4
    }]]--
  },
  {
    type = "item",
    name = "silver-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/silver/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "silver",
    stack_size = 200,
    --[[modularInfo = 
	{
      handle = true,
      rod = true,
      head = false, 
      durability = 10000,
      mininglevel = 1,
      miningspeed = 3,
      strength = 0.8,
      hold = 1,
      flexibility = 1
    }]]--
  },
  {
    type = "item",
    name = "lead-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/lead/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "lead",
    stack_size = 200,
    --[[modularInfo = 
	{
      handle = false,
      rod = true,
      head = true, 
      durability = 7500,
      mininglevel = 2,
      miningspeed = 4,
      strength = 1.3,
      hold = 0.6,
      flexibility = 0.4
    }]]--
  },
  {
    type = "item",
    name = "tungsten-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tungsten/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "tungsten",
    stack_size = 200,
    --[[modularInfo = 
	{
      handle = false,
      rod = true,
      head = true, 
      durability = 10000,
      mininglevel = 4,
      miningspeed = 4,
      strength = 1.9,
      hold = 0.2,
      flexibility = 0.2
    }]]--
  },
  {
    type = "item",
    name = "gold-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/gold/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "gold",
    stack_size = 200,
    --[[modularInfo = 
	{
      handle = true,
      rod = false,
      head = false, 
      durability = 1500,
      mininglevel = 1,
      miningspeed = 1,
      strength = 0.2,
      hold = 1.4,
      flexibility = 1.4
    }]]--
  },
  {
    type = "item",
    name = "cobalt-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/cobalt/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "cobalt",
    stack_size = 200,
  },
  {
    type = "item",
    name = "ardite-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/ardite/plate-icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "metallurgy-plates",
    order = "ardite",
    stack_size = 200,
  },
}
)

--[[if data.raw["recipe"]["wood-ModularToolPart[1-1-1]"] then
  require("scripts/tools-database")
  ToolsDatabase.makeModularPart(data.raw["item"]["zinc-plate"])
  ToolsDatabase.makeModularPart(data.raw["item"]["tin-plate"])
  ToolsDatabase.makeModularPart(data.raw["item"]["silver-plate"])
  ToolsDatabase.makeModularPart(data.raw["item"]["lead-plate"])
  ToolsDatabase.makeModularPart(data.raw["item"]["tungsten-plate"])
  ToolsDatabase.makeModularPart(data.raw["item"]["gold-plate"])
end]]--
