require "prototypes.metals.cleaning.cleaning"

function createcleanore(NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-metallurgy-ores-clean",
    order = "iron-pig",
    stack_size = 200
  }
  result.name = "clean-" .. NAME
  result.order = "clean-" .. NAME
  result.icon = data.raw.item[NAME].icon
  return result
end

for index,name in pairs(ORES) do
data:extend(
  {
	createcleanore(name)
  })
end

data.raw["item"]["copper-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/copper.png"
data.raw["item"]["iron-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/iron.png"
if data.raw.fluid["clean-water"] then
data.raw["item"]["tin-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/tin.png"
data.raw["item"]["zinc-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/zinc.png"
data.raw["item"]["lead-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/lead.png"
data.raw["item"]["silver-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/silver.png"
data.raw["item"]["gold-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/gold.png"
data.raw["item"]["tungsten-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/tungsten.png"
data.raw["item"]["cobalt-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/cobalt.png"
data.raw["item"]["ardite-ore"].icon = "__MAIN-DyTech-Metallurgy__/graphics/dirty-ores/ardite.png"
end