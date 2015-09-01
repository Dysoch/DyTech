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