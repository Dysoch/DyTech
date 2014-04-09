data:extend(
{
  {
    type = "recipe",
    name = "solar-panel-secondary",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 15},
      {"copper-plate", 5}
    },
    result = "solar-panel-secondary"
  },
  {
    type = "recipe",
    name = "solar-panel-terciary",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 15},
      {"copper-plate", 5}
    },
    result = "solar-panel-terciary"
  },
  {
    type = "recipe",
    name = "advanced-solar-panel-primary",
    enabled = true, --for testing purposes!
    ingredients =
    {
      {"solar-panel", 1},
      {"copper-tungsten-alloy", 5},
      {"circuit3", 15},
      {"silver-plate", 5}
    },
    result = "advanced-solar-panel-primary"
  },
}
)