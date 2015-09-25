data:extend(
{
  {
    type = "unit-spawner",
    name = "dyzilla-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 50000,
    order="b-b-g",
    subgroup="enemies",
    resistances = Resistances.Tier6,
    working_sound = {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    healing_per_tick = 0.005,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    -- in ticks per 1 pu
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    pollution_to_enhance_spawning = 30000,
    corpse = "dyzilla-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_max = 100,
        count_min = 25,
        item = "alien-artifact",
        probability = 1
      }
    },
    max_count_of_owned_units = 75,
    max_friends_around_to_spawn = 50000,
    animations =
    {
      spawner_idle_animation(0, biter_spawner_tint),
      spawner_idle_animation(1, biter_spawner_tint),
      spawner_idle_animation(2, biter_spawner_tint),
      spawner_idle_animation(3, biter_spawner_tint)
    },
    result_units = (function()
                    local res = {}
						res[1] = {"dyzilla-unit-1", {{0.3, 0.0}, {0.4, 1.0}}}
						res[2] = {"dyzilla-unit-2", {{0, 0.4}, {0.3, 1.0}}}
						res[3] = {"dyzilla-unit-3", {{0, 0.7}, {0.2, 1.0}}}
						res[4] = {"dyzilla-unit-4", {{0, 0.9}, {0.1, 1.0}}}
						return res
					end)(),
    spawning_cooldown = {60, 20},
    spawning_radius = 25,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
  },
  {
    type = "corpse",
    name = "dyzilla-spawner-corpse",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup="corpses",
    order = "c[corpse]-b[biter-spawner]",
    final_render_layer = "corpse",
    animation =
    {
      spawner_die_animation(0, biter_spawner_tint),
      spawner_die_animation(1, biter_spawner_tint),
      spawner_die_animation(2, biter_spawner_tint),
      spawner_die_animation(3, biter_spawner_tint)
    }
  },
})