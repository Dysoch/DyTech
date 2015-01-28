data.raw["fluid"]["water"].pressure_to_speed_ratio = 0.6
data.raw["fluid"]["water"].flow_to_energy_ratio = 0.885
data.raw["offshore-pump"]["offshore-pump"].fluid = "dirty-water"
data.raw["fluid"]["water"].heat_capacity = "1500J"

data:extend(
{
  {
    type = "fluid",
    name = "dirty-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1000J",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=0.7, b=0.7},
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
    order = "dirty-water",
    pressure_to_speed_ratio = 0.6,
    flow_to_energy_ratio = 0.885,
    subgroup = "metallurgy-fluid-intermediate",
  },
}
)