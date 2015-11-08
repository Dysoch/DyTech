data:extend(
{ 
  {
    type = "recipe",
    name = "electric-furnace-mk2",
	enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"electric-furnace", 1},
      {"lead-plate", 10},
      {"item-exit", 1},
      {"advanced-circuit", 2},
    },
    result = "electric-furnace-mk2"
  },
  {
    type = "recipe",
    name = "electric-furnace-mk3",
	enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"electric-furnace-mk2", 1},
      {"lead-plate", 20},
      {"item-exit", 1},
      {"advanced-circuit", 5},
    },
    result = "electric-furnace-mk3"
  },
  {
    type = "recipe",
    name = "electric-furnace-mk4",
	enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"electric-furnace-mk3", 1},
      {"tungsten-plate", 40},
      {"item-exit", 1},
      {"processing-unit", 2},
    },
    result = "electric-furnace-mk4"
  },
  {
    type = "recipe",
    name = "electric-furnace-mk5",
	enabled = false,
    energy_required = 35,
    ingredients =
    {
      {"electric-furnace-mk4", 1},
      {"tungsten-plate", 80},
      {"item-exit", 1},
      {"processing-unit", 5},
    },
    result = "electric-furnace-mk5"
  },
}
)