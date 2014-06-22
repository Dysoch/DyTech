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
    name = "logistic-chest-passive-provider-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-passive-provider", 1},
      {"processing-unit", 5}
    },
    result = "logistic-chest-passive-provider-1"
  },
  {
    type = "recipe",
    name = "logistic-chest-active-provider-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-active-provider", 1},
      {"processing-unit", 5}
    },
    result = "logistic-chest-active-provider-1"
  },
  {
    type = "recipe",
    name = "logistic-chest-storage-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-storage", 1},
      {"processing-unit", 5}
    },
    result = "logistic-chest-storage-1"
  },
  {
    type = "recipe",
    name = "logistic-chest-requester-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-requester", 1},
      {"processing-unit", 5}
    },
    result = "logistic-chest-requester-1"
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
  {
    type = "recipe",
    name = "logistic-chest-passive-provider-2",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-passive-provider-1", 1},
      {"advanced-processing-unit", 5}
    },
    result = "logistic-chest-passive-provider-2"
  },
  {
    type = "recipe",
    name = "logistic-chest-active-provider-2",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-active-provider-1", 1},
      {"advanced-processing-unit", 5}
    },
    result = "logistic-chest-active-provider-2"
  },
  {
    type = "recipe",
    name = "logistic-chest-storage-2",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-storage-1", 1},
      {"advanced-processing-unit", 5}
    },
    result = "logistic-chest-storage-2"
  },
  {
    type = "recipe",
    name = "logistic-chest-requester-2",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-requester-1", 1},
      {"advanced-processing-unit", 5}
    },
    result = "logistic-chest-requester-2"
  },
  {
    type = "recipe",
    name = "roboport-1",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 90},
      {"steel-gear-wheel", 45},
      {"processing-unit", 45}
    },
    result = "roboport-1",
    energy_required = 30
  },
  {
    type = "recipe",
    name = "roboport-2",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 180},
      {"steel-gear-wheel", 90},
      {"advanced-processing-unit", 45}
    },
    result = "roboport-2",
    energy_required = 60
  },
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
      {"advanced-processing-unit", 5},
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
      {"processing-unit", 1},
      {"iron-gear-wheel", 1}
    },
    result = "repair-pack-2"
  },
}
)