require "prototypes.functions"

function DyTech_Create_Alloy_Plates(NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-metallurgy-alloys",
    order = "iron-pig",
    stack_size = 200
  }
  result.name = NAME .. "-alloy"
  result.order = NAME
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/alloys/"..NAME..".png"
  return result
end

for index,name in pairs(ALLOYS) do
	  data:extend(
		{
		  DyTech_Create_Alloy_Plates(name.Name)
		})
end