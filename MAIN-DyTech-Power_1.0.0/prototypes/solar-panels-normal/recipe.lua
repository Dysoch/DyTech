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
      {"copper-plate", 5},
      {"flux-capacitor-1", 1}
    },
    result = "solar-panel-secondary"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk2",
    enabled = false,
    ingredients =
    {
      {"solar-panel", 1},
      {"advanced-circuit", 15},
      {"flux-capacitor-1", 1},
    },
    result = "solar-panel-primary-mk2"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk2",
    enabled = false,
    ingredients =
    {
      {"solar-panel-secondary", 1},
      {"advanced-circuit", 15},
      {"flux-capacitor-1", 1},
    },
    result = "solar-panel-secondary-mk2"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk3",
    enabled = false,
    ingredients =
    {
      {"solar-panel-primary-mk2", 1},
      {"processing-unit", 15},
      {"tin-plate", 20},
      {"flux-capacitor-2", 2},
    },
    result = "solar-panel-primary-mk3"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk3",
    enabled = false,
    ingredients =
    {
      {"solar-panel-secondary-mk2", 1},
      {"processing-unit", 15},
      {"tin-plate", 20},
      {"flux-capacitor-2", 2},
    },
    result = "solar-panel-secondary-mk3"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk4",
    enabled = false,
    ingredients =
    {
      {"solar-panel-primary-mk3", 1},
      {"advanced-processing-unit", 15},
      {"zinc-plate", 40},
      {"flux-capacitor-3", 5},
    },
    result = "solar-panel-primary-mk4"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk4",
    enabled = false,
    ingredients =
    {
      {"solar-panel-secondary-mk3", 1},
      {"advanced-processing-unit", 15},
      {"zinc-plate", 40},
      {"flux-capacitor-3", 5},
    },
    result = "solar-panel-secondary-mk4"
  },
  {
    type = "recipe",
    name = "solar-panel-primary-mk5",
    enabled = false,
    ingredients =
    {
      {"solar-panel-primary-mk4", 1},
      {"advanced-processing-unit", 45},
      {"gold-plate", 80},
      {"flux-capacitor-4", 10},
    },
    result = "solar-panel-primary-mk5"
  },
  {
    type = "recipe",
    name = "solar-panel-secondary-mk5",
    enabled = false,
    ingredients =
    {
      {"solar-panel-secondary-mk4", 1},
      {"advanced-processing-unit", 45},
      {"gold-plate", 80},
      {"flux-capacitor-4", 10},
    },
    result = "solar-panel-secondary-mk5"
  },
}
)