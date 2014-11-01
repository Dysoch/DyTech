
DogPlayerScale = 1
Dog_Player_Tint1 = {r=0.56, g=0.46, b=0.42, a=0.65}
Dog_Player_Tint2 = {r=1, g=0.63, b=0, a=0.4}

DogEnemyScale = 0.3
Dog_Enemy_Tint1 = {r=0.56, g=0.46, b=0.42, a=0.65}
Dog_Enemy_Tint2 = {r=1, g=0.63, b=0, a=0.4}

data:extend(
{
  {
    type = "unit",
    name = "guard-dog-player",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 150,
	order = "g-d-1",
    healing_per_tick = 0.05,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
	attack_parameters =
    {
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(4),
      sound =
      {
        {
          filename = "__base__/sound/creatures/biter-roar-short-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-short-2.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-short-3.ogg",
          volume = 0.8
        }
      },
      animation = biterattackanimation(DogPlayerScale, Dog_Player_Tint1, Dog_Player_Tint2)
    },
	vision_distance = 30,
    movement_speed = 0.3,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 1500,
	distraction_cooldown = 300,
    corpse = "dog-player-corpse",
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/creeper-death-1.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/creeper-death-2.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/creeper-death-3.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/creeper-death-4.ogg",
        volume = 0.7
      }
    },
    run_animation = biterrunanimation(DogPlayerScale, Dog_Player_Tint1, Dog_Player_Tint2)
  },
  {
    type = "unit",
    name = "guard-dog-enemy",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 50,
	order = "g-d-1",
    healing_per_tick = 0.05,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
	attack_parameters =
    {
      range = 0.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(3),
      sound =
      {
        {
          filename = "__base__/sound/creatures/biter-roar-short-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-short-2.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-short-3.ogg",
          volume = 0.8
        }
      },
      animation = biterattackanimation(DogEnemyScale, Dog_Enemy_Tint1, Dog_Enemy_Tint2)
    },
	vision_distance = 30,
    movement_speed = 0.35,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 1500,
	distraction_cooldown = 300,
    corpse = "dog-enemy-corpse",
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/creeper-death-1.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/creeper-death-2.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/creeper-death-3.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creatures/creeper-death-4.ogg",
        volume = 0.7
      }
    },
    run_animation = biterrunanimation(DogEnemyScale, Dog_Enemy_Tint1, Dog_Enemy_Tint2)
  },
  --[[{
    type = "unit",
    name = "bird",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 250,
	order = "g-d-1",
    healing_per_tick = 0.05,
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    attack_parameters =
    {
      range = 1,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(2),
      animation =
      {
        scale = 0.25,
		frame_width = 279,
        frame_height = 184,
        frame_count = 11,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {0, -0},
        stripes =
        {
          {
            filename = "__DyTech-Genetics__/graphics/entity/biters/berserk-biter-attack-1.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Genetics__/graphics/entity/biters/berserk-biter-attack-2.png",
            width_in_frames = 5,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Genetics__/graphics/entity/biters/berserk-biter-attack-3.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = "__DyTech-Genetics__/graphics/entity/biters/berserk-biter-attack-4.png",
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
        filename = "__base__/sound/creeper-death-1.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-2.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-3.ogg",
        volume = 0.7
      },
      {
        filename = "__base__/sound/creeper-death-4.ogg",
        volume = 0.7
      }
    },
    run_animation =
    {
      scale = 0.25,
	  still_frame = 4,
      frame_width = 169,
      frame_height = 117,
      frame_count = 16,
      direction_count = 16,
      axially_symmetrical = false,
      shift = {0, -0},
      stripes =
      {
        {
          filename = "__DyTech-Genetics__/graphics/entity/biters/berserk-biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16
        },
        {
          filename = "__DyTech-Genetics__/graphics/entity/biters/berserk-biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16
        }
      },
    }
  },]]--
}
)