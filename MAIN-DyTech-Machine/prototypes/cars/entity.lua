require "prototypes.internal-config"

data:extend(
{
  {
    type = "car",
    name = "car2",
    icon = "__MAIN-DyTech-Machine__/graphics/cars/car2.png",
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "car2"},
    max_health = Health.Tier5,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    resistances = Resistances.Tier4,
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    effectivity = 0.1,
    braking_power = "300kW",
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
    consumption = "600kW",
    friction = 0.04,
    energy_per_hit_point = 3,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
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
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6
      }
    },
    animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/cars/car-sheet.png",
      line_length = 8,
      width = 130,
      height = 93,
      frame_count = 1,
      shift={0.5, 0},
      axially_symmetrical = false,
      direction_count = 64
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    crash_trigger = crash_trigger(),
    sound_minimum_speed = 0.2;
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.010,
    weight = 1500,
    inventory_size = 50
  },
}
)