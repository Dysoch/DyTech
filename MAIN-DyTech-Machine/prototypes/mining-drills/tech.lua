data:extend(
{
  {
    type = "technology",
    name = "miner-2",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk2"
      },
    },
    prerequisites = {"steel-processing", "oil-processing"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "m-2"
  },
  {
    type = "technology",
    name = "miner-3",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk3"
      },
    },
    prerequisites = {"miner-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "m-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-4",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk4"
      },
    },
    prerequisites = {"miner-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 45
    },
    order = "m-4",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-5",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk5"
      },
    },
    prerequisites = {"miner-4"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    order = "m-5",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-6",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk6"
      },
    },
    prerequisites = {"miner-5"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 150
    },
    order = "m-6",
	upgrade = true,
  },
}
)