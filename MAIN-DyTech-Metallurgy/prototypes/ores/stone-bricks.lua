require "prototypes.functions"

function DyTech_Create_Stone_Brick_Recipes(NAME, AMOUNT)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "smelting",
    subgroup = "dytech-metallurgy-ores-stone-brick",
    enabled = true,
    ingredients =
    {
	  {type="item", name="hematite-ore", amount=2}
    },
    result = "stone-brick"
  }
  result.name = NAME .. "-stone-bricks"
  result.order = NAME
  result.ingredients[1].name = NAME .. "-ore" 
  result.ingredients[1].amount = math.floor(AMOUNT*1.5)
  result.category = CATEGORY
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/resource/" .. NAME .. "-ore.png"
  return result
end

for index,name in pairs(RESOURCES) do
	if name.Processing then
	  data:extend(
		{
		  DyTech_Create_Stone_Brick_Recipes(name.Name, name.Amount_Needed)
		})
	end
end