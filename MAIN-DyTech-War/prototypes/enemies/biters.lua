require "config"
require "prototypes.internal-config"
require "prototypes.enemies.functions"

data:extend(
{
	-- Younglings --
  {
    type = "unit",
    name = "young-berserk-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Berserker_Health*Biter_Modifier)*Enemies.Young_Factor),
    subgroup="enemies",
	order = "b-b-d",
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
    healing_per_tick = 0.05,
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
    attack_parameters =
    {
      type = "projectile",
      range = (1.5*Enemies.Young_Factor),
      cooldown = (35*Enemies.Young_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_fire((60*Enemies.Young_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.BerserkerScale*Enemies.Young_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
    },
	vision_distance = (30*Enemies.Young_Factor),
    movement_speed = (0.2*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    pollution_to_join_attack = (5000*Enemies.Young_Factor),
	distraction_cooldown = (300*Enemies.Young_Factor),
    corpse = "young-berserk-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.BerserkerScale*Enemies.Young_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
  {
    type = "unit",
    name = "young-elder-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Elder_Health*Biter_Modifier)*Enemies.Young_Factor),
    subgroup="enemies",
	order = "b-b-e",
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
    healing_per_tick = (0.05*Enemies.Young_Factor),
    collision_box = {{(-0.4*Enemies.Young_Factor), (-0.4*Enemies.Young_Factor)}, {(0.4*Enemies.Young_Factor), (0.4*Enemies.Young_Factor)}},
    selection_box = {{(-1*Enemies.Young_Factor), (-2.25*Enemies.Young_Factor)}, {(1*Enemies.Young_Factor), (0.45*Enemies.Young_Factor)}},
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
    attack_parameters =
    {
      type = "projectile",
      range = (1.0*Enemies.Young_Factor),
      cooldown = (35*Enemies.Young_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_laser((75*Enemies.Young_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.ElderScale*Enemies.Young_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
    },
	vision_distance = (30*Enemies.Young_Factor),
    movement_speed = (0.3*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    pollution_to_join_attack = (10000*Enemies.Young_Factor),
	distraction_cooldown = (300*Enemies.Young_Factor),
    corpse = "young-elder-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.ElderScale*Enemies.Young_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
  },
  {
    type = "unit",
    name = "young-king-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((King_Health*Biter_Modifier)*Enemies.Young_Factor),
    subgroup="enemies",
	order = "b-b-f",
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
    healing_per_tick = (0.10*Enemies.Young_Factor),
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
    attack_parameters =
    {
      type = "projectile",
      range = (4.5*Enemies.Young_Factor),
      cooldown = (35*Enemies.Young_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_poison((35*Enemies.Young_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.KingScale*Enemies.Young_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
    },
	vision_distance = (30*Enemies.Young_Factor),
    movement_speed = (0.1*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    pollution_to_join_attack = (20000*Enemies.Young_Factor),
	distraction_cooldown = (300*Enemies.Young_Factor),
    corpse = "young-king-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.KingScale*Enemies.Young_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
  },
  {
    type = "unit",
    name = "young-queen-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Queen_Health*Biter_Modifier)*Enemies.Young_Factor),
    subgroup="enemies",
	order = "b-b-g",
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
    healing_per_tick = (0.10*Enemies.Young_Factor),
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
    attack_parameters =
    {
      type = "projectile",
      range = (2.0*Enemies.Young_Factor),
      cooldown = (35*Enemies.Young_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type((25*Enemies.Young_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.QueenScale*Enemies.Young_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
    },
	vision_distance = (30*Enemies.Young_Factor),
    movement_speed = (0.05*Enemies.Young_Factor),
    distance_per_frame = (0.2*Enemies.Young_Factor),
    pollution_to_join_attack = (50000*Enemies.Young_Factor),
	distraction_cooldown = (300*Enemies.Young_Factor),
    corpse = "young-queen-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.QueenScale*Enemies.Young_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
  },
	-- Teenagers --
  {
    type = "unit",
    name = "teen-berserk-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Berserker_Health*Biter_Modifier)*Enemies.Teen_Factor),
    subgroup="enemies",
	order = "b-b-d",
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
    healing_per_tick = 0.05,
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
    attack_parameters =
    {
      type = "projectile",
      range = (1.5*Enemies.Teen_Factor),
      cooldown = (35*Enemies.Teen_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_fire((60*Enemies.Teen_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.BerserkerScale*Enemies.Teen_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
    },
	vision_distance = (30*Enemies.Teen_Factor),
    movement_speed = (0.2*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    pollution_to_join_attack = (5000*Enemies.Teen_Factor),
	distraction_cooldown = (300*Enemies.Teen_Factor),
    corpse = "teen-berserk-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.BerserkerScale*Enemies.Teen_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
  {
    type = "unit",
    name = "teen-elder-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Elder_Health*Biter_Modifier)*Enemies.Teen_Factor),
    subgroup="enemies",
	order = "b-b-e",
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
    healing_per_tick = (0.05*Enemies.Teen_Factor),
    collision_box = {{(-0.4*Enemies.Teen_Factor), (-0.4*Enemies.Teen_Factor)}, {(0.4*Enemies.Teen_Factor), (0.4*Enemies.Teen_Factor)}},
    selection_box = {{(-1*Enemies.Teen_Factor), (-2.25*Enemies.Teen_Factor)}, {(1*Enemies.Teen_Factor), (0.45*Enemies.Teen_Factor)}},
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
    attack_parameters =
    {
      type = "projectile",
      range = (1.0*Enemies.Teen_Factor),
      cooldown = (35*Enemies.Teen_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_laser((75*Enemies.Teen_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.ElderScale*Enemies.Teen_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
    },
	vision_distance = (30*Enemies.Teen_Factor),
    movement_speed = (0.3*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    pollution_to_join_attack = (10000*Enemies.Teen_Factor),
	distraction_cooldown = (300*Enemies.Teen_Factor),
    corpse = "teen-elder-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.ElderScale*Enemies.Teen_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
  },
  {
    type = "unit",
    name = "teen-king-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((King_Health*Biter_Modifier)*Enemies.Teen_Factor),
    subgroup="enemies",
	order = "b-b-f",
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
    healing_per_tick = (0.10*Enemies.Teen_Factor),
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
    attack_parameters =
    {
      type = "projectile",
      range = (4.5*Enemies.Teen_Factor),
      cooldown = (35*Enemies.Teen_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_poison((35*Enemies.Teen_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.KingScale*Enemies.Teen_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
    },
	vision_distance = (30*Enemies.Teen_Factor),
    movement_speed = (0.1*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    pollution_to_join_attack = (20000*Enemies.Teen_Factor),
	distraction_cooldown = (300*Enemies.Teen_Factor),
    corpse = "teen-king-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.KingScale*Enemies.Teen_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
  },
  {
    type = "unit",
    name = "teen-queen-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Queen_Health*Biter_Modifier)*Enemies.Teen_Factor),
    subgroup="enemies",
	order = "b-b-g",
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
    healing_per_tick = (0.10*Enemies.Teen_Factor),
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
    attack_parameters =
    {
      type = "projectile",
      range = (2.0*Enemies.Teen_Factor),
      cooldown = (35*Enemies.Teen_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type((25*Enemies.Teen_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.QueenScale*Enemies.Teen_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
    },
	vision_distance = (30*Enemies.Teen_Factor),
    movement_speed = (0.05*Enemies.Teen_Factor),
    distance_per_frame = (0.2*Enemies.Teen_Factor),
    pollution_to_join_attack = (50000*Enemies.Teen_Factor),
	distraction_cooldown = (300*Enemies.Teen_Factor),
    corpse = "teen-queen-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.QueenScale*Enemies.Teen_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
  },
	-- Adults --
  {
    type = "unit",
    name = "adult-berserk-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Berserker_Health*Biter_Modifier)*Enemies.Adult_Factor),
    subgroup="enemies",
	order = "b-b-d",
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
    healing_per_tick = 0.05,
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
    attack_parameters =
    {
      type = "projectile",
      range = (1.5*Enemies.Adult_Factor),
      cooldown = (35*Enemies.Adult_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_fire((60*Enemies.Adult_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.BerserkerScale*Enemies.Adult_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
    },
	vision_distance = (30*Enemies.Adult_Factor),
    movement_speed = (0.2*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    pollution_to_join_attack = (5000*Enemies.Adult_Factor),
	distraction_cooldown = (300*Enemies.Adult_Factor),
    corpse = "adult-berserk-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.BerserkerScale*Enemies.Adult_Factor), Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
  {
    type = "unit",
    name = "adult-elder-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Elder_Health*Biter_Modifier)*Enemies.Adult_Factor),
    subgroup="enemies",
	order = "b-b-e",
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
    healing_per_tick = (0.05*Enemies.Adult_Factor),
    collision_box = {{(-0.4*Enemies.Adult_Factor), (-0.4*Enemies.Adult_Factor)}, {(0.4*Enemies.Adult_Factor), (0.4*Enemies.Adult_Factor)}},
    selection_box = {{(-1*Enemies.Adult_Factor), (-2.25*Enemies.Adult_Factor)}, {(1*Enemies.Adult_Factor), (0.45*Enemies.Adult_Factor)}},
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
    attack_parameters =
    {
      type = "projectile",
      range = (1.0*Enemies.Adult_Factor),
      cooldown = (35*Enemies.Adult_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_laser((75*Enemies.Adult_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.ElderScale*Enemies.Adult_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
    },
	vision_distance = (30*Enemies.Adult_Factor),
    movement_speed = (0.3*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    pollution_to_join_attack = (10000*Enemies.Adult_Factor),
	distraction_cooldown = (300*Enemies.Adult_Factor),
    corpse = "adult-elder-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.ElderScale*Enemies.Adult_Factor), Enemies.Elder_Tint1, Enemies.Elder_Tint2)
  },
  {
    type = "unit",
    name = "adult-king-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((King_Health*Biter_Modifier)*Enemies.Adult_Factor),
    subgroup="enemies",
	order = "b-b-f",
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
    healing_per_tick = (0.10*Enemies.Adult_Factor),
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
    attack_parameters =
    {
      type = "projectile",
      range = (4.5*Enemies.Adult_Factor),
      cooldown = (35*Enemies.Adult_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_poison((35*Enemies.Adult_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.KingScale*Enemies.Adult_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
    },
	vision_distance = (30*Enemies.Adult_Factor),
    movement_speed = (0.1*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    pollution_to_join_attack = (20000*Enemies.Adult_Factor),
	distraction_cooldown = (300*Enemies.Adult_Factor),
    corpse = "adult-king-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.KingScale*Enemies.Adult_Factor), Enemies.King_Tint1, Enemies.King_Tint2)
  },
  {
    type = "unit",
    name = "adult-queen-biter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = ((Queen_Health*Biter_Modifier)*Enemies.Adult_Factor),
    subgroup="enemies",
	order = "b-b-g",
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
    healing_per_tick = (0.10*Enemies.Adult_Factor),
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
    attack_parameters =
    {
      type = "projectile",
      range = (2.0*Enemies.Adult_Factor),
      cooldown = (35*Enemies.Adult_Factor),
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_type((25*Enemies.Adult_Factor)),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation((Enemies.QueenScale*Enemies.Adult_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
    },
	vision_distance = (30*Enemies.Adult_Factor),
    movement_speed = (0.05*Enemies.Adult_Factor),
    distance_per_frame = (0.2*Enemies.Adult_Factor),
    pollution_to_join_attack = (50000*Enemies.Adult_Factor),
	distraction_cooldown = (300*Enemies.Adult_Factor),
    corpse = "adult-queen-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation((Enemies.QueenScale*Enemies.Adult_Factor), Enemies.Queen_Tint1, Enemies.Queen_Tint2)
  },
}
)