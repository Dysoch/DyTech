require "prototypes.functions"

function DyTech_Create_Intermediates(NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-metallurgy-intermediates",
    order = "iron-pig",
    stack_size = 200
  }
  result.name = NAME
  result.order = NAME
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/intermediates/"..NAME..".png"
  return result
end

for index,name in pairs(INTERMEDIATES) do
data:extend(
  {
	DyTech_Create_Intermediates(name)
  })
end