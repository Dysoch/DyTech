data:extend(
{
  {
    type = "lab",
    name = "lab-1",
    icon = "__base__/graphics/icons/lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lab-1"},
    max_health = 150,
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	light = {intensity = 0.75, size = 12},
    on_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      frame_width = 113,
      frame_height = 91,
      frame_count = 33,
      line_length = 11,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      frame_width = 113,
      frame_height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "180kW",
    inputs =
    {
      "science-pack-1",
      "science-pack-2",
      "science-pack-3",
      "alien-science-pack"
    },
    module_slots = 5
  },
  { 
    type = "lab",
    name = "dytech-lab",
    icon = "__DyTech-Graphics__/graphics/icons/dytech-lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "dytech-lab"},
    max_health = 150,
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	light = {intensity = 0.50, size = 6},
    on_animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/dytech-lab/dytech-lab.png",
      frame_width = 113,
      frame_height = 91,
      frame_count = 33,
      line_length = 11,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/dytech-lab/dytech-lab.png",
      frame_width = 113,
      frame_height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "250kW",
    inputs =
    {
      "iron-plate-1",
      "copper-plate-1",
      "steel-plate-1",
      "rubber",
	  "sandbag",
	  "stone"
    },
    module_slots = 5
  },
}
)