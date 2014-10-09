require ("prototypes.functions")

data:extend(
{
  {
    type = "pipe",
    name = "pipe-mainline",
    icon = "__base__/graphics/icons/pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe-mainline"},
    max_health = 5000,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box =
    {
      base_area = 100,
      base_level = 5,
      pipe_connections =
      {
        { position = {0, -2} },
        { position = {0, 2} },
        { position = {-2, 0} },
        { position = {2, 0} },
      },
    },
    pictures = pipepictures(),
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
  },
  {
    type = "pump",
    name = "pump-to-mainline",
    icon = "__base__/graphics/icons/small-pump.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "pump-to-mainline"},
    max_health = 80,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box =
    {
      base_area = 100,
	  base_level = 5,
	  --pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      pipe_connections = 
	  {
	    { position = {0, -2}, base_level = 5, type="output" },
        { position = {-2, 1}, base_level = -1, type="input" },
		{ position = {-2, -1}, base_level = -1, type="input" },
		{ position = {1, 2}, base_level = -1, type="input" },
		{ position = {-1, 2}, base_level = -1, type="input" },
		{ position = {2, 1}, base_level = -1, type="input" },
		{ position = {2, -1}, base_level = -1, type="input" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "300kW",
    pumping_speed = 2.5,
    animations =
    {
      north =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
        frame_width = 46,
        frame_height = 56,
        frame_count = 8,
        shift = {0.28125, 0.09375},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      east =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
        frame_width = 51,
        frame_height = 56,
        frame_count = 8,
        shift = {0.796875, -0.65625},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      south =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
        frame_width = 61,
        frame_height = 58,
        frame_count = 8,
        shift = {1.265625, -0.475},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      west =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
        frame_width = 56,
        frame_height = 44,
        frame_count = 8,
        shift = {0.9375, 0.1875},
        animation_speed = 0.5,
        run_mode = "backward"
      }
    }
  },
  {
    type = "pump",
    name = "pump-from-mainline",
    icon = "__base__/graphics/icons/small-pump.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "pump-from-mainline"},
    max_health = 80,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box =
    {
      base_area = 100,
	  base_level = 0,
	  --pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      pipe_connections = 
	  {
		{ position = {-2, 0}, base_level = -1, type="input" },
		{ position = {2, 0}, base_level = -1, type="input" },
		{ position = {0, 2}, base_level = -1, type="input" },
		{ position = {1, -2}, base_level = 1, type="output" },
		{ position = {-1, -2}, base_level = 1, type="output" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "300kW",
    pumping_speed = 2.5,
    animations =
    {
      north =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
        frame_width = 46,
        frame_height = 56,
        frame_count = 8,
        shift = {0.28125, 0.09375},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      east =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
        frame_width = 51,
        frame_height = 56,
        frame_count = 8,
        shift = {0.796875, -0.65625},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      south =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
        frame_width = 61,
        frame_height = 58,
        frame_count = 8,
        shift = {1.265625, -0.475},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      west =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
        frame_width = 56,
        frame_height = 44,
        frame_count = 8,
        shift = {0.9375, 0.1875},
        animation_speed = 0.5,
        run_mode = "backward"
      }
    }
  },
   {
    type = "pump",
    name = "pump-inline-mainline",
    icon = "__base__/graphics/icons/small-pump.png",
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "pump-inline-mainline"},
    max_health = 80,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box =
    {
      base_area = 100,
	  base_level = 5,
	  --pipe_picture = assembler3pipepictures(),
      pipe_covers = pipecoverspictures(),
      pipe_connections = 
	  {
		{ position = {0, 2}, base_level = 5, type="input" },
		{ position = {0, -2}, base_level = 5, type="output" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "300kW",
    pumping_speed = 2.5,
    animations =
    {
      north =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
        frame_width = 46,
        frame_height = 56,
        frame_count = 8,
        shift = {0.28125, 0.09375},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      east =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
        frame_width = 51,
        frame_height = 56,
        frame_count = 8,
        shift = {0.796875, -0.65625},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      south =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
        frame_width = 61,
        frame_height = 58,
        frame_count = 8,
        shift = {1.265625, -0.475},
        animation_speed = 0.5,
        run_mode = "backward"
      },
      west =
      {
        scale = 3,
		filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
        frame_width = 56,
        frame_height = 44,
        frame_count = 8,
        shift = {0.9375, 0.1875},
        animation_speed = 0.5,
        run_mode = "backward"
      }
    }
  },
}
)