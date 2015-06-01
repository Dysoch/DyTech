data:extend(
{ 
  {
    type = "recipe",
    name = "super-transport-belt",
    category = "crafting-with-fluid",
    enabled = false,
	energy_required = 5,
    ingredients =
    {
	  {"tungsten-gear-wheel", 2},
      {"express-transport-belt", 1},
      {type="fluid", name="lubricant", amount=5},
    },
    result = "super-transport-belt"
  },
  {
    type = "recipe",
    name = "extreme-transport-belt",
    category = "crafting-with-fluid",
    enabled = false,
	energy_required = 6,
    ingredients =
    {
	  {"cobalt-gear-wheel", 5},
      {"super-transport-belt", 1},
      {type="fluid", name="lubricant", amount=10},
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
      {"tungsten-plate", 20},
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
      {"cobalt-plate", 40}
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
      {"lead-gear-wheel", 3},
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
      {"tungsten-gear-wheel", 5},
      {"extreme-transport-belt", 2}
    },
    result = "extreme-splitter"
  },
}
)