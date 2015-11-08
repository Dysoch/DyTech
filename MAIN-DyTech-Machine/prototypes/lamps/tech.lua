data:extend(
{
  {
    type = "technology",
    name = "optics-1",
    icon = "__base__/graphics/technology/optics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "small-lamp-1"
      }
    },
    prerequisites = {"optics"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a",
	upgrade = true
  },
  {
    type = "technology",
    name = "optics-2",
    icon = "__base__/graphics/technology/optics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "small-lamp-2"
      }
    },
    prerequisites = {"optics-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-a",
	upgrade = true
  },
}
)