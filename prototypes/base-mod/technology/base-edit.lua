data:extend(
{
  {
    type = "technology",
    name = "automobilism",
    icon = "__base__/graphics/technology/automobilism.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "car"
      },
    },
    prerequisites = {"logistics-2", "wheel"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1}
      },
      time = 20
    },
    order = "a-m"
  },
  {
    type = "technology",
    name = "laser-turrets",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-3"
      },
    },
    prerequisites = {"turrets", "laser"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "l-t-0"
  },
  {
    type = "technology",
    name = "basic-laser-defense-equipment",
    icon = "__base__/graphics/technology/basic-laser-defense-equipment.png",
    prerequisites = {"armor-making-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-laser-defense-equipment"
      }
    },
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 30
    },
    order = "b-l-d-e-1"
  },
  {
    type = "technology",
    name = "speed-module",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "m-s-1"
  },
  {
    type = "technology",
    name = "speed-module-2",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-2"
      }
    },
    prerequisites = {"speed-module"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
	upgrade = true,
    order = "m-s-2"
  },
  {
    type = "technology",
    name = "speed-module-3",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-3"
      }
    },
    prerequisites = {"speed-module-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "m-s-3"
  },
  {
    type = "technology",
    name = "effectivity-module",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "m-e-1"
  },
  {
    type = "technology",
    name = "effectivity-module-2",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-2"
      }
    },
    prerequisites = {"effectivity-module"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
	upgrade = true,
    order = "m-e-2"
  },
  {
    type = "technology",
    name = "effectivity-module-3",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-3"
      }
    },
    prerequisites = {"effectivity-module-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "m-e-3"
  },
  {
    type = "technology",
    name = "productivity-module",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "m-p-1"
  },
  {
    type = "technology",
    name = "productivity-module-2",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-2"
      }
    },
    prerequisites = {"productivity-module"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
	upgrade = true,
    order = "m-p-2"
  },
  {
    type = "technology",
    name = "productivity-module-3",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-3"
      }
    },
    prerequisites = {"productivity-module-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "m-p-3"
  },
  {
    type = "technology",
    name = "bullet-damage-1",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.1"
      },
	  {
        type = "ammo-damage",
        ammo_category = "sniper-ammo",
        modifier = "0.1"
      },
    },
    prerequisites = {"military"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    },
	upgrade = true,
    order = "b-d-1"
  },
  {
    type = "technology",
    name = "bullet-damage-2",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.1"
      },
	  {
        type = "ammo-damage",
        ammo_category = "sniper-ammo",
        modifier = "0.1"
      },
    },
    prerequisites = {"bullet-damage-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
	upgrade = true,
    order = "b-d-2"
  },
  {
    type = "technology",
    name = "bullet-damage-3",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.2"
      },
	  {
        type = "ammo-damage",
        ammo_category = "sniper-ammo",
        modifier = "0.2"
      },
    },
    prerequisites = {"bullet-damage-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-d-3"
  },
  {
    type = "technology",
    name = "bullet-damage-4",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.2"
      },
	  {
        type = "ammo-damage",
        ammo_category = "sniper-ammo",
        modifier = "0.2"
      },
    },
    prerequisites = {"bullet-damage-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-d-4"
  },
  {
    type = "technology",
    name = "bullet-damage-5",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.2"
      },
	  {
        type = "ammo-damage",
        ammo_category = "sniper-ammo",
        modifier = "0.2"
      },
    },
    prerequisites = {"bullet-damage-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-d-5"
  },
  {
    type = "technology",
    name = "bullet-damage-6",
    icon = "__base__/graphics/technology/bullet-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = "0.4"
      },
	  {
        type = "ammo-damage",
        ammo_category = "sniper-ammo",
        modifier = "0.4"
      },
    },
    prerequisites = {"bullet-damage-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-d-6"
  },
  {
    type = "technology",
    name = "bullet-speed-1",
    icon = "__base__/graphics/technology/bullet-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = "0.2"
      },
	  {
        type = "gun-speed",
        ammo_category = "sniper-ammo",
        modifier = "0.2"
      },
    },
    prerequisites = {"military"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    },
	upgrade = true,
    order = "b-s-1"
  },
  {
    type = "technology",
    name = "bullet-speed-2",
    icon = "__base__/graphics/technology/bullet-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = "0.2"
      },
	  {
        type = "gun-speed",
        ammo_category = "sniper-ammo",
        modifier = "0.2"
      },
    },
    prerequisites = {"bullet-speed-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    },
	upgrade = true,
    order = "b-s-2"
  },
  {
    type = "technology",
    name = "bullet-speed-3",
    icon = "__base__/graphics/technology/bullet-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = "0.3"
      },
	  {
        type = "gun-speed",
        ammo_category = "sniper-ammo",
        modifier = "0.3"
      },
    },
    prerequisites = {"bullet-speed-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-s-3"
  },
  {
    type = "technology",
    name = "bullet-speed-4",
    icon = "__base__/graphics/technology/bullet-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = "0.3"
      },
	  {
        type = "gun-speed",
        ammo_category = "sniper-ammo",
        modifier = "0.3"
      },
    },
    prerequisites = {"bullet-speed-3"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-s-4"
  },
  {
    type = "technology",
    name = "bullet-speed-5",
    icon = "__base__/graphics/technology/bullet-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = "0.3"
      },
	  {
        type = "gun-speed",
        ammo_category = "sniper-ammo",
        modifier = "0.3"
      },
    },
    prerequisites = {"bullet-speed-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-s-5"
  },
  {
    type = "technology",
    name = "bullet-speed-6",
    icon = "__base__/graphics/technology/bullet-speed.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = "0.3"
      },
	  {
        type = "gun-speed",
        ammo_category = "sniper-ammo",
        modifier = "0.3"
      },
    },
    prerequisites = {"bullet-speed-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
	upgrade = true,
    order = "b-s-6"
  },
  {
    type = "technology",
    name = "railway",
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "straight-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "curved-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "diesel-locomotive"
      }
    },
    prerequisites = {"logistics-2", "steel-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 20
    },
    order = "rw",
  },
  {
    type = "technology",
    name = "automated-rail-transportation",
    icon = "__base__/graphics/technology/automated-rail-transportation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "train-stop"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon"
      },
	  {
        type = "unlock-recipe",
        recipe = "cargo-wagon-large"
      },
    },
    prerequisites = {"railway"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 20
    },
    order = "rw-a",
  },
  {
    type = "technology",
    name = "steel-processing",
    icon = "__base__/graphics/technology/steel-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "steel-chest"
      },
    },
    unit =
    {
      count = 20,
      ingredients = {{"science-pack-1", 1}},
      time = 5
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "solar-energy",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel"
      },
	  {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary"
      },
	  {
        type = "unlock-recipe",
        recipe = "solar-panel-terciary"
      }
    },
    prerequisites = {"optics", "advanced-electronics"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "a-h-c",
  },
  {
    type = "technology",
    name = "electric-energy-accumulators-1",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-accumulator-primary"
      },
	  {
        type = "unlock-recipe",
        recipe = "basic-accumulator-secondary"
      },
	  {
        type = "unlock-recipe",
        recipe = "basic-accumulator"
      }
    },
    prerequisites = {"electric-energy-distribution-1"},
    unit =
    {
      count = 60,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "c-e-a",
  },
}
)