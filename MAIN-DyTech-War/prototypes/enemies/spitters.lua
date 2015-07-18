require "config"
require "prototypes.enemies.functions"
require "prototypes.internal-config"

data:extend(
{
	-- Younglings --
  {
    type = "unit",
    name = "young-berserk-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Berserker_Health*Enemies.Young_Factor),
    order="b-b-f",
	resistances = 
    {
	  {
        type = "fire",
        percent = (100*Enemies.Young_Factor),
      },
	  {
        type = "poison",
        percent = (-25*Enemies.Young_Factor),
      },
	  {
        type = "acid",
        percent = (-25*Enemies.Young_Factor),
      },
    },
    subgroup="enemies",
    healing_per_tick = (0.08*Enemies.Young_Factor),
    collision_box = {{(-0.4*Enemies.Young_Factor), (-0.4*Enemies.Young_Factor)}, {(0.4*Enemies.Young_Factor), (0.4*Enemies.Young_Factor)}},
    selection_box = {{(-0.85*Enemies.Young_Factor), (-1.9*Enemies.Young_Factor)}, {(0.85*Enemies.Young_Factor), (0.37*Enemies.Young_Factor)}},
    sticker_box = {{(-1.2*Enemies.Young_Factor), (-2.4*Enemies.Young_Factor)}, {(1.2*Enemies.Young_Factor), (0.5*Enemies.Young_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "berserk-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Young_Factor),
    attack_parameters = spitterattackparametersFire({range=(20*Enemies.Young_Factor),
                                                 cooldown=(100*Enemies.Young_Factor),
                                                 damage_modifier=(1*Enemies.Young_Factor),
                                                 scale=(Enemies.BerserkerScale*Enemies.Young_Factor),
                                                 tint=Enemies.Berserker_Tint1}),
    vision_distance = (30*Enemies.Young_Factor),
    movement_speed = (0.2*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    -- in pu
    pollution_to_join_attack = (5000*Enemies.Young_Factor),
    corpse = "berserk-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.BerserkerScale*Enemies.Young_Factor), Enemies.Berserker_Tint1)
  },
  {
    type = "unit",
    name = "young-elder-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Elder_Health*Enemies.Young_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "physical",
        percent = (-50*Enemies.Young_Factor),
      },
	  {
        type = "impact",
        percent = (-50*Enemies.Young_Factor),
      },
	  {
        type = "laser",
        percent = (99*Enemies.Young_Factor),
      },
    },
    healing_per_tick = (0.09*Enemies.Young_Factor),
    collision_box = {{(-0.4*Enemies.Young_Factor), (-0.4*Enemies.Young_Factor)}, {(0.4*Enemies.Young_Factor), (0.4*Enemies.Young_Factor)}},
    selection_box = {{(-1.0*Enemies.Young_Factor), (-2.25*Enemies.Young_Factor)}, {(1.0*Enemies.Young_Factor), (0.45*Enemies.Young_Factor)}},
    sticker_box = {{(-1.25*Enemies.Young_Factor), (-2.75*Enemies.Young_Factor)}, {(1.25*Enemies.Young_Factor), (0.6*Enemies.Young_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "elder-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Young_Factor),
    attack_parameters = spitterattackparametersLaser({range=(25*Enemies.Young_Factor),
                                                 cooldown=(200*Enemies.Young_Factor),
                                                 damage_modifier=(1*Enemies.Young_Factor),
                                                 scale=(Enemies.ElderScale*Enemies.Young_Factor),
                                                 tint=Enemies.Elder_Tint1}),
    vision_distance = (30*Enemies.Young_Factor),
    movement_speed = (0.3*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    -- in pu
    pollution_to_join_attack = (10000*Enemies.Young_Factor),
    corpse = "elder-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.ElderScale*Enemies.Young_Factor), Enemies.Elder_Tint1)
  },
  {
    type = "unit",
    name = "young-king-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (King_Health*Enemies.Young_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "acid",
        percent = (100*Enemies.Young_Factor),
      },
	  {
        type = "poison",
        percent = (100*Enemies.Young_Factor),
      },
	  {
        type = "laser",
        percent = (25*Enemies.Young_Factor),
      },
	  {
        type = "plasma",
        percent = (-25*Enemies.Young_Factor),
      },
	  {
        type = "fire",
        percent = (-25*Enemies.Young_Factor),
      },
    },
    healing_per_tick = (0.12*Enemies.Young_Factor),
    collision_box = {{(-0.4*Enemies.Young_Factor), (-0.4*Enemies.Young_Factor)}, {(0.4*Enemies.Young_Factor), (0.4*Enemies.Young_Factor)}},
    selection_box = {{(-1.4*Enemies.Young_Factor), (-3.0*Enemies.Young_Factor)}, {(1.4*Enemies.Young_Factor), (0.6*Enemies.Young_Factor)}},
    sticker_box = {{(-1.7*Enemies.Young_Factor), (-3.75*Enemies.Young_Factor)}, {(1.7*Enemies.Young_Factor), (0.75*Enemies.Young_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "king-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Young_Factor),
    attack_parameters = spitterattackparametersAcid({range=(28*Enemies.Young_Factor),
                                                 cooldown=(400*Enemies.Young_Factor),
                                                 damage_modifier=(1*Enemies.Young_Factor),
                                                 scale=(Enemies.KingScale*Enemies.Young_Factor),
                                                 tint=Enemies.King_Tint1}),
    vision_distance = (50*Enemies.Young_Factor),
    movement_speed = (0.1*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    -- in pu
    pollution_to_join_attack = (20000*Enemies.Young_Factor),
    corpse = "king-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.KingScale*Enemies.Young_Factor), Enemies.King_Tint1)
  },
  {
    type = "unit",
    name = "young-queen-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Queen_Health*Enemies.Young_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "physical",
        percent = (75*Enemies.Young_Factor),
      },
      {
        type = "impact",
        percent = (75*Enemies.Young_Factor),
      },
	  {
        type = "fire",
        percent = (75*Enemies.Young_Factor),
      },
	  {
        type = "laser",
        percent = (75*Enemies.Young_Factor),
      },
      {
        type = "explosion",
        percent = (75*Enemies.Young_Factor),
      },
      {
        type = "acid",
        percent = (75*Enemies.Young_Factor),
      },
      {
        type = "poison",
        percent = (75*Enemies.Young_Factor),
      },
      {
        type = "plasma",
        percent = (75*Enemies.Young_Factor),
      },
    },
    healing_per_tick = (0.12*Enemies.Young_Factor),
    collision_box = {{(-0.8*Enemies.Young_Factor), (-0.8*Enemies.Young_Factor)}, {(0.8*Enemies.Young_Factor), (0.8*Enemies.Young_Factor)}},
    selection_box = {{(-1.5*Enemies.Young_Factor), (-3.75*Enemies.Young_Factor)}, {(1.5*Enemies.Young_Factor), (0.75*Enemies.Young_Factor)}},
    sticker_box = {{(-1.9*Enemies.Young_Factor), (-4.75*Enemies.Young_Factor)}, {(1.9*Enemies.Young_Factor), (1*Enemies.Young_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "queen-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Young_Factor),
    attack_parameters = spitterattackparameters({range=(32*Enemies.Young_Factor),
                                                 cooldown=(100*Enemies.Young_Factor),
                                                 damage_modifier=(5*Enemies.Young_Factor),
                                                 scale=(Enemies.QueenScale*Enemies.Young_Factor),
                                                 tint=Enemies.Queen_Tint1,
                                                 roarvolume=0.7}),
    vision_distance = (30*Enemies.Young_Factor),
    movement_speed = (0.01*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    -- in pu
    pollution_to_join_attack = (50000*Enemies.Young_Factor),
    corpse = "queen-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.QueenScale*Enemies.Young_Factor), Enemies.Queen_Tint1)
  },
	-- Teenagers --
  {
    type = "unit",
    name = "teen-berserk-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Berserker_Health*Enemies.Teen_Factor),
    order="b-b-f",
	resistances = 
    {
	  {
        type = "fire",
        percent = (100*Enemies.Teen_Factor),
      },
	  {
        type = "poison",
        percent = (-25*Enemies.Teen_Factor),
      },
	  {
        type = "acid",
        percent = (-25*Enemies.Teen_Factor),
      },
    },
    subgroup="enemies",
    healing_per_tick = (0.08*Enemies.Teen_Factor),
    collision_box = {{(-0.4*Enemies.Teen_Factor), (-0.4*Enemies.Teen_Factor)}, {(0.4*Enemies.Teen_Factor), (0.4*Enemies.Teen_Factor)}},
    selection_box = {{(-0.85*Enemies.Teen_Factor), (-1.9*Enemies.Teen_Factor)}, {(0.85*Enemies.Teen_Factor), (0.37*Enemies.Teen_Factor)}},
    sticker_box = {{(-1.2*Enemies.Teen_Factor), (-2.4*Enemies.Teen_Factor)}, {(1.2*Enemies.Teen_Factor), (0.5*Enemies.Teen_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "berserk-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Teen_Factor),
    attack_parameters = spitterattackparametersFire({range=(20*Enemies.Teen_Factor),
                                                 cooldown=(100*Enemies.Teen_Factor),
                                                 damage_modifier=(1*Enemies.Teen_Factor),
                                                 scale=(Enemies.BerserkerScale*Enemies.Teen_Factor),
                                                 tint=Enemies.Berserker_Tint1}),
    vision_distance = (30*Enemies.Teen_Factor),
    movement_speed = (0.2*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    -- in pu
    pollution_to_join_attack = (5000*Enemies.Teen_Factor),
    corpse = "berserk-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.BerserkerScale*Enemies.Teen_Factor), Enemies.Berserker_Tint1)
  },
  {
    type = "unit",
    name = "teen-elder-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Elder_Health*Enemies.Teen_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "physical",
        percent = (-50*Enemies.Teen_Factor),
      },
	  {
        type = "impact",
        percent = (-50*Enemies.Teen_Factor),
      },
	  {
        type = "laser",
        percent = (99*Enemies.Teen_Factor),
      },
    },
    healing_per_tick = (0.09*Enemies.Teen_Factor),
    collision_box = {{(-0.4*Enemies.Teen_Factor), (-0.4*Enemies.Teen_Factor)}, {(0.4*Enemies.Teen_Factor), (0.4*Enemies.Teen_Factor)}},
    selection_box = {{(-1.0*Enemies.Teen_Factor), (-2.25*Enemies.Teen_Factor)}, {(1.0*Enemies.Teen_Factor), (0.45*Enemies.Teen_Factor)}},
    sticker_box = {{(-1.25*Enemies.Teen_Factor), (-2.75*Enemies.Teen_Factor)}, {(1.25*Enemies.Teen_Factor), (0.6*Enemies.Teen_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "elder-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Teen_Factor),
    attack_parameters = spitterattackparametersLaser({range=(25*Enemies.Teen_Factor),
                                                 cooldown=(200*Enemies.Teen_Factor),
                                                 damage_modifier=(1*Enemies.Teen_Factor),
                                                 scale=(Enemies.ElderScale*Enemies.Teen_Factor),
                                                 tint=Enemies.Elder_Tint1}),
    vision_distance = (30*Enemies.Teen_Factor),
    movement_speed = (0.3*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    -- in pu
    pollution_to_join_attack = (10000*Enemies.Teen_Factor),
    corpse = "elder-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.ElderScale*Enemies.Teen_Factor), Enemies.Elder_Tint1)
  },
  {
    type = "unit",
    name = "teen-king-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (King_Health*Enemies.Teen_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "acid",
        percent = (100*Enemies.Teen_Factor),
      },
	  {
        type = "poison",
        percent = (100*Enemies.Teen_Factor),
      },
	  {
        type = "laser",
        percent = (25*Enemies.Teen_Factor),
      },
	  {
        type = "plasma",
        percent = (-25*Enemies.Teen_Factor),
      },
	  {
        type = "fire",
        percent = (-25*Enemies.Teen_Factor),
      },
    },
    healing_per_tick = (0.12*Enemies.Teen_Factor),
    collision_box = {{(-0.4*Enemies.Teen_Factor), (-0.4*Enemies.Teen_Factor)}, {(0.4*Enemies.Teen_Factor), (0.4*Enemies.Teen_Factor)}},
    selection_box = {{(-1.4*Enemies.Teen_Factor), (-3.0*Enemies.Teen_Factor)}, {(1.4*Enemies.Teen_Factor), (0.6*Enemies.Teen_Factor)}},
    sticker_box = {{(-1.7*Enemies.Teen_Factor), (-3.75*Enemies.Teen_Factor)}, {(1.7*Enemies.Teen_Factor), (0.75*Enemies.Teen_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "king-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Teen_Factor),
    attack_parameters = spitterattackparametersAcid({range=(28*Enemies.Teen_Factor),
                                                 cooldown=(400*Enemies.Teen_Factor),
                                                 damage_modifier=(1*Enemies.Teen_Factor),
                                                 scale=(Enemies.KingScale*Enemies.Teen_Factor),
                                                 tint=Enemies.King_Tint1}),
    vision_distance = (50*Enemies.Teen_Factor),
    movement_speed = (0.1*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    -- in pu
    pollution_to_join_attack = (20000*Enemies.Teen_Factor),
    corpse = "king-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.KingScale*Enemies.Teen_Factor), Enemies.King_Tint1)
  },
  {
    type = "unit",
    name = "teen-queen-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Queen_Health*Enemies.Teen_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "physical",
        percent = (75*Enemies.Teen_Factor),
      },
      {
        type = "impact",
        percent = (75*Enemies.Teen_Factor),
      },
	  {
        type = "fire",
        percent = (75*Enemies.Teen_Factor),
      },
	  {
        type = "laser",
        percent = (75*Enemies.Teen_Factor),
      },
      {
        type = "explosion",
        percent = (75*Enemies.Teen_Factor),
      },
      {
        type = "acid",
        percent = (75*Enemies.Teen_Factor),
      },
      {
        type = "poison",
        percent = (75*Enemies.Teen_Factor),
      },
      {
        type = "plasma",
        percent = (75*Enemies.Teen_Factor),
      },
    },
    healing_per_tick = (0.12*Enemies.Teen_Factor),
    collision_box = {{(-0.8*Enemies.Teen_Factor), (-0.8*Enemies.Teen_Factor)}, {(0.8*Enemies.Teen_Factor), (0.8*Enemies.Teen_Factor)}},
    selection_box = {{(-1.5*Enemies.Teen_Factor), (-3.75*Enemies.Teen_Factor)}, {(1.5*Enemies.Teen_Factor), (0.75*Enemies.Teen_Factor)}},
    sticker_box = {{(-1.9*Enemies.Teen_Factor), (-4.75*Enemies.Teen_Factor)}, {(1.9*Enemies.Teen_Factor), (1*Enemies.Teen_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "queen-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Teen_Factor),
    attack_parameters = spitterattackparameters({range=(32*Enemies.Teen_Factor),
                                                 cooldown=(100*Enemies.Teen_Factor),
                                                 damage_modifier=(5*Enemies.Teen_Factor),
                                                 scale=(Enemies.QueenScale*Enemies.Teen_Factor),
                                                 tint=Enemies.Queen_Tint1,
                                                 roarvolume=0.7}),
    vision_distance = (30*Enemies.Teen_Factor),
    movement_speed = (0.01*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    -- in pu
    pollution_to_join_attack = (50000*Enemies.Teen_Factor),
    corpse = "queen-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(0.75),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.QueenScale*Enemies.Teen_Factor), Enemies.Queen_Tint1)
  },
	-- Adults --
  {
    type = "unit",
    name = "adult-berserk-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Berserker_Health*Enemies.Adult_Factor),
    order="b-b-f",
	resistances = 
    {
	  {
        type = "fire",
        percent = (100*Enemies.Adult_Factor),
      },
	  {
        type = "poison",
        percent = (-25*Enemies.Adult_Factor),
      },
	  {
        type = "acid",
        percent = (-25*Enemies.Adult_Factor),
      },
    },
    subgroup="enemies",
    healing_per_tick = (0.08*Enemies.Adult_Factor),
    collision_box = {{(-0.4*Enemies.Adult_Factor), (-0.4*Enemies.Adult_Factor)}, {(0.4*Enemies.Adult_Factor), (0.4*Enemies.Adult_Factor)}},
    selection_box = {{(-0.85*Enemies.Adult_Factor), (-1.9*Enemies.Adult_Factor)}, {(0.85*Enemies.Adult_Factor), (0.37*Enemies.Adult_Factor)}},
    sticker_box = {{(-1.2*Enemies.Adult_Factor), (-2.4*Enemies.Adult_Factor)}, {(1.2*Enemies.Adult_Factor), (0.5*Enemies.Adult_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "berserk-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Adult_Factor),
    attack_parameters = spitterattackparametersFire({range=(20*Enemies.Adult_Factor),
                                                 cooldown=(100*Enemies.Adult_Factor),
                                                 damage_modifier=(1*Enemies.Adult_Factor),
                                                 scale=(Enemies.BerserkerScale*Enemies.Adult_Factor),
                                                 tint=Enemies.Berserker_Tint1}),
    vision_distance = (30*Enemies.Adult_Factor),
    movement_speed = (0.2*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    -- in pu
    pollution_to_join_attack = (5000*Enemies.Adult_Factor),
    corpse = "berserk-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.9),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.BerserkerScale*Enemies.Adult_Factor), Enemies.Berserker_Tint1)
  },
  {
    type = "unit",
    name = "adult-elder-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Elder_Health*Enemies.Adult_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "physical",
        percent = (-50*Enemies.Adult_Factor),
      },
	  {
        type = "impact",
        percent = (-50*Enemies.Adult_Factor),
      },
	  {
        type = "laser",
        percent = (99*Enemies.Adult_Factor),
      },
    },
    healing_per_tick = (0.09*Enemies.Adult_Factor),
    collision_box = {{(-0.4*Enemies.Adult_Factor), (-0.4*Enemies.Adult_Factor)}, {(0.4*Enemies.Adult_Factor), (0.4*Enemies.Adult_Factor)}},
    selection_box = {{(-1.0*Enemies.Adult_Factor), (-2.25*Enemies.Adult_Factor)}, {(1.0*Enemies.Adult_Factor), (0.45*Enemies.Adult_Factor)}},
    sticker_box = {{(-1.25*Enemies.Adult_Factor), (-2.75*Enemies.Adult_Factor)}, {(1.25*Enemies.Adult_Factor), (0.6*Enemies.Adult_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "elder-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Adult_Factor),
    attack_parameters = spitterattackparametersLaser({range=(25*Enemies.Adult_Factor),
                                                 cooldown=(200*Enemies.Adult_Factor),
                                                 damage_modifier=(1*Enemies.Adult_Factor),
                                                 scale=(Enemies.ElderScale*Enemies.Adult_Factor),
                                                 tint=Enemies.Elder_Tint1}),
    vision_distance = (30*Enemies.Adult_Factor),
    movement_speed = (0.3*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    -- in pu
    pollution_to_join_attack = (10000*Enemies.Adult_Factor),
    corpse = "elder-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.9),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.ElderScale*Enemies.Adult_Factor), Enemies.Elder_Tint1)
  },
  {
    type = "unit",
    name = "adult-king-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (King_Health*Enemies.Adult_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "acid",
        percent = (100*Enemies.Adult_Factor),
      },
	  {
        type = "poison",
        percent = (100*Enemies.Adult_Factor),
      },
	  {
        type = "laser",
        percent = (25*Enemies.Adult_Factor),
      },
	  {
        type = "plasma",
        percent = (-25*Enemies.Adult_Factor),
      },
	  {
        type = "fire",
        percent = (-25*Enemies.Adult_Factor),
      },
    },
    healing_per_tick = (0.12*Enemies.Adult_Factor),
    collision_box = {{(-0.4*Enemies.Adult_Factor), (-0.4*Enemies.Adult_Factor)}, {(0.4*Enemies.Adult_Factor), (0.4*Enemies.Adult_Factor)}},
    selection_box = {{(-1.4*Enemies.Adult_Factor), (-3.0*Enemies.Adult_Factor)}, {(1.4*Enemies.Adult_Factor), (0.6*Enemies.Adult_Factor)}},
    sticker_box = {{(-1.7*Enemies.Adult_Factor), (-3.75*Enemies.Adult_Factor)}, {(1.7*Enemies.Adult_Factor), (0.75*Enemies.Adult_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "king-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Adult_Factor),
    attack_parameters = spitterattackparametersAcid({range=(28*Enemies.Adult_Factor),
                                                 cooldown=(400*Enemies.Adult_Factor),
                                                 damage_modifier=(1*Enemies.Adult_Factor),
                                                 scale=(Enemies.KingScale*Enemies.Adult_Factor),
                                                 tint=Enemies.King_Tint1}),
    vision_distance = (50*Enemies.Adult_Factor),
    movement_speed = (0.1*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    -- in pu
    pollution_to_join_attack = (20000*Enemies.Adult_Factor),
    corpse = "king-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.9),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.KingScale*Enemies.Adult_Factor), Enemies.King_Tint1)
  },
  {
    type = "unit",
    name = "adult-queen-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = (Queen_Health*Enemies.Adult_Factor),
    order="b-b-f",
    subgroup="enemies",
	resistances = 
    {
      {
        type = "physical",
        percent = (75*Enemies.Adult_Factor),
      },
      {
        type = "impact",
        percent = (75*Enemies.Adult_Factor),
      },
	  {
        type = "fire",
        percent = (75*Enemies.Adult_Factor),
      },
	  {
        type = "laser",
        percent = (75*Enemies.Adult_Factor),
      },
      {
        type = "explosion",
        percent = (75*Enemies.Adult_Factor),
      },
      {
        type = "acid",
        percent = (75*Enemies.Adult_Factor),
      },
      {
        type = "poison",
        percent = (75*Enemies.Adult_Factor),
      },
      {
        type = "plasma",
        percent = (75*Enemies.Adult_Factor),
      },
    },
    healing_per_tick = (0.12*Enemies.Adult_Factor),
    collision_box = {{(-0.8*Enemies.Adult_Factor), (-0.8*Enemies.Adult_Factor)}, {(0.8*Enemies.Adult_Factor), (0.8*Enemies.Adult_Factor)}},
    selection_box = {{(-1.5*Enemies.Adult_Factor), (-3.75*Enemies.Adult_Factor)}, {(1.5*Enemies.Adult_Factor), (0.75*Enemies.Adult_Factor)}},
    sticker_box = {{(-1.9*Enemies.Adult_Factor), (-4.75*Enemies.Adult_Factor)}, {(1.9*Enemies.Adult_Factor), (1*Enemies.Adult_Factor)}},
    loot =
    {
      {
        count_max = 1,
        count_min = 1,
        item = "queen-corpse",
        probability = 1
      }
    },
    distraction_cooldown = (300*Enemies.Adult_Factor),
    attack_parameters = spitterattackparameters({range=(32*Enemies.Adult_Factor),
                                                 cooldown=(100*Enemies.Adult_Factor),
                                                 damage_modifier=(5*Enemies.Adult_Factor),
                                                 scale=(Enemies.QueenScale*Enemies.Adult_Factor),
                                                 tint=Enemies.Queen_Tint1,
                                                 roarvolume=0.7}),
    vision_distance = (30*Enemies.Adult_Factor),
    movement_speed = (0.01*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    -- in pu
    pollution_to_join_attack = (50000*Enemies.Adult_Factor),
    corpse = "queen-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.9),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation((Enemies.QueenScale*Enemies.Adult_Factor), Enemies.Queen_Tint1)
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
    animation = spitterdyinganimation(Enemies.BerserkerScale, Enemies.Berserker_Tint1),
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
    animation = spitterdyinganimation(Enemies.ElderScale, Enemies.Elder_Tint1),
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
    animation = spitterdyinganimation(Enemies.KingScale, Enemies.King_Tint1),
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
    animation = spitterdyinganimation(Enemies.QueenScale),
  },
  {
    type = "smoke",
    name = "poison-cloud-king",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 3,
      line_length = 7,
      scale = 2,
    },
    slow_down_factor = 0,
    wind_speed_factor = 0,
    cyclic = true,
    duration = 60 * 10,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.2, g = 0.9, b = 0.2 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            perimeter = 8,
            entity_flags = {"breaths-air", "player-creation", "placeable-neutral", "placeable-player", "placeable-enemy", "not-on-map"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 2.5, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },
}
)