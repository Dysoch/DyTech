require "prototypes.functions"

function DyTech_Create_Raw_Ore_Recipe(INDEX, NAME, RESULT, AMOUNT)
  local result =
  {
    type = "recipe",
    name = "water-electrolys",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "smelting",
    subgroup = "dytech-metallurgy-raw-ores-smelting",
    enabled = true,
    ingredients =
    {
	  {name="something?", amount=1},
    },
    result = "ireallydontcare!"
  }
  result.name = "raw-ore-smelting-"..INDEX
  result.order = NAME .. "-ore"
  result.result = RESULT
  result.ingredients[1].name = NAME .. "-ore"
  result.ingredients[1].amount = AMOUNT
  result.icon = "__base__/graphics/icons/"..RESULT..".png"
  return result
end

for index,name in pairs(RESOURCES) do
data:extend(
  {
	DyTech_Create_Raw_Ore_Recipe(index, name.Name, name.Result, name.Amount_Needed)
  })
end