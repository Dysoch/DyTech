data:extend(
{
  {
    type = "car",
    name = "car2",
    icon = "__DyTech-Graphics__/graphics/icons/car2.png",
    flags = {"pushable", "placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "car2"},
    max_health = 2500,
    corpse = "medium-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      },
	  {
        type = "physical",
        percent = 60
      },
      {
        type = "acid",
        percent = 60
      },
      {
        type = "explosion",
        percent = 75
      }
    },
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    acceleration_per_energy = 0.000001,
    breaking_speed = 0.01,
    burner =
    {
      effectivity = 0.8,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          slow_down_factor = 0.9,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
    consumption = "1200kW",
    friction = 0.05,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          width = 400,
          height = 400
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          width = 400,
          height = 400
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6
      }
    },
    pictures =
    {
      filename = "__DyTech-Graphics__/graphics/entity/car/car-sheet.png",
      line_length = 8,
      frame_width = 130,
      frame_height = 93,
      shift={0.5, 0},
      axially_symmetrical = false,
      direction_count = 64
    },
    rotation_speed = 0.015,
    weight = 150,
    inventory_size = 12
  },
  {
    type = "locomotive",
    name = "diesel-locomotive-armor",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "diesel-locomotive-armor"},
    max_health = 5000,
    corpse = "medium-remnants",
	resistances =
    {
      {
        type = "physical",
        decrease = 5,
        percent = 25
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 25
      },
    },
    collision_box = {{-0.6, -2.6}, {0.9, 2.6}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 4000,
    max_speed = 0.8,
    max_power = "600kW",
    braking_force = 10,
    friction_force = 0.0015,
    -- this is a percentage of current speed that will be substracted
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4.6,
	energy_per_hit_point = 7,
    energy_source =
    {
      type = "burner",
      effectivity = 0.8,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 20,
          position = {0, 0},
          slow_down_factor = 0.9,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
		light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          width = 400,
          height = 400
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          width = 400,
          height = 400
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6
      }
    },
    pictures =
    {
      priority = "very-low",
      frame_width = 346,
      frame_height = 248,
      axially_symmetrical = false,
      direction_count = 256,
      filenames =
      {
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-01.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-02.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-03.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-04.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-05.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-06.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-07.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/diesel-locomotive-08.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.9, -0.45}
    },
    rail_category = "regular"
  },
  {
    type = "locomotive",
    name = "diesel-locomotive-fast",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "diesel-locomotive-fast"},
    max_health = 500,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -2.6}, {0.9, 2.6}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 2500,
    max_speed = 2.5,
    max_power = "1200kW",
    braking_force = 15,
    friction_force = 0.0008,
    -- this is a percentage of current speed that will be substracted
    air_resistance = 0.001,
    connection_distance = 3.3,
    joint_distance = 4.6,
	energy_per_hit_point = 3,
    energy_source =
    {
      type = "burner",
      effectivity = 1.2,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 20,
          position = {0, 0},
          slow_down_factor = 0.9,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
		light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          width = 400,
          height = 400
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          width = 400,
          height = 400
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6
      }
    },
    pictures =
    {
      priority = "very-low",
      frame_width = 346,
      frame_height = 248,
      axially_symmetrical = false,
      direction_count = 256,
      filenames =
      {
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-01.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-02.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-03.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-04.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-05.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-06.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-07.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/diesel-locomotive-08.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.9, -0.45}
    },
    rail_category = "regular"
  },
  {
    type = "cargo-wagon",
    name = "cargo-wagon-armor",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 10,
    minable = {mining_time = 1, result = "cargo-wagon-armor"},
    max_health = 1800,
    corpse = "medium-remnants",
	resistances =
    {
      {
        type = "physical",
        decrease = 4,
        percent = 20
      },
      {
        type = "explosion",
        decrease = 4,
        percent = 20
      },
    },
    collision_box = {{-0.6, -2.4}, {0.9, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    weight = 2000,
    max_speed = 1.5,
    braking_force = 3,
    friction_force = 0.0015,
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4,
	energy_per_hit_point = 7,
    pictures =
    {
      priority = "very-low",
      frame_width = 285,
      frame_height = 218,
      axially_symmetrical = false,
      back_equals_front = true,
      direction_count = 128,
      filenames =
      {
        "__DyTech-Graphics__/graphics/entity/train-armored/cargo-wagon-spritesheet-1.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/cargo-wagon-spritesheet-2.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/cargo-wagon-spritesheet-3.png",
        "__DyTech-Graphics__/graphics/entity/train-armored/cargo-wagon-spritesheet-4.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift={0.7, -0.45}
    },
    rail_category = "regular"
  },
  {
    type = "cargo-wagon",
    name = "cargo-wagon-fast",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 8,
    minable = {mining_time = 1, result = "cargo-wagon-fast"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -2.4}, {0.9, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    weight = 1500,
    max_speed = 3.0,
    braking_force = 3,
    friction_force = 0.0015,
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4,
	energy_per_hit_point = 4,
    pictures =
    {
      priority = "very-low",
      frame_width = 285,
      frame_height = 218,
      axially_symmetrical = false,
      back_equals_front = true,
      direction_count = 128,
      filenames =
      {
        "__DyTech-Graphics__/graphics/entity/train-high-speed/cargo-wagon-spritesheet-1.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/cargo-wagon-spritesheet-2.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/cargo-wagon-spritesheet-3.png",
        "__DyTech-Graphics__/graphics/entity/train-high-speed/cargo-wagon-spritesheet-4.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift={0.7, -0.45}
    },
    rail_category = "regular"
  },
  {
    type = "cargo-wagon",
    name = "cargo-wagon-large",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 25,
    minable = {mining_time = 1, result = "cargo-wagon-large"},
    max_health = 300,
    corpse = "medium-remnants",
    collision_box = {{-0.6, -2.4}, {0.9, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    weight = 2500,
    max_speed = 3.0,
    braking_force = 3,
    friction_force = 0.0015,
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4,
	energy_per_hit_point = 9,
    pictures =
    {
      priority = "very-low",
      frame_width = 285,
      frame_height = 218,
      axially_symmetrical = false,
      back_equals_front = true,
      direction_count = 128,
      filenames =
      {
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-2.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-3.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-4.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift={0.7, -0.45}
    },
    rail_category = "regular"
  },
}
)