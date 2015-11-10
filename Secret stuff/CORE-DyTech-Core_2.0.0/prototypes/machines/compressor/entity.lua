require "prototypes.internal-config"

data:extend(
{
  {
    type = "assembling-machine",
    name = "compressor",
    icon = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-icon.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "compressor"},
    max_health = Health.Tier4,
    corpse = "big-remnants",
    resistances = Resistances.Tier3,
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-animation.png",
      priority = "high",
      width = 100,
      height = 120,
      frame_count = 13,
      line_length = 13,
      --shift = {0.5, -0.2}
    },
    crafting_categories = {"compressing"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.07 / 7.5
    },
    energy_usage = "5000kW",
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "pollution"}
  },
}
) 