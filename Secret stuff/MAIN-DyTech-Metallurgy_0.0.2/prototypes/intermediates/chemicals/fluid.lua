require "prototypes.functions"

function DyTech_Create_Chemicals(NAME)
  local result =
  {
    type = "fluid",
    name = "oxygen",
    default_temperature = 50,
    max_temperature = 50,
    heat_capacity = "0KJ",
    base_color = {r=185, g=188, b=192},
    flow_color = {r=185, g=188, b=192},
	icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/oxygen.png",
    order = "oxygen",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	max_to_push = 1.5,
	ratio_to_push = 3.15,
    subgroup = "dytech-metallurgy-fluids",
  }
  result.name = NAME
  result.order = NAME
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/"..NAME..".png"
  return result
end

for index,name in pairs(CHEMICALS) do
	if not data.raw.fluid[name] then
	  data:extend(
		{
		  DyTech_Create_Chemicals(name)
		})
	end
end