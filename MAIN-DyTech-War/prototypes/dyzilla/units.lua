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
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.85, -1.9}, {0.85, 0.37}},
    sticker_box = {{-1.2, -2.4}, {1.2, 0.5}},
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
      range = 1.5,
      cooldown = 35,
      ammo_category = "melee",
      ammo_type = make_unit_melee_ammo_fire(5),
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
      animation = biterattackanimation(Enemies.BerserkerScale, Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
    },
	vision_distance = 100,
    movement_speed = 0.75,
    distance_per_frame = 0.2,
    pollution_to_join_attack = 0,
	distraction_cooldown = 300,
    corpse = "dyzilla-unit-1-corpse",
    dying_sound = enemydyingsound(),
    run_animation = biterrunanimation(Enemies.BerserkerScale, Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
  
  --CORPSES
  
  {
    type = "corpse",
    name = "dyzilla-unit-1-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-d[berserker]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = biterdieanimation(Enemies.BerserkerScale, Enemies.Berserker_Tint1, Enemies.Berserker_Tint2)
  },
}
)