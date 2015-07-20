require "prototypes.internal-config"

data.raw["offshore-pump"]["offshore-pump"].fast_replaceable_group = "offshore-pump"
data.raw["offshore-pump"]["offshore-pump"].pumping_speed = PumpingSpeed.Tier1
data.raw["offshore-pump"]["offshore-pump"].max_health = Health.Tier1
data.raw["offshore-pump"]["offshore-pump"].resistances = Resistances.Tier1

data:extend({
  {
    type = "offshore-pump",
    name = "offshore-pump-mk2",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump2.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "small-remnants",
    fluid = "water",
    collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
	fast_replaceable_group = "offshore-pump",
    fluid_box =
    {
      base_area = 2.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = PumpingSpeed.Tier2,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-2.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-2.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-2.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-2.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.7125, 0.20625},
          green = {2.7125, 0.20625},
        },
        wire =
        {
          red = {0.4, -0.41875},
          green = {0.4, -0.41875},
        }
      },
      {
        shadow =
        {
          red = {2.025, 0.83125},
          green = {2.025, 0.83125},
        },
        wire =
        {
          red = {0.36875, -0.1375},
          green = {0.36875, -0.1375},
        }
      },
      {
        shadow =
        {
          red = {1.09, 1.025},
          green = {1.09, 1.025},
        },
        wire =
        {
          red = {-0.50625, 0.2125},
          green = {-0.50625, 0.2125},
        }
      },
      {
        shadow =
        {
          red = {1.6875, -0.10625},
          green = {1.6875, -0.10625},
        },
        wire =
        {
          red = {-0.34375, -0.73125},
          green = {-0.34375, -0.73125},
        }
      }
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "offshore-pump",
    name = "offshore-pump-mk3",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump3.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "small-remnants",
    fluid = "water",
    collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
	fast_replaceable_group = "offshore-pump",
    fluid_box =
    {
      base_area = 5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = PumpingSpeed.Tier3,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-3.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-3.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-3.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-3.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.7125, 0.20625},
          green = {2.7125, 0.20625},
        },
        wire =
        {
          red = {0.4, -0.41875},
          green = {0.4, -0.41875},
        }
      },
      {
        shadow =
        {
          red = {2.025, 0.83125},
          green = {2.025, 0.83125},
        },
        wire =
        {
          red = {0.36875, -0.1375},
          green = {0.36875, -0.1375},
        }
      },
      {
        shadow =
        {
          red = {1.09, 1.025},
          green = {1.09, 1.025},
        },
        wire =
        {
          red = {-0.50625, 0.2125},
          green = {-0.50625, 0.2125},
        }
      },
      {
        shadow =
        {
          red = {1.6875, -0.10625},
          green = {1.6875, -0.10625},
        },
        wire =
        {
          red = {-0.34375, -0.73125},
          green = {-0.34375, -0.73125},
        }
      }
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "offshore-pump",
    name = "offshore-pump-mk4",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump4.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk4"},
    max_health = Health.Tier7,
	resistances = Resistances.Tier7,
    corpse = "small-remnants",
    fluid = "water",
    collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
	fast_replaceable_group = "offshore-pump",
    fluid_box =
    {
      base_area = 10,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = PumpingSpeed.Tier4,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-4.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-4.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-4.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-4.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.7125, 0.20625},
          green = {2.7125, 0.20625},
        },
        wire =
        {
          red = {0.4, -0.41875},
          green = {0.4, -0.41875},
        }
      },
      {
        shadow =
        {
          red = {2.025, 0.83125},
          green = {2.025, 0.83125},
        },
        wire =
        {
          red = {0.36875, -0.1375},
          green = {0.36875, -0.1375},
        }
      },
      {
        shadow =
        {
          red = {1.09, 1.025},
          green = {1.09, 1.025},
        },
        wire =
        {
          red = {-0.50625, 0.2125},
          green = {-0.50625, 0.2125},
        }
      },
      {
        shadow =
        {
          red = {1.6875, -0.10625},
          green = {1.6875, -0.10625},
        },
        wire =
        {
          red = {-0.34375, -0.73125},
          green = {-0.34375, -0.73125},
        }
      }
    },
    circuit_wire_max_distance = 7.5
  },
  {
    type = "offshore-pump",
    name = "offshore-pump-mk5",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump5.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk5"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "small-remnants",
    fluid = "water",
    collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
	fast_replaceable_group = "offshore-pump",
    fluid_box =
    {
      base_area = 20,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = PumpingSpeed.Tier5,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-5.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-5.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-5.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump-5.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    },
    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {2.7125, 0.20625},
          green = {2.7125, 0.20625},
        },
        wire =
        {
          red = {0.4, -0.41875},
          green = {0.4, -0.41875},
        }
      },
      {
        shadow =
        {
          red = {2.025, 0.83125},
          green = {2.025, 0.83125},
        },
        wire =
        {
          red = {0.36875, -0.1375},
          green = {0.36875, -0.1375},
        }
      },
      {
        shadow =
        {
          red = {1.09, 1.025},
          green = {1.09, 1.025},
        },
        wire =
        {
          red = {-0.50625, 0.2125},
          green = {-0.50625, 0.2125},
        }
      },
      {
        shadow =
        {
          red = {1.6875, -0.10625},
          green = {1.6875, -0.10625},
        },
        wire =
        {
          red = {-0.34375, -0.73125},
          green = {-0.34375, -0.73125},
        }
      }
    },
    circuit_wire_max_distance = 7.5
  },
}
)