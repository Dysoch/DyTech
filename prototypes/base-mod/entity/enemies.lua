data:extend(
{
  {
    type = "unit",
    name = "berserk-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 1000,
	order = "b-b-d",
    healing_per_tick = 0.05,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    attack_parameters =
    {
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(50),
      animation =
      {
        frame_width = 279,
        frame_height = 184,
        frame_count = 11,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {1.74609, -0.644531},
        stripes =
        {
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-attack-1.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-attack-2.png",
            width_in_frames = 5,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-attack-3.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-attack-4.png",
            width_in_frames = 5,
            height_in_frames = 8
          }
        },
      },
    },
	vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 1500,
	distraction_cooldown = 300,
    corpse = "berserk-biter-corpse",
    dying_sound =
    {
      {
        filename = "__base__/sound/creeper-death-1.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-2.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-3.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-4.wav",
        volume = 0.7
      }
    },
    run_animation =
    {
      still_frame = 4,
      frame_width = 169,
      frame_height = 117,
      frame_count = 16,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.714844, -0.304688},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16
        }
      },
    }
  },
  {
    type = "unit",
    name = "elder-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 750,
	order = "b-b-e",
	resistances = 
    {
      {
        type = "physical",
        percent = 20,
      },
	  {
        type = "fire",
        percent = 20,
      },
	  {
        type = "laser",
        percent = 20,
      },
      {
        type = "explosion",
        percent = 20,
      },
    },
    healing_per_tick = 0.07,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.7, -1.5}, {0.7, 0.3}},
    sticker_box = {{-0.6, -0.8}, {0.6, 0}},
    distraction_cooldown = 300,
    attack_parameters =
    {
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(75),
      animation =
      {
        scale = 1.5,
		frame_width = 279,
        frame_height = 184,
        frame_count = 11,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {1.74609, -0.644531},
        stripes =
        {
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-attack-1.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-attack-2.png",
            width_in_frames = 5,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-attack-3.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-attack-4.png",
            width_in_frames = 5,
            height_in_frames = 8
          }
        },
      },
    },
	vision_distance = 30,
    movement_speed = 0.25,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 2500,
	distraction_cooldown = 300,
    corpse = "elder-biter-corpse",
    dying_sound =
    {
      {
        filename = "__base__/sound/creeper-death-1.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-2.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-3.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-4.wav",
        volume = 0.7
      }
    },
    run_animation =
    {
      scale = 1.5,
	  still_frame = 4,
      frame_width = 169,
      frame_height = 117,
      frame_count = 16,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.714844, -0.304688},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16
        }
      },
    }
  },
  {
    type = "unit",
    name = "king-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 10000,
	order = "b-b-f",
	resistances = 
    {
      {
        type = "physical",
        percent = 75,
      },
	  {
        type = "fire",
        percent = 75,
      },
	  {
        type = "laser",
        percent = 75,
      },
      {
        type = "explosion",
        percent = 75,
      },
    },
    healing_per_tick = 0.12,
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1.4, -3.0}, {1.4, 0.6}},
    sticker_box = {{-1.2, -1.6}, {1.2, 0}},
    attack_parameters =
    {
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(75),
      animation =
      {
        scale = 2,
		frame_width = 279,
        frame_height = 184,
        frame_count = 11,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {1.74609, -0.644531},
        stripes =
        {
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-attack-1.png",
            width_in_frames = 6,
            height_in_frames = 8,
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-attack-2.png",
            width_in_frames = 5,
            height_in_frames = 8,
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-attack-3.png",
            width_in_frames = 6,
            height_in_frames = 8,
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-attack-4.png",
            width_in_frames = 5,
            height_in_frames = 8,
          }
        },
      },
    },
	vision_distance = 30,
    movement_speed = 0.03,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 5000,
	distraction_cooldown = 300,
    corpse = "king-biter-corpse",
    dying_sound =
    {
      {
        filename = "__base__/sound/creeper-death-1.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-2.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-3.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-4.wav",
        volume = 0.7
      }
    },
    run_animation =
    {
      scale = 2,
	  still_frame = 4,
      frame_width = 169,
      frame_height = 117,
      frame_count = 16,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.714844, -0.304688},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16,
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16,
        }
      },
    }
  },
  {
    type = "unit",
    name = "queen-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 250,
	order = "b-b-g",
	resistances = 
    {
      {
        type = "physical",
        percent = 90,
      },
	  {
        type = "fire",
        percent = 90,
      },
	  {
        type = "laser",
        percent = 90,
      },
      {
        type = "explosion",
        percent = 90,
      },
    },
    healing_per_tick = 0.12,
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1.4, -3.0}, {1.4, 0.6}},
    sticker_box = {{-1.2, -1.6}, {1.2, 0}},
    attack_parameters =
    {
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(5),
      animation =
      {
        scale = 2.5,
		frame_width = 279,
        frame_height = 184,
        frame_count = 11,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {1.74609, -0.644531},
        stripes =
        {
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-attack-1.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-attack-2.png",
            width_in_frames = 5,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-attack-3.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-attack-4.png",
            width_in_frames = 5,
            height_in_frames = 8
          }
        },
      },
    },
	vision_distance = 30,
    movement_speed = 0.01,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 50000,
	distraction_cooldown = 300,
    corpse = "queen-biter-corpse",
    dying_sound =
    {
      {
        filename = "__base__/sound/creeper-death-1.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-2.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-3.wav",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-4.wav",
        volume = 0.7
      }
    },
    run_animation =
    {
      scale = 2.5,
	  still_frame = 4,
      frame_width = 169,
      frame_height = 117,
      frame_count = 16,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.714844, -0.304688},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16
        }
      },
    }
  },
  
  --CORPSES
  
  {
    type = "corpse",
    name = "berserk-biter-corpse",
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation =
    {
      frame_width = 284,
      frame_height = 192,
      frame_count = 17,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.65625, -0.164062},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-die-1.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-die-2.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-die-3.png",
          width_in_frames = 5,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-die-4.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-die-5.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-berserk/berserk-biter-die-6.png",
          width_in_frames = 5,
          height_in_frames = 8
        }
      },
    }
  },
  {
    type = "corpse",
    name = "elder-biter-corpse",
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation =
    {
      scale = 1.5,
	  frame_width = 284,
      frame_height = 192,
      frame_count = 17,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.65625, -0.164062},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-die-1.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-die-2.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-die-3.png",
          width_in_frames = 5,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-die-4.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-die-5.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-elder/elder-biter-die-6.png",
          width_in_frames = 5,
          height_in_frames = 8
        }
      },
    }
  },
  {
    type = "corpse",
    name = "king-biter-corpse",
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation =
    {
      scale = 2,
	  frame_width = 284,
      frame_height = 192,
      frame_count = 17,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.65625, -0.164062},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-die-1.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-die-2.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-die-3.png",
          width_in_frames = 5,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-die-4.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-die-5.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-king/king-biter-die-6.png",
          width_in_frames = 5,
          height_in_frames = 8
        }
      },
    }
  },
  {
    type = "corpse",
    name = "queen-biter-corpse",
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation =
    {
      scale = 2.5,
	  frame_width = 284,
      frame_height = 192,
      frame_count = 17,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0.65625, -0.164062},
      stripes =
      {
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-die-1.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-die-2.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-die-3.png",
          width_in_frames = 5,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-die-4.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-die-5.png",
          width_in_frames = 6,
          height_in_frames = 8
        },
        {
          filename = "__DyTech-Graphics__/graphics/entity/biter-queen/queen-biter-die-6.png",
          width_in_frames = 5,
          height_in_frames = 8
        }
      },
    }
  },
  {
    type = "unit-spawner",
    name = "biter-spawner-1",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy"},
    minable = {mining_time = 1, result = "biter-spawner"},
    max_health = 500,
	order= "b-b-g",
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
      },
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
                     res[1] = {"small-biter", 0.10}
                     if not data.isdemo then
                       res[2] = {"medium-biter", 0.15}
                       res[3] = {"big-biter", 0.15}
					   res[4] = {"berserk-biter", 0.15}
					   res[5] = {"elder-biter", 0.15}
					   res[6] = {"king-biter", 0.15}
					   res[7] = {"queen-biter", 0.15}
                     end
                     return res
                   end)(),
    spawning_cooldown = {300, 150}, -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2.5 seconds
    spawning_radius = 15,
    spawning_spacing = 2,
    max_spawn_shift = 0.65,
    max_richness_for_spawn_shift = 100,
  },
}
)