data:extend(
{ 
  {
    type = "recipe",
    name = "super-transport-belt",
    enabled = false,
	energy_required = 5,
    ingredients =
    {
	  {"steel-gear-wheel", 2},
      {"express-transport-belt", 1}
    },
    result = "super-transport-belt"
  },
  {
    type = "recipe",
    name = "extreme-transport-belt",
    enabled = false,
	energy_required = 6,
    ingredients =
    {
	  {"steel-gear-wheel", 5},
      {"super-transport-belt", 1}
    },
    result = "extreme-transport-belt"
  },
  {
    type = "recipe",
    name = "super-transport-belt-to-ground",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 20},
      {"super-transport-belt", 6}
    },
    result_count = 2,
    result = "super-transport-belt-to-ground"
  },
  {
    type = "recipe",
    name = "extreme-transport-belt-to-ground",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      {"extreme-transport-belt", 6},
      {"steel-plate", 40}
    },
    result_count = 2,
    result = "extreme-transport-belt-to-ground"
  },
  {
    type = "recipe",
    name = "super-splitter",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"advanced-processing-unit", 4},
      {"steel-gear-wheel", 10},
      {"super-transport-belt", 2}
    },
    result = "super-splitter"
  },
  {
    type = "recipe",
    name = "extreme-splitter",
    enabled = false,
    energy_required = 6,
    ingredients =
    {
      {"advanced-processing-unit", 10},
      {"steel-gear-wheel", 20},
      {"extreme-transport-belt", 2}
    },
    result = "extreme-splitter"
  },
}
)