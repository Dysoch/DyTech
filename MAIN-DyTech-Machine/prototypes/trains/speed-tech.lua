data:extend(
{
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
    prerequisites = {"railway"},
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
	upgrade = true,
    order = "rw-3",
  },
}
)