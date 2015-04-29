data:extend(
{
  {
    type = "item",
    name = "crystal",
    icon = "__CORE-DyTech-Core__/graphics/gems/crystal-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-crystal",
    order = "1",
    stack_size = 200
  },
  -- Raw Gems
  {
    type = "item",
    name = "raw-ruby",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-ruby.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-raw",
    order = "1",
    stack_size = 200
  },
  {
    type = "item",
    name = "raw-sapphire",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-sapphire.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-raw",
    order = "2",
    stack_size = 200
  },
  {
    type = "item",
    name = "raw-emerald",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-emerald.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-raw",
    order = "3",
    stack_size = 200
  },
  {
    type = "item",
    name = "raw-topaz",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-topaz.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-raw",
    order = "4",
    stack_size = 200
  },
  {
    type = "item",
    name = "raw-diamond",
    icon = "__CORE-DyTech-Core__/graphics/gems/raw-diamond.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-raw",
    order = "5",
    stack_size = 200
  },
  -- Cut Gems
  {
    type = "item",
    name = "cut-ruby",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-ruby.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-cut",
    order = "1",
    stack_size = 200
  },
  {
    type = "item",
    name = "cut-sapphire",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-sapphire.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-cut",
    order = "2",
    stack_size = 200
  },
  {
    type = "item",
    name = "cut-emerald",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-emerald.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-cut",
    order = "3",
    stack_size = 200
  },
  {
    type = "item",
    name = "cut-topaz",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-topaz.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-cut",
    order = "4",
    stack_size = 200
  },
  {
    type = "item",
    name = "cut-diamond",
    icon = "__CORE-DyTech-Core__/graphics/gems/cut-diamond.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-cut",
    order = "5",
    stack_size = 200
  },
  -- Compressed Gems
  {
    type = "item",
    name = "compressed-ruby",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-ruby.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-compressed",
    order = "1",
    stack_size = 200
  },
  {
    type = "item",
    name = "compressed-sapphire",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-sapphire.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-compressed",
    order = "2",
    stack_size = 200
  },
  {
    type = "item",
    name = "compressed-emerald",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-emerald.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-compressed",
    order = "3",
    stack_size = 200
  },
  {
    type = "item",
    name = "compressed-topaz",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-topaz.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-compressed",
    order = "4",
    stack_size = 200
  },
  {
    type = "item",
    name = "compressed-diamond",
    icon = "__CORE-DyTech-Core__/graphics/gems/compressed-diamond.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-gem-compressed",
    order = "5",
    stack_size = 200
  },
}
)

--[[if data.raw["recipe"]["wood-ModularToolPart[1-1-1]"] then
  require("scripts/tools-database")
  ToolsDatabase.makeModularPart(data.raw["item"]["ruby-4"])
  ToolsDatabase.makeModularPart(data.raw["item"]["ruby-5"])
  ToolsDatabase.makeModularPart(data.raw["item"]["emerald-4"])
  ToolsDatabase.makeModularPart(data.raw["item"]["emerald-5"])
  ToolsDatabase.makeModularPart(data.raw["item"]["sapphire-4"])
  ToolsDatabase.makeModularPart(data.raw["item"]["sapphire-5"])
  ToolsDatabase.makeModularPart(data.raw["item"]["diamond-4"])
  ToolsDatabase.makeModularPart(data.raw["item"]["diamond-5"])
  ToolsDatabase.makeModularPart(data.raw["item"]["topaz-4"])
  ToolsDatabase.makeModularPart(data.raw["item"]["topaz-5"])
end]]--
