data:extend(
{
  {
    type = "technology",
    name = "inserter-optimization",
    icon = "__DyTech-Inserters__/graphics/technology/inserter_optimization.png",
    prerequisites = {"logistics"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "inserter-half"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-half"
      }
    },
    unit = 
	{
      count = 30,
      ingredients = 
	  {
		{"science-pack-1", 1}
	  },
      time = 10
    }
  },
  {
    type = "technology",
    name = "inserter-optimization-adv",
    icon = "__DyTech-Inserters__/graphics/technology/inserter_optimization_adv.png",
    prerequisites = {"logistics-2", "inserter-optimization"},
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "inserter-fast-half"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-half"
      }
    },
    unit = 
	{
      count = 60,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "inserter-optimization-filter",
    icon = "__DyTech-Inserters__/graphics/technology/inserter_optimization_adv.png",
    prerequisites = {"inserter-optimization-adv"},
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "inserter-fast-half-filter"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-filter"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-half-filter"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-half-filter"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-filter"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-half-filter"
      },
	  {
        type = "unlock-recipe",
        recipe = "long-handed-inserter-filter"
      },
    },
    unit = 
	{
      count = 100,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  },
  {
    type = "technology",
    name = "inserter-optimization-smart",
    icon = "__DyTech-Inserters__/graphics/technology/inserter_optimization_adv.png",
    prerequisites = {"inserter-optimization-filter"},
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "inserter-fast-half-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-half-smart"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-half-smart"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-smart"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-half-smart"
      },
    },
    unit = 
	{
      count = 150,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  },
}
)