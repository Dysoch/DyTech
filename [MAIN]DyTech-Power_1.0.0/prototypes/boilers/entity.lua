data:extend({
  {
    type = "boiler",
    name = "boiler-mk2",
    icon = "__[MAIN]DyTech-Power__/graphics/boilers/boiler2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk2"},
    max_health = 250,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
    {
      base_area = 2.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    energy_consumption = "450kW",
    burner =
    {
      effectivity = 0.60,
      fuel_inventory_size = 2,
      emissions = 0.1 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    structure =
    {
      left =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-2.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-down-2.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-down-2.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-down-2.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-up-2.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-up-2.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-down-2.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-up-2.png",
        priority = "extra-high",
        width = 46,
        height = 70
      }
    },
    fire =
    {
      left = boilerfires.down,
      down = boilerfires.left,
      left_down = boilerfires.right,
      right_down = boilerfires.left,
      left_up = boilerfires.down,
      right_up = boilerfires.down,
      t_up = boilerfires.down
    },
    burning_cooldown = 20,
    -- these are the pipe pictures - boiler is a pipe as well
    pictures = pipepictures()
  },
  {
    type = "boiler",
    name = "boiler-mk3",
    icon = "__[MAIN]DyTech-Power__/graphics/boilers/boiler3.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk3"},
    max_health = 350,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
    {
      base_area = 5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    energy_consumption = "550kW",
    burner =
    {
      effectivity = 0.75,
      fuel_inventory_size = 3,
      emissions = 0.1 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    structure =
    {
      left =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-3.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-down-3.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-down-3.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-down-3.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-up-3.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-up-3.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-down-3.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-up-3.png",
        priority = "extra-high",
        width = 46,
        height = 70
      }
    },
    fire =
    {
      left = boilerfires.down,
      down = boilerfires.left,
      left_down = boilerfires.right,
      right_down = boilerfires.left,
      left_up = boilerfires.down,
      right_up = boilerfires.down,
      t_up = boilerfires.down
    },
    burning_cooldown = 20,
    -- these are the pipe pictures - boiler is a pipe as well
    pictures = pipepictures()
  },
  {
    type = "boiler",
    name = "boiler-mk4",
    icon = "__[MAIN]DyTech-Power__/graphics/boilers/boiler4.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk4"},
    max_health = 350,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
    {
      base_area = 10,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    energy_consumption = "750kW",
    burner =
    {
      effectivity = 0.95,
      fuel_inventory_size = 4,
      emissions = 0.1 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    structure =
    {
      left =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-4.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-down-4.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-down-4.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-down-4.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-up-4.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-up-4.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-down-4.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-up-4.png",
        priority = "extra-high",
        width = 46,
        height = 70
      }
    },
    fire =
    {
      left = boilerfires.down,
      down = boilerfires.left,
      left_down = boilerfires.right,
      right_down = boilerfires.left,
      left_up = boilerfires.down,
      right_up = boilerfires.down,
      t_up = boilerfires.down
    },
    burning_cooldown = 20,
    -- these are the pipe pictures - boiler is a pipe as well
    pictures = pipepictures()
  },
  {
    type = "boiler",
    name = "boiler-mk5",
    icon = "__[MAIN]DyTech-Power__/graphics/boilers/boiler5.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk5"},
    max_health = 350,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
    {
      base_area = 20,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    energy_consumption = "1000kW",
    burner =
    {
      effectivity = 1.05,
      fuel_inventory_size = 5,
      emissions = 0.1 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    structure =
    {
      left =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-5.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-down-5.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-down-5.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-down-5.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-left-up-5.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-right-up-5.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-down-5.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__[MAIN]DyTech-Power__/graphics/boilers/boiler-t-up-5.png",
        priority = "extra-high",
        width = 46,
        height = 70
      }
    },
    fire =
    {
      left = boilerfires.down,
      down = boilerfires.left,
      left_down = boilerfires.right,
      right_down = boilerfires.left,
      left_up = boilerfires.down,
      right_up = boilerfires.down,
      t_up = boilerfires.down
    },
    burning_cooldown = 20,
    -- these are the pipe pictures - boiler is a pipe as well
    pictures = pipepictures()
  }
}
)