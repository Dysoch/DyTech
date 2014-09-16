function doglairanimation(scalesize)
return
  {
    scale = scalesize,
	frame_width = 250,
    frame_height = 206,
    frame_count = 1,
    animation_speed = 0,
    run_mode = "forward-then-backward",
    axially_symmetrical = false,
    shift = {0., -0},
    stripes =
    {
     {
      filename = "__DyTech-Genetics__/graphics/entity/spawners/dog-lair.png",
      width_in_frames = 1,
      height_in_frames = 1,
     }
    }
  }
end

function birdnestanimation(scalesize)
return
  {
    scale = scalesize,
	frame_width = 238,
    frame_height = 184,
    frame_count = 1,
    animation_speed = 0,
    run_mode = "forward-then-backward",
    axially_symmetrical = false,
    shift = {0.359375, -0.125},
    stripes =
    {
     {
      filename = "__DyTech-Genetics__/graphics/entity/spawners/bird-nest.png",
      width_in_frames = 1,
      height_in_frames = 1,
     }
    }
  }
end

data:extend(
{
  {
    type = "unit-spawner",
    name = "dog-lair",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-neutral", "placeable-enemy", "not-repairable"},
    minable = {mining_time = 1, result = "dog-lair"},
    max_health = 1500,
	order="b-b-g",
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
    collision_box = {{-4.0, -3.0}, {3.0, 3.0}},
    selection_box = {{-4.0, -3.0}, {3.0, 3.0}},
    -- in ticks per 1 pu
    pollution_cooldown = 10,
    corpse = "dog-lair-corpse",
    loot =
    {
      {
        count_max = 3,
        count_min = 1,
        item = "alien-artifact",
        probability = 1
      }
    },
    max_count_of_owned_units = 15,
    max_friends_around_to_spawn = 5,
    animations =
    {
	  doglairanimation(1)
    },
    result_units = (function()
                     local res = {}
                     res[1] = {"guard-dog-player", 1} --25%
                     return res
                   end)(),
    spawning_cooldown = {300, 150}, 
    spawning_radius = 15,
    spawning_spacing = 2,
    max_spawn_shift = 0.65,
    max_richness_for_spawn_shift = 100,
  },
  --[[{
    type = "unit-spawner",
    name = "bird-nest",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-neutral", "placeable-enemy", "not-repairable"},
    minable = {mining_time = 1, result = "bird-nest"},
	emissions_per_tick = -0.01,
    max_health = 250,
	order="b-b-g",
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
    collision_box = {{-2.5, -1.5}, {0.5, 2.5}},
    selection_box = {{-2.5, -1.5}, {0.5, 2.5}},
    -- in ticks per 1 pu
    pollution_cooldown = 10,
    corpse = "bird-nest-corpse",
    loot =
    {
	  {
        count_max = 2,
        count_min = 1,
        item = "bird-egg",
        probability = 1
      }
    },
    maximum_count_of_owned_units = 25,
    animations =
    {
	  birdnestanimation()
    },
    result_units = (function()
                     local res = {}
                     res[1] = {"bird", 1}
                     return res
                   end)(),
    spawning_cooldown = {300, 150}, 
    spawning_radius = 15,
    spawning_spacing = 2,
    max_spawn_shift = 0.65,
    max_richness_for_spawn_shift = 100,
	autoplace =
    {
      sharpness = 0,
      control = "enemy-base",
      richness_multiplier = 1,
      richness_base = 0,
	  force = "neutral",
      peaks =
      {
        {
          influence = 0,
          richness_influence = 1,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
        {
          influence = 0.0000125,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.000225,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
        },
        -- increase the size when moving further away
        {
          influence = 0.00025,
          noise_layer = "enemy-base",
          noise_octaves_difference = -1.8,
          noise_persistence = 0.5,
          tier_from_start_optimal = 20,
          tier_from_start_top_property_limit = 20,
          tier_from_start_max_range = 40,
        },
      }
    }
  },]]--
}
)