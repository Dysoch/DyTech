data:extend(
{ 
  {
    type = "recipe",
    name = "tank-dytech-1",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
	  {"track", 2},
	  {"hull-lower", 1},
	  {"hull-top", 1},
      {"laser-gun", 1},
      {"rocket-launcher", 1},
    },
    result = "tank-dytech-1"
  },
  {
    type = "recipe",
    name = "tank-dytech-2",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
	  {"track", 2},
	  {"hull-lower", 1},
	  {"hull-top", 1},
      {"processing-unit", 2},
      {"flame-thrower", 1},
      {"combat-shotgun", 1},
      {"laser-gun", 1},
      {"rocket-launcher", 1},
    },
    result = "tank-dytech-2"
  },
  {
    type = "recipe",
    name = "battery-tank",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"compressed-emerald", 1},
      {"battery", 1},
    },
    result = "battery-tank",
	result_count = 1
  },
}
)