require "prototypes.entities"
require "prototypes.help-functions"

function DyTech_Create_Ammo_Item(INDEX, NAME, DMG, SIZE)
  local result =
  {
    type = "ammo",
    name = "basic-bullet-magazine",
    icon = "__base__/graphics/icons/basic-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                {
                  type = "damage",
                  damage = { amount = DMG/10 , type = "physical"}
                }
              }
            }
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "dytech-metallurgy-ammo",
    order = "a[basic-clips]-a[basic-bullet-magazine]",
    stack_size = 100
  }
  result.name = NAME .. "-ammo"
  result.order = INDEX .. NAME .. "-ammo"
  result.magazine_size = SIZE
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/basic-bullet-magazine.png"
  return result
end

function DyTech_Create_Ammo_Recipe(INDEX, NAME, ENABLED)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
    subgroup = "dytech-metallurgy-ammo",
    enabled = true,
    ingredients =
    {
	  {type="item", name="hematite-ore", amount=1},
    },
    result = "stone-brick"
  }
  result.name = NAME .. "-ammo"
  result.order = INDEX .. NAME .. "-ammo"
  result.ingredients[1].name = NAME 
  result.result = NAME .. "-ammo"
  result.enabled = ENABLED
  --result.icon = "__MAIN-DyTech-Metallurgy__/graphics/pipes/" .. NAME .. "-pipe.png"
  result.icon = "__base__/graphics/icons/basic-bullet-magazine.png"
  return result
end

for index,name in pairs(PIPES_WALLS_GATES_AMMO) do
	if name.Ammo then
	  data:extend(
		{
		  DyTech_Create_Ammo_Item(name.Order, name.Name, name.Health, name.Range),
		  DyTech_Create_Ammo_Recipe(name.Order ,name.Name, name.Enabled),
		})
	end
end