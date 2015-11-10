require "prototypes.entities"
require "prototypes.help-functions"

function DyTech_Create_Pipes_Entity(NAME, HEALTH, LIQUID, TINT)
  local result =
  {
    type = "pipe",
    name = "pipe",
    icon = "__base__/graphics/icons/pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = DyTech_Pipe_Pictures(TINT),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}}
  }
  result.name = NAME .. "-pipe"
  result.minable.result = NAME .. "-pipe"
  result.max_health = HEALTH
  result.fluid_box.base_area = LIQUID/10
  result.pictures = DyTech_Pipe_Pictures(TINT)
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/pipe.png"
  return result
end

function DyTech_Create_Pipes_Item(INDEX, NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__base__/graphics/icons/pipe.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-metallurgy-pipes",
    order = "iron-pig",
    place_result = "pipe",
    stack_size = 50
  }
  result.name = NAME .. "-pipe"
  result.place_result = NAME .. "-pipe"
  result.order = INDEX .. NAME .. "-pipe"
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/pipe.png"
  return result
end

function DyTech_Create_Pipes_Recipe(INDEX, NAME, ENABLED)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
    subgroup = "dytech-metallurgy-pipes",
    enabled = true,
    ingredients =
    {
	  {type="item", name="hematite-ore", amount=1}
    },
    result = "stone-brick"
  }
  result.name = NAME .. "-pipe"
  result.order = INDEX .. NAME .. "-pipe"
  result.ingredients[1].name = NAME 
  result.result = NAME .. "-pipe"
  result.enabled = ENABLED
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/pipe.png"
  return result
end

for index,name in pairs(PIPES_WALLS_GATES_AMMO) do
	if name.Pipes then
	  data:extend(
		{
		  DyTech_Create_Pipes_Entity(name.Name, name.Health, name.Liquid, name.Tint),
		  DyTech_Create_Pipes_Item(name.Order, name.Name),
		  DyTech_Create_Pipes_Recipe(name.Order ,name.Name, name.Enabled),
		})
	end
end

data.raw.item["pipe"].order = "103-iron-plate-pipe"
data.raw.item["pipe"].subgroup = "dytech-metallurgy-pipes"