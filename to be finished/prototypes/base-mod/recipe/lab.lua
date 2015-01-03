data:extend(
{
  {
    type = "recipe",
    name = "lab-1",
	enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"circuit3", 5},
      {"tungsten-gear-wheel", 5},
      {"bundledwire", 4},
	  {"lab", 2},
    },
    result = "lab-1"
  },
  { 
    type = "recipe",
    name = "dytech-lab",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"steel-plate-1", 5},
      {"copper-plate-1", 5},
      {"iron-plate-1", 5},
      {"lab", 2},
    },
    result = "dytech-lab"
  },
}
)