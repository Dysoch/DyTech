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
      {"lead-plate", 20},
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
      {"tungsten-plate", 40},
      {"advanced-processing-unit", 2},
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
      {"tungsten-plate", 80},
      {"advanced-processing-unit", 4},
      {"capacitor", 25},
      {"frame", 1},
      {"obsidian", 10},
    },
    result = "assembling-machine-7"
  },
}
)