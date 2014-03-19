data:extend(
{
  {
    type = "recipe",
    name = "logistic-robot-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"steel-plate", 4},
      {"iron-gear-wheel", 5},
      {"advanced-circuit", 2},
	  {"logistic-robot", 1}
    },
    result = "logistic-robot-1"
  },
  {
    type = "recipe",
    name = "logistic-chest-provider-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-provider", 1},
      {"advanced-circuit", 5}
    },
    result = "logistic-chest-provider-1"
  },
  {
    type = "recipe",
    name = "logistic-chest-storage-1",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-storage", 1},
      {"advanced-circuit", 5}
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
      {"advanced-circuit", 5}
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
      {"steel-plate", 15},
      {"iron-gear-wheel", 15},
      {"circuit3", 2},
	  {"logistic-robot-1", 1}
    },
    result = "logistic-robot-2"
  },
  {
    type = "recipe",
    name = "logistic-chest-provider-2",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-provider-1", 1},
      {"circuit3", 5}
    },
    result = "logistic-chest-provider-2"
  },
  {
    type = "recipe",
    name = "logistic-chest-storage-2",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"logistic-chest-storage-1", 1},
      {"circuit3", 5}
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
      {"circuit3", 5}
    },
    result = "logistic-chest-requester-2"
  },
  {
    type = "recipe",
    name = "roboport-1",
    enabled = false,
    ingredients =
    {
      {"iron-plate-1", 45},
      {"steel-gear-wheel", 45},
      {"advanced-circuit", 45}
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
      {"steel-plate-1", 45},
      {"steel-gear-wheel", 45},
      {"circuit3", 45}
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
      {"steel-plate", 15},
      {"steel-gear-wheel", 5},
      {"advanced-circuit", 10},
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
      {"steel-plate-1", 4},
      {"steel-gear-wheel", 5},
      {"circuit3", 2},
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
      {"stone-gear-wheel", 1}
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
      {"steel-gear-wheel", 1}
    },
    result = "repair-pack-2"
  },
}
)