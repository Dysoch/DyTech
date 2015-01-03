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
      {"steel-plate", 20},
      {"advanced-circuit", 4},
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
      {"steel-plate", 40},
      {"processing-unit", 4},
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
      {"steel-plate", 80},
      {"advanced-processing-unit", 4},
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
      {"steel-plate", 160},
      {"advanced-processing-unit", 10},
    },
    result = "radar-mk5"
  },
}
)