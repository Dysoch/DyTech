data:extend(
{
  {
    type = "assembling-machine",
    name = "packing",
    icon = "__DyTech-Graphics__/graphics/icons/packing.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "packing"},
    max_health = 500,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/packing/packing.png",
      priority = "high",
      frame_width = 141,
      frame_height = 120,
      frame_count = 32,
      line_length = 6,
      shift = {0.7, 0.12}
    },
    crafting_categories = {"packing"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 1,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"}
  },
  {
    type = "assembling-machine",
    name = "unpacking",
    icon = "__DyTech-Graphics__/graphics/icons/unpacking.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "unpacking"},
    max_health = 500,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/unpacking/unpacking.png",
      priority = "high",
      frame_width = 141,
      frame_height = 120,
      frame_count = 32,
      line_length = 6,
      shift = {0.7, 0.12}
    },
    crafting_categories = {"unpacking"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 1,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"}
  },
  {
    type = "furnace",
    name = "recycler",
    icon = "__DyTech__/graphics/icons/recycler.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "recycler"},
    max_health = 150,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 0,
    smelting_categories = {"recycling"},
    result_inventory_size = 2,
    smelting_speed = 0.25,
    smelting_energy_consumption = "250kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.05
    },
    on_animation =
    {
      filename = "__DyTech__/graphics/entity/recycler/recycler.png",
      priority = "high",
      x = 131,
      frame_width = 131,
      frame_height = 102,
      frame_count = 12,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech__/graphics/entity/recycler/recycler.png",
      priority = "high",
      frame_width = 131,
      frame_height = 102,
      frame_count = 1,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
  },
  {
    type = "assembling-machine",
    name = "compressor",
    icon = "__DyTech-Graphics__/graphics/icons/gem-cutter.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "compressor"},
    max_health = 500,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.9, -1.4}, {1.9, 1.4}},
    selection_box = {{-1.0, -1.5}, {2.0, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/gem-cutter/cutter.png",
      priority = "high",
      frame_width = 92,
      frame_height = 92,
      frame_count = 1,
      line_length = 1,
      shift = {0.7, 0.12}
    },
    crafting_categories = {"compressing"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.07 / 7.5
    },
    energy_usage = "900kW",
    ingredient_count = 2,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "pollution"}
  },
}
)