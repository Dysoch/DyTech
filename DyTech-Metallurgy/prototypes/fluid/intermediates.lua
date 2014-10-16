data:extend(
{
  {
    type = "fluid",
    name = "liquid-air",
    default_temperature = 100,
    max_temperature = 100,
    heat_capacity = "0KJ",
	base_color = {r=0, g=0, b=0},
	flow_color = {r=0.5, g=1.0, b=1.0},
    icon = "__DyTech-Metallurgy__/graphics/fluid/liquid-air.png",
    order = "air",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "metallurgy-fluid-intermediate",
  },
  {
    type = "fluid",
    name = "sludge",
    default_temperature = 15,
    max_temperature = 15,
    heat_capacity = "0KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__DyTech-Metallurgy__/graphics/fluid/sludge.png",
    order = "sludge",
    pressure_to_speed_ratio = 0.1,
    flow_to_energy_ratio = 0.1475,
    subgroup = "metallurgy-fluid-intermediate",
  },
}
)