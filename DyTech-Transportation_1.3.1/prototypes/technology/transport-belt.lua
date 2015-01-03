data:extend(
{
  {
    type = "technology",
    name = "logistics-4",
    icon = "__base__/graphics/technology/logistics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "super-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "super-transport-belt-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "super-splitter"
      },
    },
    prerequisites = {"logistics-3"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 25
    },
    order = "l-4",
  },
  {
    type = "technology",
    name = "logistics-5",
    icon = "__base__/graphics/technology/logistics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "extreme-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "extreme-transport-belt-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "extreme-splitter"
      },
    },
    prerequisites = {"logistics-4"},
    unit =
    {
      count = 1200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 75
    },
    order = "l-5",
  },
}
)