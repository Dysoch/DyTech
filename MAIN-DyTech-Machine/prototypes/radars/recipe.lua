data:extend(
{ 
  {
    type = "recipe",
    name = "radar-mk2",
	enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"radar", 1},
      {"tin-plate", 20},
      {"silver-plate", 20},
      {"advanced-circuit", 4},
      {"frame", 1},
    },
    result = "radar-mk2"
  },
  {
    type = "recipe",
    name = "radar-mk3",
	enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"radar-mk2", 1},
      {"lead-plate", 40},
      {"silver-plate", 40},
      {"processing-unit", 4},
      {"frame", 1},
    },
    result = "radar-mk3"
  },
  {
    type = "recipe",
    name = "radar-mk4",
	enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"radar-mk3", 1},
      {"tungsten-plate", 80},
      {"ardite-plate", 80},
      {"advanced-processing-unit", 4},
      {"frame", 1},
    },
    result = "radar-mk4"
  },
  {
    type = "recipe",
    name = "radar-mk5",
	enabled = false,
    energy_required = 35,
    ingredients =
    {
      {"radar-mk4", 1},
      {"cobalt-plate", 160},
      {"ardite-plate", 160},
      {"advanced-processing-unit", 10},
      {"frame", 1},
    },
    result = "radar-mk5"
  },
}
)