
Lab_Tint = {r=1, g=1, b=0.35, a=0.9}

data:extend(
{
  {
    type = "lab",
    name = "lab-dytech",
    icon = "__base__/graphics/icons/lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lab-dytech"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "huge-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15},
	  tint = Lab_Tint
    },
    off_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = {0.2, 0.15},
	  tint = Lab_Tint
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "100kW",
    inputs =
    {
      "science-pack-nature",
      "science-pack-resource",
      "science-pack-industrial",
      "science-pack-fluid",
      "science-pack-tech",
      "science-pack-war",
      "science-pack-biter",
      "science-pack-advanced",
      "science-pack-nuclear",
      "science-pack-highly-advanced",
    },
    module_slots = 5
  },
}
)