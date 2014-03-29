data:extend(
{ 
  {
    type = "recipe",
    name = "super-transport-belt",
    enabled = false,
	energy_required = 5,
    ingredients =
    {
	  {"brass-gear-wheel", 2},
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
      {"circuit3", 1},
	  {"tungsten-gear-wheel", 5},
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
      {"brass-alloy", 20},
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
      {"tungsten-plate", 40}
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
      {"circuit3", 4},
      {"brass-gear-wheel", 10},
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
      {"circuit3", 10},
      {"tungsten-gear-wheel", 20},
      {"extreme-transport-belt", 2}
    },
    result = "extreme-splitter"
  },
}
)