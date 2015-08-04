require "prototypes.internal-config"
require "prototypes.enemies.functions"

data:extend(
{
  {
    type = "unit",
    name = "dyzilla-unit-1",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 500,
    subgroup="enemies",
	order = "b-b-d",
	resistances = Resistances.Tier7,
    healing_per_tick = 0.05,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.2, -0.35}, {0.35, 0.2}},
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
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_fire(5),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation(Enemies.Dyzilla_Unit_1_Scale, Enemies.Dyzilla_Unit_1_Tint1, Enemies.Dyzilla_Unit_1_Tint2)
    },
	vision_distance = 100,
    movement_speed = 0.75,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 0,
	distraction_cooldown = 300,
    corpse = "dyzilla-unit-1-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(Enemies.Dyzilla_Unit_1_Scale, Enemies.Dyzilla_Unit_1_Tint1, Enemies.Dyzilla_Unit_1_Tint2)
  },
  {
    type = "unit",
    name = "dyzilla-unit-2",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 2500,
    subgroup="enemies",
	order = "b-b-d",
	resistances = Resistances.Tier8,
    healing_per_tick = 0.05,
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.7}, {0.7, 0.4}},
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
      range = 2,
      cooldown = 6,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_laser(15),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation(Enemies.Dyzilla_Unit_2_Scale, Enemies.Dyzilla_Unit_2_Tint1, Enemies.Dyzilla_Unit_2_Tint2)
    },
	vision_distance = 75,
    movement_speed = 0.5,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 0,
	distraction_cooldown = 300,
    corpse = "dyzilla-unit-2-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(Enemies.Dyzilla_Unit_2_Scale, Enemies.Dyzilla_Unit_2_Tint1, Enemies.Dyzilla_Unit_2_Tint2)
  },
  {
    type = "unit",
    name = "dyzilla-unit-3",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 5000,
    subgroup="enemies",
	order = "b-b-d",
	resistances = Resistances.Tier10,
    healing_per_tick = 0.05,
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.8, -1.4}, {1.4, 0.8}},
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
      range = 2,
      cooldown = 12,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_poison(50),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation(Enemies.Dyzilla_Unit_3_Scale, Enemies.Dyzilla_Unit_3_Tint1, Enemies.Dyzilla_Unit_3_Tint2)
    },
	vision_distance = 10,
    movement_speed = 0.35,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 999999999999,
	distraction_cooldown = 300,
    corpse = "dyzilla-unit-3-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(Enemies.Dyzilla_Unit_3_Scale, Enemies.Dyzilla_Unit_3_Tint1, Enemies.Dyzilla_Unit_3_Tint2)
  },
  {
    type = "unit",
    name = "dyzilla-unit-4",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air"},
    max_health = 25000,
    subgroup="enemies",
	order = "b-b-d",
	resistances = Resistances.Tier9,
    healing_per_tick = 0.05,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-1.2, -2.1}, {2.1, 1.2}},
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
      range = 2,
      cooldown = 12,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_poison(150),
      sound = make_biter_roars(0.5),
      animation = biterattackanimation(Enemies.Dyzilla_Unit_4_Scale, Enemies.Dyzilla_Unit_4_Tint1, Enemies.Dyzilla_Unit_4_Tint2)
    },
	vision_distance = 50,
    movement_speed = 0.1,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 0,
	distraction_cooldown = 300,
    corpse = "dyzilla-unit-4-corpse",
    dying_explosion = "blood-explosion-small",
    dying_sound =  make_biter_dying_sounds(1.0),
    working_sound =  make_biter_calls(0.7),
    run_animation = biterrunanimation(Enemies.Dyzilla_Unit_4_Scale, Enemies.Dyzilla_Unit_4_Tint1, Enemies.Dyzilla_Unit_4_Tint2)
  },
  
  --CORPSES
  
  {
    type = "corpse",
    name = "dyzilla-unit-1-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(Enemies.Dyzilla_Unit_1_Scale, Enemies.Dyzilla_Unit_1_Tint1, Enemies.Dyzilla_Unit_1_Tint2)
  },
  {
    type = "corpse",
    name = "dyzilla-unit-2-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(Enemies.Dyzilla_Unit_2_Scale, Enemies.Dyzilla_Unit_2_Tint1, Enemies.Dyzilla_Unit_2_Tint2)
  },
  {
    type = "corpse",
    name = "dyzilla-unit-3-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(Enemies.Dyzilla_Unit_3_Scale, Enemies.Dyzilla_Unit_3_Tint1, Enemies.Dyzilla_Unit_3_Tint2)
  },
  {
    type = "corpse",
    name = "dyzilla-unit-4-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(Enemies.Dyzilla_Unit_4_Scale, Enemies.Dyzilla_Unit_4_Tint1, Enemies.Dyzilla_Unit_4_Tint2)
  },
}
)