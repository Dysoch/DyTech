data.raw["recipe"]["repair-pack"].enabled = false

data:extend(
{
  {
    type = "recipe",
    name = "construction-robot-1",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 10},
	  {"construction-robot", 1},
    },
    result = "construction-robot-1"
  },
  {
    type = "recipe",
    name = "construction-robot-2",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 15},
	  {"construction-robot-1", 1},
    },
    result = "construction-robot-2"
  },
  {
    type = "recipe",
    name = "repair-pack-0",
    ingredients =
    {
      {"copper-plate", 1},
      {"wood", 1}
    },
    result = "repair-pack-0"
  },
  {
    type = "recipe",
    name = "repair-pack-2",
	enabled = false,
    ingredients =
    {
      {"advanced-circuit", 1},
      {"iron-gear-wheel", 2}
    },
    result = "repair-pack-2"
  },
  {
    type = "recipe",
    name = "repair-pack-3",
	enabled = false,
    ingredients =
    {
      {"processing-unit", 1},
      {"iron-gear-wheel", 5}
    },
    result = "repair-pack-3"
  },
}
)