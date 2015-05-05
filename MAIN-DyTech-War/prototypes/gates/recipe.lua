data:extend(
{
  {
    type = "recipe",
    name = "sand-wall-gate",
	enabled = true,
    energy_required = 2.5,
    ingredients =
    {
      {"sandwall", 1},
      {"electronic-circuit", 5},
	  {"copper-cable", 10},
    },
    result = "sand-wall-gate"
  },
  {
    type = "recipe",
    name = "tungsten-wall-gate",
	enabled = false,
    energy_required = 2.5,
    ingredients =
    {
      {"tungsten-wall", 1},
      {"tungsten-plate", 5},
      {"electronic-circuit", 15},
	  {"copper-cable", 25},
    },
    result = "tungsten-wall-gate"
  },
}
)