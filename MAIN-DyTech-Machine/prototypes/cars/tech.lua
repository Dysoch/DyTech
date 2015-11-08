data:extend(
{
  {
    type = "technology",
    name = "automobilism2",
    icon = "__MAIN-DyTech-Machine__/graphics/cars/car2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "car2"
      },
    },
    prerequisites = {"automobilism"},
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
}
)