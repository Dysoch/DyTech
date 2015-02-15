data:extend(
{
  {
    type = "recipe",
    name = "logistic-robot-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"processing-unit", 10},
	  {"logistic-robot", 1}
    },
    result = "logistic-robot-1"
  },
  {
    type = "recipe",
    name = "logistic-robot-2",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"advanced-processing-unit", 5},
	  {"logistic-robot-1", 1}
    },
    result = "logistic-robot-2"
  },
}
)