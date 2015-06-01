require "prototypes.functions.walls"
require "prototypes.internal-config"

ObsidianWalls = {r=0.184, g=0.310, b=0.310, a=0.9}
CopperWalls = {r=0.980, g=0.502, b=0.447, a=0.9}
IronWalls = {r=0.753, g=0.753, b=0.753, a=0.9}
SteelWalls = {r=0.961, g=0.961, b=0.961, a=0.9}
BrickWalls = {r=0.627, g=0.322, b=0.176, a=0.9}

data:extend(
{
  {
    type = "wall",
    name = "obsidian-wall",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/obsidian-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "obsidian-wall"},
    max_health = Health.Tier9,
    resistances = Resistances.Tier10,
    repair_speed_modifier = 2,
    corpse = "obsidian-wall-remnants",
	fast_replaceable_group = "wall",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(ObsidianWalls)
  },
  {
    type = "corpse",
    name = "obsidian-wall-remnants",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/obsidian-wall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(ObsidianWalls)
  },
  {
    type = "wall",
    name = "copper-wall",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/copper-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "copper-wall"},
    max_health = Health.Tier3,
    resistances = Resistances.Tier3,
    repair_speed_modifier = 2,
    corpse = "copper-wall-remnants",
	fast_replaceable_group = "wall",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(CopperWalls)
  },
  {
    type = "corpse",
    name = "copper-wall-remnants",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/copper-wall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(CopperWalls)
  },
  {
    type = "wall",
    name = "iron-wall",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/iron-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "iron-wall"},
    max_health = Health.Tier4,
    resistances = Resistances.Tier4,
    repair_speed_modifier = 2,
    corpse = "iron-wall-remnants",
	fast_replaceable_group = "wall",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(IronWalls)
  },
  {
    type = "corpse",
    name = "iron-wall-remnants",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/iron-wall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(IronWalls)
  },
  {
    type = "wall",
    name = "steel-wall",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/steel-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "steel-wall"},
    max_health = Health.Tier5,
    resistances = Resistances.Tier7,
    repair_speed_modifier = 2,
    corpse = "steel-wall-remnants",
	fast_replaceable_group = "wall",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(SteelWalls)
  },
  {
    type = "corpse",
    name = "steel-wall-remnants",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/steel-wall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(SteelWalls)
  },
  {
    type = "wall",
    name = "brick-wall",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/brick-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "brick-wall"},
    max_health = Health.Tier6,
    resistances = Resistances.Tier6,
    repair_speed_modifier = 2,
    corpse = "brick-wall-remnants",
	fast_replaceable_group = "wall",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(BrickWalls)
  },
  {
    type = "corpse",
    name = "brick-wall-remnants",
    icon = "__MAIN-DyTech-Machine__/graphics/walls/brick-wall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(BrickWalls)
  },
}
)