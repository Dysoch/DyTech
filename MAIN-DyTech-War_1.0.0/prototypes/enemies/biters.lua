function enemydyingsound()
  return
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
  }
end

BerserkerBiterScale = 1.25
Berserker_Biter_Tint1 = {r=0.698, g=0.133, b=0.133, a=0.6}
Berserker_Biter_Tint2 = {r=0.804, g=0.361, b=0.361, a=0.85}

ElderBiterScale = 1.5
Elder_Biter_Tint1 = {r=0, g=0, b=0.804, a=0.6}
Elder_Biter_Tint2 = {r=0.686, g=0.933, b=0.933, a=0.85}

KingBiterScale = 2.0
King_Biter_Tint1 = {r=0, g=1, b=0.498, a=0.6}
King_Biter_Tint2 = {r=0.486, g=0.988, b=0, a=0.85}

QueenBiterScale = 2.5
Queen_Biter_Tint1 = {r=0.729, g=0.333, b=0.827, a=0.6}
Queen_Biter_Tint2 = {r=0.502, g=0, b=0.502, a=0.85}

data:extend(
{
  {
    type = "unit",
    name = "berserk-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 1500,
    subgroup="enemies",
	order = "b-b-d",
    healing_per_tick = 0.05,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.85, -1.9}, {0.85, 0.37}},
    sticker_box = {{-1.2, -2.4}, {1.2, 0.5}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "biter-berserk-corpse",
        probability = 1
      }
    },
    attack_parameters =
    {
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(60),
      sound =
      {
        {
          filename = "__base__/sound/creatures/biter-roar-long-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-long-2.ogg",
          volume = 0.8
        }
      },
      animation = biterattackanimation(BerserkerBiterScale, Berserker_Biter_Tint1, Berserker_Biter_Tint2)
    },
	vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 5000,
	distraction_cooldown = 300,
    corpse = "berserk-biter-corpse",
    dying_sound = enemydyingsound(),
    run_animation = biterrunanimation(BerserkerBiterScale, Berserker_Biter_Tint1, Berserker_Biter_Tint2)
  },
  {
    type = "unit",
    name = "elder-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 1000,
    subgroup="enemies",
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
    healing_per_tick = 0.05,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-1.0, -2.25}, {1.0, 0.45}},
    sticker_box = {{-1.25, -2.75}, {1.25, 0.6}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "biter-elder-corpse",
        probability = 1
      }
    },
    attack_parameters =
    {
      range = 1.0,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(75),
      sound =
      {
        {
          filename = "__base__/sound/creatures/biter-roar-long-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-long-2.ogg",
          volume = 0.8
        }
      },
      animation = biterattackanimation(ElderBiterScale, Elder_Biter_Tint1, Elder_Biter_Tint2)
    },
	vision_distance = 30,
    movement_speed = 0.3,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 10000,
	distraction_cooldown = 300,
    corpse = "elder-biter-corpse",
    dying_sound = enemydyingsound(),
    run_animation = biterrunanimation(ElderBiterScale, Elder_Biter_Tint1, Elder_Biter_Tint2)
  },
  {
    type = "unit",
    name = "king-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 8000,
    subgroup="enemies",
	order = "b-b-f",
	resistances = 
    {
      {
        type = "physical",
        percent = 70,
      },
	  {
        type = "fire",
        percent = 50,
      },
	  {
        type = "laser",
        percent = 60,
      },
      {
        type = "explosion",
        percent = 60,
      },
    },
    healing_per_tick = 0.10,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-1.4, -3.0}, {1.4, 0.6}},
    sticker_box = {{-1.7, -3.75}, {1.7, 0.75}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "biter-king-corpse",
        probability = 1
      }
    },
    attack_parameters =
    {
      range = 4.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(75),
      sound =
      {
        {
          filename = "__base__/sound/creatures/biter-roar-long-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-long-2.ogg",
          volume = 0.8
        }
      },
      animation = biterattackanimation(KingBiterScale, King_Biter_Tint1, King_Biter_Tint2)
    },
	vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 20000,
	distraction_cooldown = 300,
    corpse = "king-biter-corpse",
    dying_sound = enemydyingsound(),
    run_animation = biterrunanimation(KingBiterScale, King_Biter_Tint1, King_Biter_Tint2)
  },
  {
    type = "unit",
    name = "queen-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 1000,
    subgroup="enemies",
	order = "b-b-g",
	resistances = 
    {
      {
        type = "physical",
        percent = 85,
      },
	  {
        type = "fire",
        percent = 50,
      },
	  {
        type = "laser",
        percent = 85,
      },
      {
        type = "explosion",
        percent = 75,
      },
    },
    healing_per_tick = 0.10,
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1.5, -3.75}, {1.5, 0.75}},
    sticker_box = {{-1.9, -4.75}, {1.9, 1}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "biter-queen-corpse",
        probability = 1
      }
    },
    attack_parameters =
    {
      range = 2.0,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type(25),
      sound =
      {
        {
          filename = "__base__/sound/creatures/biter-roar-long-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/creatures/biter-roar-long-2.ogg",
          volume = 0.8
        }
      },
      animation = biterattackanimation(QueenBiterScale, Queen_Biter_Tint1, Queen_Biter_Tint2)
    },
	vision_distance = 30,
    movement_speed = 0.05,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 50000,
	distraction_cooldown = 300,
    corpse = "queen-biter-corpse",
    dying_sound = enemydyingsound(),
    run_animation = biterrunanimation(QueenBiterScale, Queen_Biter_Tint1, Queen_Biter_Tint2)
  },
  
  --CORPSES
  
  {
    type = "corpse",
    name = "berserk-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(BerserkerBiterScale, Berserker_Biter_Tint1, Berserker_Biter_Tint2)
  },
  {
    type = "corpse",
    name = "elder-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-e[elder]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(ElderBiterScale, Elder_Biter_Tint1, Elder_Biter_Tint2)
  },
  {
    type = "corpse",
    name = "king-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-f[king]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(KingBiterScale, King_Biter_Tint1, King_Biter_Tint2)
  },
  {
    type = "corpse",
    name = "queen-biter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-g[queen]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(QueenBiterScale, Queen_Biter_Tint1, Queen_Biter_Tint2)
  },
}
)