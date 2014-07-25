data:extend(
{
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk2",
    icon = "__DyTech-Automation__/graphics/icons/basic-mining-drill2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk2"},
    max_health = 350,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    animations =
    {
      north =
      {
        priority = "extra-high",
        frame_width = 110,
        frame_height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/north2.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        frame_width = 129,
        frame_height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/east2.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        frame_width = 109,
        frame_height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/south2.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        frame_width = 128,
        frame_height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/west2.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      }
    },
    mining_speed = 1.25,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.45 / 2.5,
      usage_priority = "secondary-input",
    },
    energy_usage = "180kW",
    mining_power = 4,
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -1.85},
    module_slots = 1,
	radius_visualisation_picture =
    {
      filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk3",
    icon = "__DyTech-Automation__/graphics/icons/basic-mining-drill3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk3"},
    max_health = 450,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    animations =
    {
      north =
      {
        priority = "extra-high",
        frame_width = 110,
        frame_height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/north3.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        frame_width = 129,
        frame_height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/east3.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        frame_width = 109,
        frame_height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/south3.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        frame_width = 128,
        frame_height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/west3.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      }
    },
    mining_speed = 2.5,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.35 / 2,
      usage_priority = "secondary-input",
    },
    energy_usage = "275kW",
    mining_power = 5,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -1.85},
    module_slots = 4,
    radius_visualisation_picture =
    {
      filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk4",
	fast_replaceable_group =  "drill",
    icon = "__DyTech-Automation__/graphics/icons/basic-mining-drill4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk4"},
    max_health = 800,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    animations =
    {
      north =
      {
        priority = "extra-high",
        frame_width = 110,
        frame_height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/north4.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        frame_width = 129,
        frame_height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/east4.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        frame_width = 109,
        frame_height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/south4.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        frame_width = 128,
        frame_height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/west4.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      }
    },
    mining_speed = 4,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.3 / 1.75,
      usage_priority = "secondary-input",
    },
    energy_usage = "450kW",
    mining_power = 6,
    resource_searching_radius = 5.49,
    vector_to_place_result = {0, -1.85},
    module_slots = 4,
    radius_visualisation_picture =
    {
      filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk5",
    icon = "__DyTech-Automation__/graphics/icons/basic-mining-drill5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk5"},
    max_health = 1500,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    animations =
    {
      north =
      {
        priority = "extra-high",
        frame_width = 110,
        frame_height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/north5.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        frame_width = 129,
        frame_height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/east5.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        frame_width = 109,
        frame_height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/south5.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        frame_width = 128,
        frame_height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/west5.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      }
    },
    mining_speed = 6.5,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.2 / 1.5,
      usage_priority = "secondary-input",
    },
    energy_usage = "750kW",
    mining_power = 16,
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -1.85},
    module_slots = 5,
    radius_visualisation_picture =
    {
      filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk6",
    icon = "__DyTech-Automation__/graphics/icons/basic-mining-drill6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk6"},
    max_health = 4500,
    resource_categories = {"basic-solid"},
    healing_per_tick = 0,25,
	corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    animations =
    {
      north =
      {
        priority = "extra-high",
        frame_width = 110,
        frame_height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/north6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        frame_width = 129,
        frame_height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/east6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        frame_width = 109,
        frame_height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/south6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        frame_width = 128,
        frame_height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/west6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      }
    },
    mining_speed = 15,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.2 / 1.5,
      usage_priority = "secondary-input",
    },
    energy_usage = "2500kW",
    mining_power = 20,
    resource_searching_radius = 49.49,
    vector_to_place_result = {0, -1.85},
    radius_visualisation_picture =
    {
      filename = "__DyTech-Automation__/graphics/entity/basic-mining-drill/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
}
)