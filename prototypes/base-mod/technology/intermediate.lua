data:extend(
{
  {
    type = "technology",
    name = "blade-1",
    icon = "__DyTech-Graphics__/graphics/technology/blade.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blade1"
      }
    },
    prerequisites = {"dytech-1"},
    unit =
    {
      count = 15,
      ingredients =
      {
        {"stone", 10},
		{"sandbag", 1},
      },
      time = 40
    },
    order = "b-1"
  },
  {
    type = "technology",
    name = "rotor-1",
    icon = "__DyTech-Graphics__/graphics/technology/rotor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rotor1"
      }
    },
    prerequisites = {"blade-1"},
    unit =
    {
      count = 15,
      ingredients =
      {
        {"stone", 10},
		{"sandbag", 1},
      },
      time = 40
    },
    order = "r-1"
  },
  {
    type = "technology",
    name = "blade-2",
    icon = "__DyTech-Graphics__/graphics/technology/blade.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blade2"
      }
    },
    prerequisites = {"rotor-1"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"iron-plate-1", 3},
        {"copper-plate-1", 3},
		{"sandbag", 1},
      },
      time = 50
    },
    order = "b-2",
    upgrade=true
  },
  {
    type = "technology",
    name = "rotor-2",
    icon = "__DyTech-Graphics__/graphics/technology/rotor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rotor2"
      }
    },
    prerequisites = {"blade-2"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"iron-plate-1", 3},
        {"copper-plate-1", 3},
		{"sandbag", 1},
      },
      time = 50
    },
    order = "r-2",
    upgrade=true
  },
  {
    type = "technology",
    name = "blade-3",
    icon = "__DyTech-Graphics__/graphics/technology/blade.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blade3"
      }
    },
    prerequisites = {"rotor-2"},
    unit =
    {
      count = 45,
      ingredients =
      {
        {"iron-plate-1", 5},
        {"copper-plate-1", 5},
		{"steel-plate-1", 5},
		{"sandbag", 1},
      },
      time = 60
    },
    order = "b-3",
    upgrade=true
  },
  {
    type = "technology",
    name = "rotor-3",
    icon = "__DyTech-Graphics__/graphics/technology/rotor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rotor3"
      }
    },
    prerequisites = {"blade-3"},
    unit =
    {
      count = 45,
      ingredients =
      {
        {"iron-plate-1", 5},
        {"copper-plate-1", 5},
		{"steel-plate-1", 5},
		{"sandbag", 1},
      },
      time = 60
    },
    order = "r-3",
    upgrade=true
  },
  {
    type = "technology",
    name = "rotor-4",
    icon = "__DyTech-Graphics__/graphics/technology/rotor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rotor4"
      }
    },
    prerequisites = {"rotor-3"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"iron-plate-1", 5},
        {"copper-plate-1", 5},
		{"steel-plate-1", 5},
		{"sandbag", 1},
      },
      time = 70
    },
    order = "r-4",
    upgrade=true
  },
  {
    type = "technology",
    name = "rubber",
    icon = "__DyTech-Graphics__/graphics/technology/rubber.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rubber"
      }
    },
    prerequisites = {"dytech-1"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "r"
  },
  {
    type = "technology",
    name = "bundledwire",
    icon = "__DyTech-Graphics__/graphics/technology/bundledwire.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bundledwire"
      }
    },
    prerequisites = {"rubber"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"copper-plate-1", 1},
		{"rubber", 1},
		{"sandbag", 1},
      },
      time = 25
    },
    order = "b-w"
  },
  {
    type = "technology",
    name = "circuit3",
    icon = "__DyTech-Graphics__/graphics/technology/circuit3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "circuit3"
      }
    },
    prerequisites = {"bundledwire"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 1},
      },
      time = 120
    },
    order = "c-3"
  },
  {
    type = "technology",
    name = "wheel",
    icon = "__DyTech-Graphics__/graphics/technology/wheel.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wheel"
      }
    },
    prerequisites = {"rubber"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"rubber", 1},
		{"sandbag", 1},
      },
      time = 40
    },
    order = "w"
  },
  {
    type = "technology",
    name = "frame-1",
    icon = "__DyTech-Graphics__/graphics/technology/frame.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frame1"
      }
    },
    prerequisites = {"dytech-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"sandbag", 1},
      },
      time = 25
    },
    order = "f-1"
  },
  {
    type = "technology",
    name = "frame-2",
    icon = "__DyTech-Graphics__/graphics/technology/frame.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frame2"
      }
    },
    prerequisites = {"frame-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"sandbag", 1},
      },
      time = 50
    },
    order = "f-2",
    upgrade=true
  },
  {
    type = "technology",
    name = "frame-3",
    icon = "__DyTech-Graphics__/graphics/technology/frame.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frame3"
      }
    },
    prerequisites = {"frame-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"sandbag", 1},
      },
      time = 75
    },
    order = "f-3",
    upgrade=true
  },
  {
    type = "technology",
    name = "frame-4",
    icon = "__DyTech-Graphics__/graphics/technology/frame.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frame4"
      }
    },
    prerequisites = {"frame-3", "bundledwire", "circuit3"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"sandbag", 2},
      },
      time = 100
    },
    order = "f-4",
    upgrade=true
  },
  {
    type = "technology",
    name = "item-exit-1",
    icon = "__DyTech-Graphics__/graphics/technology/item-exit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "item-exit1"
      }
    },
    prerequisites = {"rubber", "dytech-1"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"sandbag", 1},
      },
      time = 25
    },
    order = "i-e-1"
  },
  {
    type = "technology",
    name = "item-exit-2",
    icon = "__DyTech-Graphics__/graphics/technology/item-exit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "item-exit2"
      }
    },
    prerequisites = {"item-exit-1"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"sandbag", 1},
      },
      time = 50
    },
    order = "i-e-2",
    upgrade=true
  },
  {
    type = "technology",
    name = "item-exit-3",
    icon = "__DyTech-Graphics__/graphics/technology/item-exit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "item-exit3"
      }
    },
    prerequisites = {"item-exit-2", "bundledwire"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"sandbag", 1},
      },
      time = 75
    },
    order = "i-e-3",
    upgrade=true
  },
  {
    type = "technology",
    name = "item-exit-4",
    icon = "__DyTech-Graphics__/graphics/technology/item-exit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "item-exit4"
      }
    },
    prerequisites = {"item-exit-3", "circuit3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"sandbag", 2},
      },
      time = 100
    },
    order = "i-e-4",
    upgrade=true
  },
  {
    type = "technology",
    name = "engine-1",
    icon = "__DyTech-Graphics__/graphics/technology/engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "engine1"
      }
    },
    prerequisites = {"dytech-1"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"sandbag", 2},
      },
      time = 10
    },
    order = "e-1"
  },
  {
    type = "technology",
    name = "engine-2",
    icon = "__DyTech-Graphics__/graphics/technology/engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "engine2"
      }
    },
    prerequisites = {"engine-1", "bundledwire"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"sandbag", 2},
      },
      time = 20
    },
    order = "e-2",
    upgrade=true
  },
  {
    type = "technology",
    name = "engine-3",
    icon = "__DyTech-Graphics__/graphics/technology/engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "engine3"
      }
    },
    prerequisites = {"engine-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"sandbag", 2},
      },
      time = 40
    },
    order = "e-3",
    upgrade=true
  },
  {
    type = "technology",
    name = "engine-4",
    icon = "__DyTech-Graphics__/graphics/technology/engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "engine4"
      }
    },
    prerequisites = {"engine-3", "rotor-2"},
    unit =
    {
      count = 175,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"stone", 10},
		{"sandbag", 2},
      },
      time = 80
    },
    order = "e-4",
    upgrade=true
  },
  {
    type = "technology",
    name = "engine-5",
    icon = "__DyTech-Graphics__/graphics/technology/engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "engine5"
      }
    },
    prerequisites = {"engine-4"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"stone", 10},
		{"sandbag", 2},
      },
      time = 80
    },
    order = "e-5",
    upgrade=true
  },
}
)