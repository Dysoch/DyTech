data.raw["mining-drill"]["basic-mining-drill"].icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill1.png"
data.raw["mining-drill"]["basic-mining-drill"].animations.north.filename ="__MAIN-DyTech-Machine__/graphics/mining-drills/north1.png"
data.raw["mining-drill"]["basic-mining-drill"].animations.east.filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/east1.png"
data.raw["mining-drill"]["basic-mining-drill"].animations.south.filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/south1.png"
data.raw["mining-drill"]["basic-mining-drill"].animations.west.filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/west1.png"
data.raw["mining-drill"]["basic-mining-drill"].fast_replaceable_group =  "drill"

data:extend(
{
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk2",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk2"},
    max_health = 350,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/north2.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/east2.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/south2.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/west2.png",
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
      emissions = 0.35 / 3.5,
      usage_priority = "secondary-input",
    },
    energy_usage = "180kW",
    mining_power = 4,
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3
    },
	radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk3",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk3"},
    max_health = 450,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/north3.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/east3.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/south3.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/west3.png",
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
      emissions = 0.3 / 2.25,
      usage_priority = "secondary-input",
    },
    energy_usage = "275kW",
    mining_power = 5,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk4",
	fast_replaceable_group =  "drill",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk4"},
    max_health = 800,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/north4.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/east4.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/south4.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/west4.png",
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
      emissions = 0.3 / 2,
      usage_priority = "secondary-input",
    },
    energy_usage = "450kW",
    mining_power = 7.5,
    resource_searching_radius = 5.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk5",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk5"},
    max_health = 1500,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/north5.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/east5.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/south5.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/west5.png",
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
      emissions = 0.25 / 1.25,
      usage_priority = "secondary-input",
    },
    energy_usage = "750kW",
    mining_power = 10,
    resource_searching_radius = 6.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 5
    },
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill-mk6",
    icon = "__MAIN-DyTech-Machine__/graphics/mining-drills/basic-mining-drill6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill-mk6"},
    max_health = 4500,
    resource_categories = {"basic-solid"},
    healing_per_tick = 0,25,
	corpse = "big-remnants",
	fast_replaceable_group =  "drill",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/north6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/east6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/south6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/west6.png",
        frame_count = 64,
		animation_speed = 0.5,
		run_mode = "forward-then-backward",
      }
    },
    mining_speed = 30,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.25,
      usage_priority = "secondary-input",
    },
    energy_usage = "10000kW",
    mining_power = 25,
    resource_searching_radius = 49.49,
    vector_to_place_result = {0, -1.85},
    radius_visualisation_picture =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/mining-drills/z-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
}
)