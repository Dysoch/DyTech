data:extend(
{
  {
    type = "technology",
    name = "effect-transmission-1",
    icon = "__base__/graphics/technology/effect-transmission.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-beacon-1"
      }
    },
    prerequisites = {"effect-transmission"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "i-i",
	upgrade = true
  },
  {
    type = "technology",
    name = "effect-transmission-2",
    icon = "__base__/graphics/technology/effect-transmission.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-beacon-2"
      }
    },
    prerequisites = {"effect-transmission-1"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "i-i",
	upgrade = true
  },
  {
    type = "technology",
    name = "effect-transmission-3",
    icon = "__base__/graphics/technology/effect-transmission.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-beacon-3"
      }
    },
    prerequisites = {"effect-transmission-2"},
    unit =
    {
      count = 1750,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "i-i",
	upgrade = true
  },
}
)