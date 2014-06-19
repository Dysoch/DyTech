data:extend(
{
  {
    type = "inserter",
    name = "dytech-inserter",
    icon = "__DyTech-Graphics__/graphics/icons/dytech-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "dytech-inserter"},
    max_health = 1000,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 4000,
    energy_per_rotation = 4000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.18,
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 0.85,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 1.35},
    platform_picture =
    {
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-platform.png"
    },
		programmable = true,
    filter_count = 5,
    rotation_speed = 0.07  
  },
  {
    type = "inserter",
    name = "dytech-inserter-fast",
    icon = "__DyTech-Graphics__/graphics/icons/dytech-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "dytech-inserter-fast"},
    max_health = 1000,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 4000,
    energy_per_rotation = 4000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.33,
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-closed.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-hand-open.png",
      priority = "extra-high",
      width = 13,
      height = 41
    },
    insert_distance = 0.85,
    pickup_distance = 1,
    pickup_position = {0, -1},
    insert_position = {0, 1.35},
    platform_picture =
    {
      priority = "extra-high",
      width = 46,
      height = 46,
      sheet = "__DyTech-Graphics__/graphics/entity/inserter/dytech-inserter-platform.png"
    },
		programmable = true,
    rotation_speed = 0.33  
  },
}
)