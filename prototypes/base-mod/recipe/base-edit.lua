  {
    type = "recipe",
    name = "speed-module",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 5},
	  {"copper-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 5,
    result = "speed-module"
  },
  {
    type = "recipe",
    name = "speed-module-2",
    enabled = false,
    ingredients =
    {
      {"speed-module", 1},
      {"iron-plate", 5},
	  {"steel-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 10,
    result = "speed-module-2"
  },
  {
    type = "recipe",
    name = "speed-module-3",
    enabled = false,
    ingredients =
    {
      {"speed-module-2", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 20,
    result = "speed-module-3"
  },
  {
    type = "recipe",
    name = "effectivity-module",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 5},
	  {"copper-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 5,
    result = "effectivity-module"
  },
  {
    type = "recipe",
    name = "effectivity-module-2",
    enabled = false,
    ingredients =
    {
      {"effectivity-module", 1},
      {"iron-plate", 5},
	  {"steel-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 10,
    result = "effectivity-module-2"
  },
  {
    type = "recipe",
    name = "effectivity-module-3",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-2", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 20,
    result = "effectivity-module-3"
  },
  {
    type = "recipe",
    name = "productivity-module",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 5},
	  {"copper-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 5,
    result = "productivity-module"
  },
  {
    type = "recipe",
    name = "productivity-module-2",
    enabled = false,
    ingredients =
    {
      {"productivity-module", 1},
      {"iron-plate", 5},
	  {"steel-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 10,
    result = "productivity-module-2"
  },
  {
    type = "recipe",
    name = "productivity-module-3",
    enabled = false,
    ingredients =
    {
      {"productivity-module-2", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 20,
    result = "productivity-module-3"
  },
  {
    type = "recipe",
    name = "iron-gear-wheel",
	enabled = false,
    ingredients = 
	{
	  {"iron-plate", 2}
	},
    result = "iron-gear-wheel"
  },
  {
    type = "recipe",
    name = "steam-engine",
    ingredients =
    {
      {"stone-gear-wheel", 5},
      {"pipe", 5},
      {"iron-plate", 5}
    },
    result = "steam-engine"
  },
  {
    type = "recipe",
    name = "basic-mining-drill",
    energy_required = 2,
    ingredients =
    {
      {"electronic-circuit", 3},
      {"stone-gear-wheel", 5},
      {"iron-plate", 10}
    },
    result = "basic-mining-drill"
  },
  {
    type = "recipe",
    name = "burner-mining-drill",
    energy_required = 2,
    ingredients =
    {
      {"stone-gear-wheel", 3},
      {"stone-furnace", 1},
      {"iron-plate", 3}
    },
    result = "burner-mining-drill"
  },
  {
    type = "recipe",
    name = "basic-inserter",
    ingredients =
    {
      {"electronic-circuit", 1},
      {"stone-gear-wheel", 1},
      {"iron-plate", 1}
    },
    result = "basic-inserter"
  },
  {
    type = "recipe",
    name = "offshore-pump",
    ingredients =
    {
      {"electronic-circuit", 2},
      {"pipe", 1},
      {"stone-gear-wheel", 1}
    },
    result = "offshore-pump"
  },
  {
    type = "recipe",
    name = "burner-inserter",
    ingredients =
    {
      {"iron-plate", 1},
      {"stone-gear-wheel", 1}
    },
    result = "burner-inserter"
  },
  {
    type = "recipe",
    name = "science-pack-1",
    energy_required = 5,
    ingredients =
    {
      {"copper-plate", 1},
      {"stone-gear-wheel", 1}
    },
    result = "science-pack-1"
  },
  {
    type = "recipe",
    name = "basic-transport-belt",
    ingredients =
    {
      {"iron-plate", 1},
      {"stone-gear-wheel", 1}
    },
    result = "basic-transport-belt",
    result_count = 2
  },
  {
    type = "recipe",
    name = "iron-axe",
	enabled = false,
    ingredients = 
	{
	  {"iron-stick", 2}, 
	  {"iron-plate", 3}
	},
    result = "iron-axe"
  },
  {
    type = "recipe",
    name = "repair-pack",
	enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
      {"iron-gear-wheel", 1}
    },
    result = "repair-pack"
  },
}
)