require "prototypes.internal-config"

data:extend(
{ 
  {
    type = "assembling-machine",
    name = "electrolyser",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "electrolyser"},
    max_health = Health.Tier5,
    resistances = Resistances.Tier5,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 250,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ type="output", position = {-2, 1} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ type="output", position = {-2, -1} }}
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
      priority="high",
      width = 99,
      height = 102,
      frame_count = 32,
      line_length = 8,
      shift = {0.25, -0.1}
    },
    crafting_categories = {"electrolys"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.035 / 3.5
    },
    energy_usage = "250kW",
    ingredient_count = 10,
    module_specification =
    {
      module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
}
)