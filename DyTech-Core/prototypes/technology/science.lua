data:extend(
{
  {
    type = "technology",
    name = "science-packs-1",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {""},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-industrial"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 1},
        {"science-pack-resource", 1},
      },
      time = 9
    },
    order = "s-p-1",
  },
  {
    type = "technology",
    name = "science-packs-2",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"science-packs-1"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-fluid"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 2},
        {"science-pack-resource", 1},
        {"science-pack-industrial", 1},
      },
      time = 18.5
    },
    order = "s-p-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "science-packs-3",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"science-packs-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-tech"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 4},
        {"science-pack-resource", 2},
        {"science-pack-industrial", 1},
        {"science-pack-fluid", 1},
      },
      time = 37.5
    },
    order = "s-p-3",
	upgrade = true
  },
  {
    type = "technology",
    name = "science-packs-4",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"science-packs-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-war"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 8},
        {"science-pack-resource", 4},
        {"science-pack-industrial", 2},
        {"science-pack-fluid", 1},
        {"science-pack-tech", 1},
      },
      time = 75
    },
    order = "s-p-4",
	upgrade = true
  },
  {
    type = "technology",
    name = "science-packs-5",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"science-packs-4"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-biter"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 16},
        {"science-pack-resource", 8},
        {"science-pack-industrial", 4},
        {"science-pack-fluid", 2},
        {"science-pack-tech", 1},
        {"science-pack-war", 1},
      },
      time = 150
    },
    order = "s-p-5",
	upgrade = true
  },
  {
    type = "technology",
    name = "science-packs-6",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"science-packs-5"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-advanced"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 32},
        {"science-pack-resource", 16},
        {"science-pack-industrial", 8},
        {"science-pack-fluid", 4},
        {"science-pack-tech", 2},
        {"science-pack-war", 1},
        {"science-pack-biter", 1},
      },
      time = 300
    },
    order = "s-p-6",
	upgrade = true
  },
  {
    type = "technology",
    name = "science-packs-7",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"science-packs-6"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-nuclear"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 64},
        {"science-pack-resource", 32},
        {"science-pack-industrial", 16},
        {"science-pack-fluid", 8},
        {"science-pack-tech", 4},
        {"science-pack-war", 2},
        {"science-pack-biter", 1},
        {"science-pack-advanced", 1},
      },
      time = 600
    },
    order = "s-p-7",
	upgrade = true
  },
  {
    type = "technology",
    name = "science-packs-8",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"science-packs-7"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-highly-advanced"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-nature", 128},
        {"science-pack-resource", 64},
        {"science-pack-industrial", 32},
        {"science-pack-fluid", 16},
        {"science-pack-tech", 8},
        {"science-pack-war", 4},
        {"science-pack-biter", 2},
        {"science-pack-advanced", 1},
        {"science-pack-nuclear", 1},
      },
      time = 1200
    },
    order = "s-p-8",
	upgrade = true
  },
}
)