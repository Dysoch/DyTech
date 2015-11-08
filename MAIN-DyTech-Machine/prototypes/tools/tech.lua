--[[table.insert(data.raw["technology"]["zinc-processing"].effects,{type = "unlock-recipe",recipe = "zinc-axe"})
table.insert(data.raw["technology"]["tin-processing"].effects,{type = "unlock-recipe",recipe = "tin-axe"})
table.insert(data.raw["technology"]["silver-processing"].effects,{type = "unlock-recipe",recipe = "silver-axe"})
table.insert(data.raw["technology"]["lead-processing"].effects,{type = "unlock-recipe",recipe = "lead-axe"})
table.insert(data.raw["technology"]["tungsten-processing"].effects,{type = "unlock-recipe",recipe = "tungsten-axe"})
table.insert(data.raw["technology"]["cobalt-processing"].effects,{type = "unlock-recipe",recipe = "cobalt-axe"})
table.insert(data.raw["technology"]["ardite-processing"].effects,{type = "unlock-recipe",recipe = "ardite-axe"})]]

data:extend(
{
  {
    type = "technology",
    name = "extended-processing-1",
    icon = "__base__/graphics/technology/explosion.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "zinc-axe"
      },
      {
        type = "unlock-recipe",
        recipe = "tin-axe"
      },
    },
    prerequisites = {},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "process-1",
	upgrade = true,
  },
    {
    type = "technology",
    name = "extended-processing-2",
    icon = "__base__/graphics/technology/explosion.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "silver-axe"
      },
      {
        type = "unlock-recipe",
        recipe = "lead-axe"
      },
    },
    prerequisites = {},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "process-2",
	upgrade = true,
  },
    {
    type = "technology",
    name = "extended-processing-3",
    icon = "__base__/graphics/technology/explosion.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tungsten-axe"
      },
    },
    prerequisites = {},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1}
      },
      time = 30
    },
    order = "process-3",
	upgrade = true,
  },
    {
    type = "technology",
    name = "extended-processing-4",
    icon = "__base__/graphics/technology/explosion.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cobalt-axe"
      },
      {
        type = "unlock-recipe",
        recipe = "ardite-axe"
      },
    },
    prerequisites = {},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 2}
      },
      time = 30
    },
    order = "process-4",
	upgrade = true,
  },
})