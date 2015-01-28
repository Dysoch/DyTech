data:extend(
{
  {
    type = "storage-tank",
    name = "storage-tank-2",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "storage-tank-2"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "storage-tanks",
    fluid_box =
    {
      base_area = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} },
      },
    },
    picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/storage-tanks/storage-tank-2.png",
		priority = "extra-high",
		frames = 2,
		width = 140,
		height = 115,
		shift = {0.6875, 0.109375}
	  }
    },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
  },
  {
    type = "storage-tank",
    name = "storage-tank-3",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-3.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "storage-tank-3"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "storage-tanks",
    fluid_box =
    {
      base_area = 1000,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} },
      },
    },
    picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/storage-tanks/storage-tank-3.png",
		priority = "extra-high",
		frames = 2,
		width = 140,
		height = 115,
		shift = {0.6875, 0.109375}
      }
	},
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
  },
  {
    type = "storage-tank",
    name = "storage-tank-4",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-4.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "storage-tank-4"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "storage-tanks",
    fluid_box =
    {
      base_area = 2500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} },
      },
    },
    picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/storage-tanks/storage-tank-4.png",
		priority = "extra-high",
		frames = 2,
		width = 140,
		height = 115,
		shift = {0.6875, 0.109375}
	  }
    },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
  },
  {
    type = "storage-tank",
    name = "storage-tank-5",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-5.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "storage-tank-5"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "storage-tanks",
    fluid_box =
    {
      base_area = 5000,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} },
      },
    },
    picture =
    {
      sheet =
      {
        filename = "__MAIN-DyTech-Machine__/graphics/storage-tanks/storage-tank-5.png",
		priority = "extra-high",
		frames = 2,
		width = 140,
		height = 115,
		shift = {0.6875, 0.109375}
	  }
    },
    working_sound =
    {
      sound = {
          filename = "__base__/sound/storage-tank.ogg",
          volume = 0.8
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
  },
}
)