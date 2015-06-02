data:extend(
{
  {
    type = "recipe",
    name = "roboport-1",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"lead-plate", 90},
      {"lead-gear-wheel", 45},
      {"processing-unit", 45}
    },
    result = "roboport-1",
  },
  {
    type = "recipe",
    name = "roboport-2",
    enabled = false,
    energy_required = 60,
    ingredients =
    {
      {"tungsten-plate", 180},
      {"tungsten-gear-wheel", 90},
      {"advanced-processing-unit", 45}
    },
    result = "roboport-2",
  },
  {
    type = "recipe",
    name = "robot-charger-1",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 10},
      {"copper-cable", 15},
	  {"electronic-circuit", 15},
      {"advanced-circuit", 15}
    },
    result = "robot-charger-1",
  },
  {
    type = "recipe",
    name = "robot-charger-2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"steel-plate", 20},
      {"copper-cable", 30},
	  {"electronic-circuit", 30},
      {"advanced-circuit", 30}
    },
    result = "robot-charger-2",
  },
}
)