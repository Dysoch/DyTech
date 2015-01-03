data:extend(
{
  {
    type = "technology",
    name = "dymodule",
    icon = "__base__/graphics/technology/module.png",
    effects =
    {
	
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 10,
      ingredients = 
	  {
        {"science-pack-1", 5},
      },
      time = 30
    },
    order = "d-m"
  },
  --[[Pollution Cleaning Modules]]--
  {
    type = "technology",
    name = "pollution-clean-module-1",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-1"
      },
    },
    prerequisites = {"dymodule"},
    unit =
    {
      count = 50,
      ingredients = 
	  {
        {"science-pack-1", 2},
      },
      time = 30
    },
    order = "m-p-cl-1"
  },
  {
    type = "technology",
    name = "pollution-clean-module-2",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-2"
      }
    },
    prerequisites = {"pollution-clean-module-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 30
    },
	upgrade = true,
    order = "m-p-cl-2"
  },
  {
    type = "technology",
    name = "pollution-clean-module-3",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-3"
      }
    },
    prerequisites = {"pollution-clean-module-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cl-3"
  },
  {
    type = "technology",
    name = "pollution-clean-module-4",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-4"
      }
    },
    prerequisites = {"pollution-clean-module-3"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cl-4"
  },
  {
    type = "technology",
    name = "pollution-clean-module-5",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-5"
      }
    },
    prerequisites = {"pollution-clean-module-4"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 4},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cl-5"
  },
  {
    type = "technology",
    name = "pollution-clean-module-6",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-6"
      }
    },
    prerequisites = {"pollution-clean-module-5"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 5},
        {"science-pack-2", 4},
        {"science-pack-3", 3},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cl-6"
  },
  {
    type = "technology",
    name = "pollution-clean-module-7",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-7"
      }
    },
    prerequisites = {"pollution-clean-module-6"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 6},
        {"science-pack-2", 5},
        {"science-pack-3", 4},
        {"alien-science-pack", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cl-7"
  },
  {
    type = "technology",
    name = "pollution-clean-module-8",
    icon = "__DyTech-Modules__/graphics/technology/pollution-clean-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-8"
      }
    },
    prerequisites = {"pollution-clean-module-7"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 8},
        {"science-pack-2", 7},
        {"science-pack-3", 6},
        {"alien-science-pack", 5},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cl-8"
  },
  --[[Pollution Producing Modules]]--
  {
    type = "technology",
    name = "pollution-create-module-1",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-1"
      }
    },
    prerequisites = {"dymodule"},
    unit =
    {
      count = 50,
      ingredients = 
	  {
        {"science-pack-1", 2},
      },
      time = 30
    },
    order = "m-p-cr-1"
  },
  {
    type = "technology",
    name = "pollution-create-module-2",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-2"
      }
    },
    prerequisites = {"pollution-create-module-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 30
    },
	upgrade = true,
    order = "m-p-cr-2"
  },
  {
    type = "technology",
    name = "pollution-create-module-3",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-3"
      }
    },
    prerequisites = {"pollution-create-module-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cr-3"
  },
  {
    type = "technology",
    name = "pollution-create-module-4",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-4"
      }
    },
    prerequisites = {"pollution-create-module-3"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cr-4"
  },
  {
    type = "technology",
    name = "pollution-create-module-5",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-5"
      }
    },
    prerequisites = {"pollution-create-module-4"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 4},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cr-5"
  },
  {
    type = "technology",
    name = "pollution-create-module-6",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-6"
      }
    },
    prerequisites = {"pollution-create-module-5"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 5},
        {"science-pack-2", 4},
        {"science-pack-3", 3},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cr-6"
  },
  {
    type = "technology",
    name = "pollution-create-module-7",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-7"
      }
    },
    prerequisites = {"pollution-create-module-6"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 6},
        {"science-pack-2", 5},
        {"science-pack-3", 4},
        {"alien-science-pack", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cr-7"
  },
  {
    type = "technology",
    name = "pollution-create-module-8",
    icon = "__DyTech-Modules__/graphics/technology/pollution-create-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-8"
      }
    },
    prerequisites = {"pollution-create-module-7"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 8},
        {"science-pack-2", 7},
        {"science-pack-3", 6},
        {"alien-science-pack", 5},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-cr-8"
  },
  --[[Speed Modules]]--
  {
    type = "technology",
    name = "speed-module-4",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-4"
      }
    },
    prerequisites = {"speed-module-3", "dymodule"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 60
    },
	upgrade = true,
    order = "m-s-4"
  },
  {
    type = "technology",
    name = "speed-module-5",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-5"
      }
    },
    prerequisites = {"speed-module-4"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 4},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-s-5"
  },
  {
    type = "technology",
    name = "speed-module-6",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-6"
      }
    },
    prerequisites = {"speed-module-5"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 5},
        {"science-pack-2", 4},
        {"science-pack-3", 3},
      },
      time = 60
    },
	upgrade = true,
    order = "m-s-6"
  },
  {
    type = "technology",
    name = "speed-module-7",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-7"
      }
    },
    prerequisites = {"speed-module-6"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 6},
        {"science-pack-2", 5},
        {"science-pack-3", 4},
        {"alien-science-pack", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-s-7"
  },
  {
    type = "technology",
    name = "speed-module-8",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-8"
      }
    },
    prerequisites = {"speed-module-7"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 8},
        {"science-pack-2", 7},
        {"science-pack-3", 6},
        {"alien-science-pack", 5},
      },
      time = 60
    },
	upgrade = true,
    order = "m-s-8"
  },
  --[[Effectivity Modules]]--
  {
    type = "technology",
    name = "effectivity-module-4",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-4"
      }
    },
    prerequisites = {"effectivity-module-3", "dymodule"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 60
    },
	upgrade = true,
    order = "m-e-4"
  },
  {
    type = "technology",
    name = "effectivity-module-5",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-5"
      }
    },
    prerequisites = {"effectivity-module-4"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 4},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-e-5"
  },
  {
    type = "technology",
    name = "effectivity-module-6",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-6"
      }
    },
    prerequisites = {"effectivity-module-5"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 5},
        {"science-pack-2", 4},
        {"science-pack-3", 3},
      },
      time = 60
    },
	upgrade = true,
    order = "m-e-6"
  },
  {
    type = "technology",
    name = "effectivity-module-7",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-7"
      }
    },
    prerequisites = {"effectivity-module-6"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 6},
        {"science-pack-2", 5},
        {"science-pack-3", 4},
        {"alien-science-pack", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-e-7"
  },
  {
    type = "technology",
    name = "effectivity-module-8",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-8"
      }
    },
    prerequisites = {"effectivity-module-7"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 8},
        {"science-pack-2", 7},
        {"science-pack-3", 6},
        {"alien-science-pack", 5},
      },
      time = 60
    },
	upgrade = true,
    order = "m-e-8"
  },
  --[[Productivity Modules]]--
  {
    type = "technology",
    name = "productivity-module-4",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-4"
      }
    },
    prerequisites = {"productivity-module-3", "dymodule"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-4"
  },
  {
    type = "technology",
    name = "productivity-module-5",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-5"
      }
    },
    prerequisites = {"productivity-module-4"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 4},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-5"
  },
  {
    type = "technology",
    name = "productivity-module-6",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-6"
      }
    },
    prerequisites = {"productivity-module-5"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 5},
        {"science-pack-2", 4},
        {"science-pack-3", 3},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-6"
  },
  {
    type = "technology",
    name = "productivity-module-7",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-7"
      }
    },
    prerequisites = {"productivity-module-6"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 6},
        {"science-pack-2", 5},
        {"science-pack-3", 4},
        {"alien-science-pack", 2},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-7"
  },
  {
    type = "technology",
    name = "productivity-module-8",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-8"
      }
    },
    prerequisites = {"productivity-module-7"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 8},
        {"science-pack-2", 7},
        {"science-pack-3", 6},
        {"alien-science-pack", 5},
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-8"
  },
}
)
