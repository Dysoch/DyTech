data:extend(
{
  {
    type = "technology",
    name = "automobilism2",
    icon = "__DyTech-Transportation__/graphics/technology/automobilism2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "car2"
      },
    },
    prerequisites = {"automobilism", "advanced-electronics-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 4},
        {"science-pack-2", 2},
		{"science-pack-3", 1},
      },
      time = 50
    },
    order = "a-m-2"
  },
  {
    type = "technology",
    name = "railway-1",
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-armor"
      },
      {
        type = "unlock-recipe",
        recipe = "diesel-locomotive-armor"
      },
    },
    prerequisites = {"railway"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 20
    },
		upgrade = "true",
    order = "rw-2",
  },
  {
    type = "technology",
    name = "railway-2",
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon-fast"
      },
      {
        type = "unlock-recipe",
        recipe = "diesel-locomotive-fast"
      }
    },
    prerequisites = {"railway-1"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 20
    },
		upgrade = "true",
    order = "rw-3",
  },
}
)