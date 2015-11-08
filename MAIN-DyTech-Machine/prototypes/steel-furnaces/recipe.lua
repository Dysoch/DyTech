data:extend(
{ 
  {
    type = "recipe",
    name = "steel-furnace-mk2",
	enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"steel-furnace", 1},
      {"lead-plate", 10},
      {"item-exit", 1},
    },
    result = "steel-furnace-mk2"
  },
  {
    type = "recipe",
    name = "steel-furnace-mk3",
	enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"steel-furnace-mk2", 1},
      {"lead-plate", 20},
      {"item-exit", 1},
    },
    result = "steel-furnace-mk3"
  },
  {
    type = "recipe",
    name = "steel-furnace-mk4",
	enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"steel-furnace-mk3", 1},
      {"tungsten-plate", 40},
      {"item-exit", 1},
    },
    result = "steel-furnace-mk4"
  },
  {
    type = "recipe",
    name = "steel-furnace-mk5",
	enabled = false,
    energy_required = 35,
    ingredients =
    {
      {"steel-furnace-mk4", 1},
      {"tungsten-plate", 80},
      {"item-exit", 1},
    },
    result = "steel-furnace-mk5"
  },
}
)