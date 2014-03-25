data:extend(
{
  {
    type = "unit-spawner",
    name = "biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy"},
    minable = {mining_time = 1, result = "biter-spawner"},
    max_health = 500,
    order ="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    -- in ticks per 1 pu
    pollution_cooldown = 10,
    corpse = "biter-spawner-corpse",
    loot =
    {
	  {
        count_max = 10,
        count_min = 2,
        item = "alien-artifact",
        probability = 1
      }
    },
    maximum_count_of_owned_units = 10,
    animations =
    {
      biterspawneranimation(0),
      biterspawneranimation(1),
      biterspawneranimation(2),
      biterspawneranimation(3)
    },
    result_units = (function()
                     local res = {}
                     res[1] = {"small-biter", 0.25} --25%
                     if not data.isdemo then
                       res[2] = {"medium-biter", 0.20} --45%
                       res[3] = {"big-biter", 0.15} --60%
					   res[4] = {"berserk-biter", 0.15} --75%
					   res[5] = {"elder-biter", 0.12} --87%
					   res[6] = {"king-biter", 0.08} --95%
					   res[7] = {"queen-biter", 0.05} --100%
                     end
                     return res
                   end)(),
    spawning_cooldown = {300, 150}, 
    spawning_radius = 15,
    spawning_spacing = 2,
    max_spawn_shift = 0.65,
    max_richness_for_spawn_shift = 100,
    autoplace =
    {
      sharpness = 0.4,
      control = "enemy-base",
      richness_multiplier = 1,
      richness_base = 0,
	  force = "enemy",
      peaks =
      {
        {
          influence = 0,
          richness_influence = 100,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
        {
          influence = -10.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.425,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        -- increase the size when moving further away
        {
          influence = 0.5,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
      }
    }
  },
  {
    type = "mining-drill",
    name = "basic-mining-drill",
    icon = "__DyTech-Graphics__/graphics/icons/basic-mining-drill1.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "basic-mining-drill"},
    max_health = 300,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "drill",
    animations =
    {
      north =
      {
        priority = "extra-high",
        frame_width = 110,
        frame_height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__DyTech-Graphics__/graphics/entity/basic-mining-drill/north1.png",
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
        filename = "__DyTech-Graphics__/graphics/entity/basic-mining-drill/east1.png",
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
        filename = "__DyTech-Graphics__/graphics/entity/basic-mining-drill/south1.png",
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
        filename = "__DyTech-Graphics__/graphics/entity/basic-mining-drill/west1.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 0.5,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input",
    },
    energy_usage = "90kW",
    mining_power = 3,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_slots = 3,
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "projectile",
    name = "laser",
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 4, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-ruby.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.10
  },
  {
    type = "electric-turret",
    name = "laser-turret",
    icon = "__DyTech-Graphics__/graphics/icons/laser-ruby-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret" },
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "50kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "500kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "secondary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension,
    prepared_animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser-turrets/laser-turret-ruby.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser-turrets/laser-turret-base-1.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 30,
      damage = 2,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 15,
      sound =
      {
        {
          filename = "__base__/sound/laser.wav",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "logistic-robot",
    name = "logistic-robot",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-robot-1.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "logistic-robot"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    max_payload_size = 1,
    speed = 0.05,
    transfer_distance = 0.5,
	max_energy = "300kJ",
    energy_per_tick = "0.01kJ",
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    picture =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-passive-provider-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-passive-provider"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 48,
    logistic_mode = "passive-provider",
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/logistic-chest-passive-provider.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-storage-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-storage"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 48,
    logistic_mode = "storage",
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/logistic-chest-storage.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-requester-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "logistic-chest-requester"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 48,
    logistic_mode = "requester",
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/logistic-chest-requester.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "boiler",
    name = "boiler",
    icon = "__DyTech-Graphics__/graphics/icons/boiler.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "boiler"},
    max_health = 100,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    energy_consumption = "390kW",
    burner =
    {
      effectivity = 0.5,
      fuel_inventory_size = 1,
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
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-left.png",
        priority = "extra-high",
        width = 51,
        height = 51,
        shift = {0.15, 0}
      },
      down =
      {
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-down.png",
        priority = "extra-high",
        width = 51,
        height = 51,
        shift = {0.05, 0}
      },
      left_down =
      {
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-left-down.png",
        priority = "extra-high",
        width = 51,
        height = 51,
        shift = {0, -0.02}
      },
      right_down =
      {
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-right-down.png",
        priority = "extra-high",
        width = 51,
        height = 51
      },
      left_up =
      {
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-left-up.png",
        priority = "extra-high",
        width = 51,
        height = 51,
        shift = {0.05, 0}
      },
      right_up =
      {
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-right-up.png",
        priority = "extra-high",
        width = 51,
        height = 51,
        shift = {0.15, 0}
      },
      t_down =
      {
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-t-down.png",
        priority = "extra-high",
        width = 51,
        height = 51,
        shift = {0, 0}
      },
      t_up =
      {
        filename = "__DyTech-Graphics__/graphics/entity/boiler/boiler-t-up.png",
        priority = "extra-high",
        width = 51,
        height = 51,
        shift = {0, 0}
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
    type = "accumulator",
    name = "basic-accumulator",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5MJ",
      usage_priority = "terciary",
      input_flow_limit = "300kW",
      output_flow_limit = "300kW"
    },
    picture =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
      frame_width = 138,
      frame_height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
      frame_width = 147,
      frame_height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7}
  },
  {
    type = "solar-panel",
    name = "solar-panel",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel"},
    max_health = 100,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "60kW"
  },
  {
    type = "generator",
    name = "steam-engine",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 0.1,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 219,
      frame_height = 150,
      frame_count = 32,
      line_length = 8,
      shift = {1.1, -0.3}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 180,
      frame_height = 222,
      frame_count = 32,
      line_length = 8,
      shift = {1.2, 1}
    },
    pipes_horizontal =
    {
      filename = "__base__/graphics/entity/steam-engine/pipes-horizontal.png",
      priority = "high",
      width = 160,
      height = 42,
      shift = {0, 0}
    },
    pipes_vertical =
    {
      filename = "__base__/graphics/entity/steam-engine/pipes-vertical.png",
      priority = "high",
      width = 44,
      height = 160
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.1, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.33
      },
      {
        name = "smoke",
        north_position = {0, -1.1},
        east_position = {0, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.66
      },
      {
        name = "smoke",
        north_position = {0, 0},
        east_position = {1.1, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.99
      }
    }
  },
  {
    type = "construction-robot",
    name = "construction-robot",
    icon = "__base__/graphics/icons/construction-robot.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = 0.06,
    transfer_distance = 0.5,
    max_energy = "300kJ",
    energy_per_tick = "0.01kJ",
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    picture =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    },
    repair_pack = "repair-pack-0"
  },
}
)