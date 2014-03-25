data:extend(
{
  {
    type = "technology",
    name = "miner-2",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk2"
      },
    },
    prerequisites = {"frame-1", "rotor-1", "engine-1", "item-exit-1"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"sandbag", 2},
      },
      time = 15
    },
    order = "m-2"
  },
  {
    type = "technology",
    name = "miner-3",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk3"
      },
    },
    prerequisites = {"miner-2", "rotor-2", "engine-2", "item-exit-2", "frame-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"sandbag", 2},
      },
      time = 30
    },
    order = "m-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-4",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk4"
      },
    },
    prerequisites = {"miner-3", "rotor-3", "item-exit-3", "frame-3"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"sandbag", 2},
      },
      time = 45
    },
    order = "m-4",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-5",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk5"
      },
    },
    prerequisites = {"miner-4", "rotor-4", "engine-3", "item-exit-4", "frame-4"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"sandbag", 2},
      },
      time = 60
    },
    order = "m-5",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-6",
    icon = "__DyTech-Graphics__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk6"
      },
    },
    prerequisites = {"miner-5", "dytech-4"},
    unit =
    {
      count = 2500,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 10},
      },
      time = 150
    },
    order = "m-6",
	upgrade = true,
  },
}
)