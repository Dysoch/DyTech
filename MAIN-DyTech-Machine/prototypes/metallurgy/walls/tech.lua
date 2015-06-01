data:extend(
{
  {
    type = "technology",
    name = "walls-1",
    icon = "__base__/graphics/technology/stone-walls.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "copper-wall"
      },
    },
    prerequisites = {"stone-walls"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 20
    },
    order = "a-k-a",
	upgrade = true
  },
  {
    type = "technology",
    name = "walls-2",
    icon = "__base__/graphics/technology/stone-walls.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-wall"
      },
    },
    prerequisites = {"walls-1", "steel-processing"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 20
    },
    order = "a-k-a",
	upgrade = true
  },
  {
    type = "technology",
    name = "walls-3",
    icon = "__base__/graphics/technology/stone-walls.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "obsidian-wall"
      },
    },
    prerequisites = {"walls-2"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 20
    },
    order = "a-k-a",
	upgrade = true
  },
}
)