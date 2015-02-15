data:extend(
{ 
  {
    type = "recipe",
    name = "tank-dytech-1",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
	  {"tank", 1},
      {"processing-unit", 2},
      {"laser-gun", 2},
      {"rocket-launcher", 1},
      {"tungsten-plate", 50},
    },
    result = "tank-dytech-1"
  },
  {
    type = "recipe",
    name = "battery-tank",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"emerald-5", 1},
      {"battery", 1},
    },
    result = "battery-tank",
	result_count = 1
  },
}
)