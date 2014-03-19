data:extend(
{
  {
    type = "technology",
    name = "pollution-1",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-creator-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "pollution-uncreator-1"
      },
    },
    prerequisites = {"dytech-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 2},
      },
      time = 50
    },
    order = "p-1"
  },
  {
    type = "technology",
    name = "pollution-2",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-creator-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "pollution-uncreator-2"
      },
    },
    prerequisites = {"pollution-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 2},
      },
      time = 50
    },
    order = "p-2",
	upgrade=true
  },
  {
    type = "technology",
    name = "pollution-3",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-creator-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "pollution-uncreator-3"
      },
    },
    prerequisites = {"pollution-2"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 2},
      },
      time = 50
    },
    order = "p-3",
	upgrade=true
  },
  {
    type = "technology",
    name = "pollution-4",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-creator-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "pollution-uncreator-4"
      },
    },
    prerequisites = {"pollution-3"},
    unit =
    {
      count = 2000,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 2},
      },
      time = 50
    },
    order = "p-4",
	upgrade=true
  },
  {
    type = "technology",
    name = "pollution-5",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-creator-5"
      },
	  {
        type = "unlock-recipe",
        recipe = "pollution-uncreator-5"
      },
    },
    prerequisites = {"pollution-4"},
    unit =
    {
      count = 4000,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 2},
      },
      time = 50
    },
    order = "p-5",
	upgrade=true
  },
}
)