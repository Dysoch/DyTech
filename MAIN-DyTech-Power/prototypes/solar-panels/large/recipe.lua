data:extend(
{
  {
    type = "recipe",
    name = "large-solar-panel-primary",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
	  {"solar-panel", 3},
      {"frame-1", 1},
      {"electronic-circuit", 15},
      {"copper-cable", 10},
      {"flux-capacitor-1", 1}
    },
    result = "large-solar-panel-primary"
  },
  {
    type = "recipe",
    name = "large-solar-panel-secondary",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
	  {"solar-panel-secondary", 3},
      {"frame-1", 1},
      {"electronic-circuit", 15},
      {"copper-cable", 10},
      {"flux-capacitor-1", 1}
    },
    result = "large-solar-panel-secondary"
  },
  {
    type = "recipe",
    name = "large-solar-panel-primary-mk2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"large-solar-panel-primary", 5},
      {"advanced-circuit", 15},
      {"flux-capacitor-2", 5},
    },
    result = "large-solar-panel-primary-mk2"
  },
  {
    type = "recipe",
    name = "large-solar-panel-secondary-mk2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"large-solar-panel-secondary", 5},
      {"advanced-circuit", 15},
      {"flux-capacitor-2", 5},
    },
    result = "large-solar-panel-secondary-mk2"
  },
  {
    type = "recipe",
    name = "large-solar-panel-primary-mk3",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"large-solar-panel-primary-mk2", 5},
      {"processing-unit", 15},
      {"tin-plate", 20},
      {"flux-capacitor-2", 2},
	  {"frame-2", 1},
    },
    result = "large-solar-panel-primary-mk3"
  },
  {
    type = "recipe",
    name = "large-solar-panel-secondary-mk3",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"large-solar-panel-secondary-mk2", 5},
      {"processing-unit", 15},
      {"tin-plate", 20},
      {"flux-capacitor-2", 2},
	  {"frame-2", 1},
    },
    result = "large-solar-panel-secondary-mk3"
  },
  {
    type = "recipe",
    name = "large-solar-panel-primary-mk4",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"large-solar-panel-primary-mk3", 5},
      {"advanced-processing-unit", 15},
      {"zinc-plate", 40},
      {"flux-capacitor-3", 5},
	  {"frame-3", 1},
    },
    result = "large-solar-panel-primary-mk4"
  },
  {
    type = "recipe",
    name = "large-solar-panel-secondary-mk4",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"large-solar-panel-secondary-mk3", 5},
      {"advanced-processing-unit", 15},
      {"zinc-plate", 40},
      {"flux-capacitor-3", 5},
	  {"frame-3", 1},
    },
    result = "large-solar-panel-secondary-mk4"
  },
  {
    type = "recipe",
    name = "large-solar-panel-primary-mk5",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"large-solar-panel-primary-mk4", 5},
      {"advanced-processing-unit", 45},
      {"gold-plate", 80},
      {"flux-capacitor-4", 10},
	  {"frame-3", 1},
    },
    result = "large-solar-panel-primary-mk5"
  },
  {
    type = "recipe",
    name = "large-solar-panel-secondary-mk5",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"large-solar-panel-secondary-mk4", 5},
      {"advanced-processing-unit", 45},
      {"gold-plate", 80},
      {"flux-capacitor-4", 10},
	  {"frame-3", 1},
    },
    result = "large-solar-panel-secondary-mk5"
  },
}
)