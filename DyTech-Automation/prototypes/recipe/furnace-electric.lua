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
      {"steel-plate", 10},
      {"item-exit1", 1},
      {"processing-unit", 2},
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
      {"steel-plate", 20},
      {"item-exit2", 1},
      {"processing-unit", 2},
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
      {"steel-plate", 40},
      {"item-exit3", 1},
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
      {"steel-plate", 80},
      {"item-exit4", 1},
      {"processing-unit", 2},
    },
    result = "electric-furnace-mk5"
  },
}
)