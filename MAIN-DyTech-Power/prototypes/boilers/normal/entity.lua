require "prototypes.internal-config"
require "prototypes.functions"

data.raw["boiler"]["boiler"].energy_consumption = Boilers.Normal.KW1
data.raw["boiler"]["boiler"].burner.effectivity = Boilers.Normal.effectivity1
data.raw["boiler"]["boiler"].max_health = Health.Tier1
data.raw["boiler"]["boiler"].resistances = Resistances.Tier1

data:extend({
  {
    type = "boiler",
    name = "boiler-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "small-remnants",
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
    energy_consumption = Boilers.Normal.KW2,
    burner =
    {
      effectivity = Boilers.Normal.effectivity2,
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
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-2.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-down-2.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-down-2.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-down-2.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-up-2.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-up-2.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-down-2.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-up-2.png",
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
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler3.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "small-remnants",
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
    energy_consumption = Boilers.Normal.KW3,
    burner =
    {
      effectivity = Boilers.Normal.effectivity3,
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
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-3.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-down-3.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-down-3.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-down-3.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-up-3.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-up-3.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-down-3.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-up-3.png",
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
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler4.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk4"},
    max_health = Health.Tier8,
	resistances = Resistances.Tier8,
    corpse = "small-remnants",
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
    energy_consumption = Boilers.Normal.KW4,
    burner =
    {
      effectivity = Boilers.Normal.effectivity4,
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
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-4.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-down-4.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-down-4.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-down-4.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-up-4.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-up-4.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-down-4.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-up-4.png",
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
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler5.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler-mk5"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
    corpse = "small-remnants",
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
    energy_consumption = Boilers.Normal.KW5,
    burner =
    {
      effectivity = Boilers.Normal.effectivity5,
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
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-5.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.03125, 0}
      },
      down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-down-5.png",
        priority = "extra-high",
        width = 66,
        height = 72
      },
      left_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-down-5.png",
        priority = "extra-high",
        width = 60,
        height = 50
      },
      right_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-down-5.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      left_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-left-up-5.png",
        priority = "extra-high",
        width = 66,
        height = 74
      },
      right_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-right-up-5.png",
        priority = "extra-high",
        width = 46,
        height = 72
      },
      t_down =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-down-5.png",
        priority = "extra-high",
        width = 44,
        height = 50
      },
      t_up =
      {
        filename = "__MAIN-DyTech-Power__/graphics/boilers/boiler-t-up-5.png",
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