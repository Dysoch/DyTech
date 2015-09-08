require "prototypes.entities"
require "prototypes.help-functions"

function DyTech_Create_Pipes_To_Ground_Entity(NAME, HEALTH, LIQUID, TINT, RANGE)
  local result =
  {
    type = "pipe-to-ground",
    name = "pipe-to-ground",
    icon = "__base__/graphics/icons/pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "pipe-to-ground"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 32,
      height = 32
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      up =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32 --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32 --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42 --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40 --, shift = {0.1, 0.1}
      },
    }
  }
  result.name = NAME .. "-pipe-to-ground"
  result.minable.result = NAME .. "-pipe-to-ground"
  result.max_health = HEALTH
  result.fluid_box.base_area = LIQUID/10
  result.pictures.up.tint = TINT
  result.pictures.down.tint = TINT
  result.pictures.left.tint = TINT
  result.pictures.right.tint = TINT
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/pipe-to-ground.png"
  return result
end

function DyTech_Create_Pipes_To_Ground_Item(INDEX, NAME)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__base__/graphics/icons/pipe.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-metallurgy-pipes-to-ground",
    order = "iron-pig",
    place_result = "pipe",
    stack_size = 50
  }
  result.name = NAME .. "-pipe-to-ground"
  result.place_result = NAME .. "-pipe-to-ground"
  result.order = INDEX .. NAME .. "-pipe-to-ground"
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/pipe-to-ground.png"
  return result
end

function DyTech_Create_Pipes_To_Ground_Recipe(INDEX, NAME, ENABLED)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
    subgroup = "dytech-metallurgy-pipes-to-ground",
    enabled = true,
    ingredients =
    {
	  {type="item", name="hematite-ore", amount=2},
	  {type="item", name="hematite-ore", amount=10},
    },
    result = "stone-brick"
  }
  result.name = NAME .. "-pipe-to-ground"
  result.order = INDEX .. NAME .. "-pipe-to-ground"
  result.ingredients[1].name = NAME 
  result.ingredients[2].name = NAME .. "-pipe"
  result.result = NAME .. "-pipe-to-ground"
  result.enabled = ENABLED
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/pipe-to-ground.png"
  return result
end

for index,name in pairs(PIPES_WALLS_GATES_AMMO) do
	if name.Pipes then
	  data:extend(
		{
		  DyTech_Create_Pipes_To_Ground_Entity(name.Name, name.Health, name.Liquid, name.Tint, name.Range),
		  DyTech_Create_Pipes_To_Ground_Item(name.Order, name.Name),
		  DyTech_Create_Pipes_To_Ground_Recipe(name.Order ,name.Name, name.Enabled),
		})
	end
end

data.raw.item["pipe-to-ground"].order = "103-iron-plate-pipe-to-ground"
data.raw.item["pipe-to-ground"].subgroup = "dytech-metallurgy-pipes-to-ground"