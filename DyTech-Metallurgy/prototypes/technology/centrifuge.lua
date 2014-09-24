data:extend(
{
  {
    type = "technology",
    name = "metallurgy-01",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pipe-mainline"
      },
      {
        type = "unlock-recipe",
        recipe = "pump-to-mainline"
      },
      {
        type = "unlock-recipe",
        recipe = "pump-from-mainline"
      },
      {
        type = "unlock-recipe",
        recipe = "pump-inline-mainline"
      },
    },
    prerequisites = {"oil-processing", "lava-smelting-06"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "metallurgy-01",
  },
  {
    type = "technology",
    name = "metallurgy-02",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "empty-tungsten-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-01"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-02"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-03"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-04"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-05"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-06"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-07"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-08"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-09"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-10"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-11"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-12"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-empty-13"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-01"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-02"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-03"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-04"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-05"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-06"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-07"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-08"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-09"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-10"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-11"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-12"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-barrel-fill-13"
      },
    },
    prerequisites = {"oil-processing", "lava-smelting-05"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "metallurgy-02",
  },
}
)