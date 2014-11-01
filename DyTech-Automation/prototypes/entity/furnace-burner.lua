data:extend(
{ 
  {
    type = "furnace",
    name = "steel-furnace-mk2",
    icon = "__DyTech-Automation__/graphics/icons/steel-furnace-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "steel-furnace-mk2"},
    max_health = 400,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_energy_consumption = "170kW",
    smelting_speed = 2.5,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1.2,
      emissions = 0.03,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-2.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-2.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    fire_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-fire.png",
      priority = "high",
      width = 36,
      height = 19,
      frame_count = 12,
      shift = { -0.05, 0.65}
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "furnace",
    name = "steel-furnace-mk3",
    icon = "__DyTech-Automation__/graphics/icons/steel-furnace-3.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "steel-furnace-mk3"},
    max_health = 600,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_energy_consumption = "160kW",
    smelting_speed = 3,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1.4,
      emissions = 0.04,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-3.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-3.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    fire_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-fire.png",
      priority = "high",
      width = 36,
      height = 19,
      frame_count = 12,
      shift = { -0.05, 0.65}
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "furnace",
    name = "steel-furnace-mk4",
    icon = "__DyTech-Automation__/graphics/icons/steel-furnace-4.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "steel-furnace-mk4"},
    max_health = 800,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_energy_consumption = "150kW",
    smelting_speed = 4,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1.6,
      emissions = 0.05,
      fuel_inventory_size = 4,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-4.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-4.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    fire_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-fire.png",
      priority = "high",
      width = 36,
      height = 19,
      frame_count = 12,
      shift = { -0.05, 0.65}
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "furnace",
    name = "steel-furnace-mk5",
    icon = "__DyTech-Automation__/graphics/icons/steel-furnace-5.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "steel-furnace-mk5"},
    max_health = 1000,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    smelting_categories = {"smelting"},
    result_inventory_size = 1,
    smelting_energy_consumption = "140kW",
    smelting_speed = 5,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1.8,
      emissions = 0.06,
      fuel_inventory_size = 5,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    on_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-5.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    off_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-5.png",
      priority = "high",
      width = 91,
      height = 69,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    fire_animation =
    {
      filename = "__DyTech-Automation__/graphics/entity/steel-furnace/steel-furnace-fire.png",
      priority = "high",
      width = 36,
      height = 19,
      frame_count = 12,
      shift = { -0.05, 0.65}
    },
    fast_replaceable_group = "furnace"
  },
}
)