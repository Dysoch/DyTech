data:extend(
{
  {
    type = "assembling-machine",
    name = "gem-crusher",
    icon = "__DyTech-Graphics__/graphics/icons/gem-crusher.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "gem-crusher"},
    max_health = 500,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -2.4}, {2.4, 2.9}},
    selection_box = {{-1.5, -2.5}, {2.5, 3.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/gem-crusher/crusher.png",
      priority = "high",
      frame_width = 160,
      frame_height = 212,
      frame_count = 1,
      line_length = 1,
      shift = {0.7, 0.12}
    },
    crafting_categories = {"gem-crushing"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 4.5
    },
    energy_usage = "500kW",
    ingredient_count = 15,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"}
  },
  {
    type = "assembling-machine",
    name = "gem-grinder",
    icon = "__DyTech-Graphics__/graphics/icons/gem-grinder.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "gem-grinder"},
    max_health = 500,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.4, -1.9}, {1.4, 1.9}},
    selection_box = {{-0.5, -2.0}, {1.5, 2.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/gem-grinder/grinder.png",
      priority = "high",
      frame_width = 128,
      frame_height = 128,
      frame_count = 1,
      line_length = 1,
      shift = {0.7, 0.12}
    },
    crafting_categories = {"gem-grinding"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.05 / 5
    },
    energy_usage = "750kW",
    ingredient_count = 50,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"}
  },
  {
    type = "assembling-machine",
    name = "gem-polisher",
    icon = "__DyTech-Graphics__/graphics/icons/gem-polisher.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "gem-polisher"},
    max_health = 500,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -2.4}, {2.4, 2.9}},
    selection_box = {{-1.5, -2.5}, {2.5, 3.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/gem-polisher/polisher.png",
      priority = "high",
      frame_width = 96,
      frame_height = 163,
      frame_count = 1,
      line_length = 1,
      shift = {0.7, 0.12}
    },
    crafting_categories = {"gem-polishing"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.1 / 10
    },
    energy_usage = "1500kW",
    ingredient_count = 15,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"}
  },
}
)