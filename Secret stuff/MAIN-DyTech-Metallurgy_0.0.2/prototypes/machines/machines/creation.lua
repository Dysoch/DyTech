require "prototypes.internal-config"
require "prototypes.functions"

function DyTech_Create_Machine_Entity(NAME, TINT, CATEGORY)
  local result =
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
        pipe_connections = {{ type="input", position = {2, 1} }}
      },
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 250,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, -1} }}
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
      shift = {0.25, -0.1},
	  tint = TINT
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
    ingredient_count = 50,
    module_specification =
    {
      module_slots = 5
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  }
  result.name = NAME
  result.minable.result = NAME
  result.crafting_categories[1] = CATEGORY
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/assembling-machine-1.png"
  return result
end

function DyTech_Create_Machine_Item(NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__base__/graphics/icons/pipe.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-metallurgy-machines",
    order = "iron-pig",
    place_result = "pipe",
    stack_size = 50
  }
  result.name = NAME
  result.place_result = NAME
  result.order = NAME
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/assembling-machine-1.png"
  return result
end

function DyTech_Create_Machine_Recipe(NAME, ENABLED)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
    subgroup = "dytech-metallurgy-machines",
	order = "1",
    enabled = true,
    ingredients =
    {
	
    },
    result = "stone-brick"
  }
  result.name = NAME
  result.order = NAME
  result.result = NAME
  result.enabled = ENABLED
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/assembling-machine-1.png"
  return result
end

for index,name in pairs(MACHINES) do
	if name.Machine then
	  data:extend(
		{
		  DyTech_Create_Machine_Entity(name.Name, name.Tint, name.Category),
		  DyTech_Create_Machine_Item(name.Name),
		  DyTech_Create_Machine_Recipe(name.Name, name.Enabled),
		})
		for _,v in pairs(name.Recipe) do
			table.insert(data.raw.recipe[name.Name].ingredients,v)
		end
	end
end