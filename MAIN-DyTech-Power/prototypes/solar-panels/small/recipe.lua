data:extend(
{
  {
	type = "recipe",
	name = "small-solar-panel-primary",
	enabled = false,
	energy_required = 10,
	ingredients =
	{
	  {"steel-plate", 5},
      {"electronic-circuit", 10},
      {"copper-cable", 5},
      {"flux-capacitor-1", 1},
	  {"frame-1", 1},
    },
    result = "small-solar-panel-primary"
  },
  {
    type = "recipe",
    name = "small-solar-panel-secondary",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 10},
      {"copper-cable", 5},
      {"flux-capacitor-1", 1},
	  {"frame-1", 1},
    },
    result = "small-solar-panel-secondary"
  },
  {
    type = "recipe",
    name = "small-solar-panel-primary-mk2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"small-solar-panel-primary", 5},
      {"advanced-circuit", 5},
      {"flux-capacitor-1", 1},
	  {"frame-1", 2},
    },
    result = "small-solar-panel-primary-mk2"
  },
  {
    type = "recipe",
    name = "small-solar-panel-secondary-mk2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"small-solar-panel-secondary", 5},
      {"advanced-circuit", 5},
      {"flux-capacitor-1", 1},
	  {"frame-1", 2},
    },
    result = "small-solar-panel-secondary-mk2"
  },
  {
    type = "recipe",
    name = "small-solar-panel-primary-mk3",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"small-solar-panel-primary-mk2", 5},
      {"advanced-circuit", 5},
      {"tin-plate", 5},
      {"flux-capacitor-2", 2},
	  {"frame-1", 2},
    },
    result = "small-solar-panel-primary-mk3"
  },
  {
    type = "recipe",
    name = "small-solar-panel-secondary-mk3",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {"small-solar-panel-primary-mk2", 5},
      {"advanced-circuit", 5},
      {"tin-plate", 5},
      {"flux-capacitor-2", 2},
	  {"frame-1", 2},
    },
    result = "small-solar-panel-secondary-mk3"
  },
  {
    type = "recipe",
    name = "small-solar-panel-primary-mk4",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"small-solar-panel-primary-mk3", 5},
      {"processing-unit", 10},
      {"zinc-plate", 20},
      {"flux-capacitor-2", 5},
	  {"frame-3", 1},
    },
    result = "small-solar-panel-primary-mk4"
  },
  {
    type = "recipe",
    name = "small-solar-panel-secondary-mk4",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"small-solar-panel-secondary-mk3", 5},
      {"processing-unit", 15},
      {"zinc-plate", 20},
      {"flux-capacitor-2", 5},
	  {"frame-3", 1},
    },
    result = "small-solar-panel-secondary-mk4"
  },
  {
    type = "recipe",
    name = "small-solar-panel-primary-mk5",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"small-solar-panel-primary-mk4", 5},
      {"processing-unit", 25},
      {"gold-plate", 40},
      {"flux-capacitor-3", 10},
	  {"frame-3", 1},
    },
    result = "small-solar-panel-primary-mk5"
  },
  {
    type = "recipe",
    name = "small-solar-panel-secondary-mk5",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"small-solar-panel-secondary-mk4", 5},
      {"processing-unit", 25},
      {"gold-plate", 40},
      {"flux-capacitor-3", 10},
	  {"frame-3", 1},
    },
    result = "small-solar-panel-secondary-mk5"
  },
}
)