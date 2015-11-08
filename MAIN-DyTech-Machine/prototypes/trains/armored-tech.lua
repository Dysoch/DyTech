data:extend(
{
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
	upgrade = true,
    order = "rw-2",
  },
}
)