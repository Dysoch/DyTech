data:extend(
{
  {
    type = "technology",
    name = "inserter-optimization",
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/technology/inserter_optimization.png",
    prerequisites = {"logistics"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "inserter-close"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-short"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-short-close"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-close"
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
    name = "inserter-optimization-adv", --fast + all smart versions of tier before
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/technology/inserter_optimization_adv.png",
    prerequisites = {"logistics-2", "electronics", "inserter-optimization"},
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "inserter-fast-close"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-fast"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-fast-short"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-fast-close"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-fast-close-short"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-close-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-short-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-close-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-short-close-smart"
      },
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
    name = "inserter-optimization-fast", -- very fast + all smart versions of tier before
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/technology/inserter_optimization_highly_adv.png",
    prerequisites = {"logistics-3", "inserter-optimization-adv"},
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-close"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast-short"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast-close"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast-close-short"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-fast-close-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-fast-smart"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-fast-smart-short"
      },
      {
        type = "unlock-recipe",
        recipe = "inserter-long-fast-smart-close"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-fast-smart-close-short"
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
    name = "inserter-optimization-smart", -- all smart versions of tier before
    icon = "__MAIN-DyTech-Machine__/graphics/inserters/technology/inserter_optimization_highly_adv2.png",
    prerequisites = {"inserter-optimization-fast"},
    effects = 
	{
	  {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-smart"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-veryfast-close-smart"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast-smart"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast-smart-short"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast-smart-close"
      },
	  {
        type = "unlock-recipe",
        recipe = "inserter-long-veryfast-smart-close-short"
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