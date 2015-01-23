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

BerserkerSpitterScale = 1.25
Berserker_Spitter_Tint = {r=0.698, g=0.133, b=0.133, a=0.6}

ElderSpitterScale = 1.5
Elder_Spitter_Tint = {r=0, g=0, b=0.804, a=0.6}

KingSpitterScale = 2.0
King_Spitter_Tint = {r=0, g=1, b=0.498, a=0.6}

QueenSpitterScale = 2.5
Queen_Spitter_Tint = {r=0.729, g=0.333, b=0.827, a=0.6}

data:extend(
{
  {
    type = "unit",
    name = "berserk-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1000,
    order="b-b-f",
    subgroup="enemies",
    healing_per_tick = 0.08,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.85, -1.9}, {0.85, 0.37}},
    sticker_box = {{-1.2, -2.4}, {1.2, 0.5}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "spitter-berserk-corpse",
        probability = 1
      }
    },
    distraction_cooldown = 300,
    attack_parameters = spitterattackparameters({range=20,
                                                 cooldown=100,
                                                 damage_modifier=4,
                                                 scale=BerserkerSpitterScale,
                                                 tint=Berserker_Spitter_Tint}),
    vision_distance = 30,
    movement_speed = 0.2,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 5000,
    corpse = "berserk-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = enemydyingsound(),
    run_animation = spitterrunanimation(BerserkerSpitterScale, Berserker_Spitter_Tint)
  },
  {
    type = "unit",
    name = "elder-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 750,
    order="b-b-f",
    subgroup="enemies",
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
    healing_per_tick = 0.09,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-1.0, -2.25}, {1.0, 0.45}},
    sticker_box = {{-1.25, -2.75}, {1.25, 0.6}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "spitter-elder-corpse",
        probability = 1
      }
    },
    distraction_cooldown = 300,
    attack_parameters = spitterattackparameters({range=25,
                                                 cooldown=200,
                                                 damage_modifier=5,
                                                 scale=ElderSpitterScale,
                                                 tint=Elder_Spitter_Tint}),
    vision_distance = 30,
    movement_speed = 0.3,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 10000,
    corpse = "elder-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = enemydyingsound(),
    run_animation = spitterrunanimation(ElderSpitterScale, Elder_Spitter_Tint)
  },
  {
    type = "unit",
    name = "king-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 5000,
    order="b-b-f",
    subgroup="enemies",
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
    healing_per_tick = 0.12,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-1.4, -3.0}, {1.4, 0.6}},
    sticker_box = {{-1.7, -3.75}, {1.7, 0.75}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "spitter-king-corpse",
        probability = 1
      }
    },
    distraction_cooldown = 300,
    attack_parameters = spitterattackparameters({range=28,
                                                 cooldown=400,
                                                 damage_modifier=10,
                                                 scale=KingSpitterScale,
                                                 tint=King_Spitter_Tint}),
    vision_distance = 50,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 20000,
    corpse = "king-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = enemydyingsound(),
    run_animation = spitterrunanimation(KingSpitterScale, King_Spitter_Tint)
  },
  {
    type = "unit",
    name = "queen-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1000,
    order="b-b-f",
    subgroup="enemies",
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
    healing_per_tick = 0.12,
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1.5, -3.75}, {1.5, 0.75}},
    sticker_box = {{-1.9, -4.75}, {1.9, 1}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "spitter-queen-corpse",
        probability = 1
      }
    },
    distraction_cooldown = 300,
    attack_parameters = spitterattackparameters({range=32,
                                                 cooldown=100,
                                                 damage_modifier=5,
                                                 scale=QueenSpitterScale,
                                                 tint=Queen_Spitter_Tint}),
    vision_distance = 30,
    movement_speed = 0.01,
    distance_per_frame = 0.2,
    -- in pu
    pollution_to_join_attack = 50000,
    corpse = "queen-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = enemydyingsound(),
    run_animation = spitterrunanimation(QueenSpitterScale, Queen_Spitter_Tint)
  },
  
  -- CORPSES
  
  {
    type = "corpse",
    name = "berserk-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(BerserkerSpitterScale, Berserker_Spitter_Tint),
  },
  {
    type = "corpse",
    name = "elder-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[elder]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(ElderSpitterScale, Elder_Spitter_Tint),
  },
  {
    type = "corpse",
    name = "king-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-f[king]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(KingSpitterScale, King_Spitter_Tint),
  },
  {
    type = "corpse",
    name = "queen-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-g[queen]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(QueenSpitterScale, Queen_Spitter_Tint),
  },
}
)