data:extend({
  {
    type = "offshore-pump",
    name = "offshore-pump-mk2",
    icon = "__DyTech-Energy__/graphics/icons/offshore-pump2.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk2"},
    max_health = 160,
    corpse = "small-remnants",
    fluid = "dirty-water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
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
    pumping_speed = 2,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-2.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-2.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-2.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-2.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    }
  },
  {
    type = "offshore-pump",
    name = "offshore-pump-mk3",
    icon = "__DyTech-Energy__/graphics/icons/offshore-pump3.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk3"},
    max_health = 240,
    corpse = "small-remnants",
    fluid = "dirty-water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
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
    pumping_speed = 3.5,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-3.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-3.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-3.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-3.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    }
  },
  {
    type = "offshore-pump",
    name = "offshore-pump-mk4",
    icon = "__DyTech-Energy__/graphics/icons/offshore-pump4.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk4"},
    max_health = 320,
    corpse = "small-remnants",
    fluid = "dirty-water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
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
    pumping_speed = 5,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-4.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-4.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-4.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-4.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    }
  },
  {
    type = "offshore-pump",
    name = "offshore-pump-mk5",
    icon = "__DyTech-Energy__/graphics/icons/offshore-pump5.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "offshore-pump-mk5"},
    max_health = 400,
    corpse = "small-remnants",
    fluid = "dirty-water",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
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
    pumping_speed = 7.5,
    tile_width = 1,
    picture =
    {
      north =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-5.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-5.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-5.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__DyTech-Energy__/graphics/entity/offshore-pump/offshore-pump-5.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    }
  },
}
)