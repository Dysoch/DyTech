data:extend(
{ 
  {
    type = "recipe",
    name = "assembling-machine-4",
	enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"assembling-machine-3", 1},
      {"steel-plate", 10},
      {"processing-unit", 2},
      {"capacitor", 4},
    },
    result = "assembling-machine-4"
  },
  {
    type = "recipe",
    name = "assembling-machine-5",
	enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"assembling-machine-4", 1},
      {"steel-plate", 20},
      {"processing-unit", 4},
      {"capacitor", 4},
    },
    result = "assembling-machine-5"
  },
  {
    type = "recipe",
    name = "assembling-machine-6",
	enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"assembling-machine-5", 1},
      {"steel-plate", 40},
      {"processing-unit", 8},
      {"capacitor", 10},
      {"frame", 1},
    },
    result = "assembling-machine-6"
  },
  {
    type = "recipe",
    name = "assembling-machine-7",
	enabled = false,
    energy_required = 35,
    ingredients =
    {
      {"assembling-machine-6", 1},
      {"steel-plate", 80},
      {"processing-unit", 16},
      {"capacitor", 25},
      {"frame", 1},
    },
    result = "assembling-machine-7"
  },
}
)