data:extend(
{ 
  {
    type = "furnace",
    name = "electric-furnace-mk2",
    icon = "__DyTech-Automation__/graphics/icons/electric-furnace-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-furnace-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "huge-explosion",
    light = {intensity = 1, size = 10},
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 3,
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_speed = 3,
    smelting_energy_consumption = "160kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.0075
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-2.png",
      priority = "high",
      x = 131,
      width = 131,
      height = 102,
      frame_count = 12,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-2.png",
      priority = "high",
      width = 131,
      height = 102,
      frame_count = 1,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "furnace",
    name = "electric-furnace-mk3",
    icon = "__DyTech-Automation__/graphics/icons/electric-furnace-3.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-furnace-mk3"},
    max_health = 450,
    corpse = "big-remnants",
    dying_explosion = "huge-explosion",
    light = {intensity = 1, size = 10},
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 4,
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_speed = 4,
    smelting_energy_consumption = "140kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-3.png",
      priority = "high",
      x = 131,
      width = 131,
      height = 102,
      frame_count = 12,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-3.png",
      priority = "high",
      width = 131,
      height = 102,
      frame_count = 1,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "furnace",
    name = "electric-furnace-mk4",
    icon = "__DyTech-Automation__/graphics/icons/electric-furnace-4.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-furnace-mk4"},
    max_health = 600,
    corpse = "big-remnants",
    dying_explosion = "huge-explosion",
    light = {intensity = 1, size = 10},
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 5,
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_speed = 5,
    smelting_energy_consumption = "120kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.0125
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-4.png",
      priority = "high",
      x = 131,
      width = 131,
      height = 102,
      frame_count = 12,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-4.png",
      priority = "high",
      width = 131,
      height = 102,
      frame_count = 1,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "furnace",
    name = "electric-furnace-mk5",
    icon = "__DyTech-Automation__/graphics/icons/electric-furnace-5.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-furnace-mk5"},
    max_health = 1000,
    corpse = "big-remnants",
    dying_explosion = "huge-explosion",
    light = {intensity = 1, size = 10},
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 6,
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_speed = 6,
    smelting_energy_consumption = "100kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.015
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-5.png",
      priority = "high",
      x = 131,
      width = 131,
      height = 102,
      frame_count = 12,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/electric-furnace/electric-furnace-5.png",
      priority = "high",
      width = 131,
      height = 102,
      frame_count = 1,
      animation_speed = 0.5,
      shift = {0.5, 0.05 }
    },
    fast_replaceable_group = "furnace"
  },
}
)