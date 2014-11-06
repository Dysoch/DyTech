data:extend(
{
  {
    type = "recipe",
    name = "science-pack-nature",
    enabled = true,
    energy_required = 1.16,
    ingredients =
    {
      {"wood", 1},
      {"stone", 1},
    },
    result = "science-pack-nature"
  },
  {
    type = "recipe",
    name = "science-pack-resource",
    enabled = true,
    energy_required = 2.32,
    ingredients =
    {
      {"iron-ore", 1},
      {"copper-ore", 1},
    },
    result = "science-pack-resource"
  },
  {
    type = "recipe",
    name = "science-pack-industrial",
    enabled = false,
    energy_required = 4.65,
    ingredients =
    {
      {"electronic-circuit", 1},
      {"transport-belt", 1},
      {"pipe", 1},
    },
    result = "science-pack-industrial"
  },
  {
    type = "recipe",
    name = "science-pack-fluid",
    enabled = false,
    energy_required = 9.3,
    category = "crafting-with-fluid",
    ingredients =
    {
      {type="fluid", name="water", amount=15},
      {type="fluid", name="heavy-oil", amount=5},
      {type="fluid", name="sulfuric-acid", amount=2},
    },
    results = 
	{
	  {type="item", name="science-pack-fluid", amount=1}
	},
  },
  {
    type = "recipe",
    name = "science-pack-tech",
    enabled = false,
    energy_required = 18.75,
    ingredients =
    {
      {"advanced-circuit", 1},
      {"smart-inserter", 1},
      {"plastic-bar", 2},
      {"rubber", 2},
    },
    result = "science-pack-tech"
  },
  {
    type = "recipe",
    name = "science-pack-war",
    enabled = false,
    energy_required = 37.5,
    ingredients =
    {
      {"shotgun-shell", 4},
      {"rocket", 1},
      {"piercing-bullet-magazine", 4},
      {"flame-thrower-ammo", 4},
    },
    result = "science-pack-war"
  },
  {
    type = "recipe",
    name = "science-pack-biter",
    enabled = false,
    energy_required = 75,
    ingredients =
    {
      {"alien-artifact", 1},
    },
    result = "science-pack-biter"
  },
  {
    type = "recipe",
    name = "science-pack-advanced",
    enabled = false,
    energy_required = 150,
    ingredients =
    {
      {"processing-unit", 2},
    },
    result = "science-pack-advanced"
  },
  {
    type = "recipe",
    name = "science-pack-nuclear",
    enabled = false,
    energy_required = 300,
    ingredients =
    {
      {"solid-fuel", 5},
    },
    result = "science-pack-nuclear"
  },
  {
    type = "recipe",
    name = "science-pack-highly-advanced",
    enabled = false,
    energy_required = 600,
    ingredients =
    {
      {"advanced-processing-unit", 3},
    },
    result = "science-pack-highly-advanced"
  },
}
)