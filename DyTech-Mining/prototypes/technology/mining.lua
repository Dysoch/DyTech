data:extend(
{
  {
    type = "technology",
    name = "miner-2",
    icon = "__DyTech-Mining__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "rotor1"
      },
      {
        type = "unlock-recipe",
        recipe = "blade1"
      },
      {
        type = "unlock-recipe",
        recipe = "frame1"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit1"
      },
    },
    prerequisites = {"steel-processing"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-2", 2},
      },
      time = 15
    },
    order = "m-2"
  },
  {
    type = "technology",
    name = "miner-3",
    icon = "__DyTech-Mining__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "rotor2"
      },
      {
        type = "unlock-recipe",
        recipe = "blade2"
      },
      {
        type = "unlock-recipe",
        recipe = "frame2"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit2"
      },
    },
    prerequisites = {"miner-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-2", 2},
        {"science-pack-3", 2},
      },
      time = 30
    },
    order = "m-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-4",
    icon = "__DyTech-Mining__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "rotor3"
      },
      {
        type = "unlock-recipe",
        recipe = "blade3"
      },
      {
        type = "unlock-recipe",
        recipe = "frame3"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit3"
      },
    },
    prerequisites = {"miner-3"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-2", 2},
        {"science-pack-2", 2},
        {"alien-science-pack", 2},
      },
      time = 45
    },
    order = "m-4",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-5",
    icon = "__DyTech-Mining__/graphics/technology/miner.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "rotor4"
      },
      {
        type = "unlock-recipe",
        recipe = "frame4"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit4"
      },
    },
    prerequisites = {"miner-4"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-2", 2},
        {"science-pack-2", 2},
        {"alien-science-pack", 2},
      },
      time = 60
    },
    order = "m-5",
	upgrade = true,
  },
  {
    type = "technology",
    name = "miner-6",
    icon = "__DyTech-Mining__/graphics/technology/miner.png",
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
        {"science-pack-2", 10},
        {"science-pack-2", 10},
        {"alien-science-pack", 10},
--        {"science-pack-4", 10}, to be added in a future version!
      },
      time = 150
    },
    order = "m-6",
	upgrade = true,
  },
}
)