require "prototypes.intermediates.intermediates"

function DyTech_Core_Create_Intermediates_Item(NAME, CATEGORY)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-all",
    order = "iron-pig",
    stack_size = 200
  }
  result.name = NAME
  result.order = NAME
  result.subgroup = "dytech-intermediates-" .. CATEGORY
  result.icon = "__CORE-DyTech-Core__/graphics/intermediates/"..NAME..".png"
  return result
end

function DyTech_Core_Create_Intermediates_Recipe(NAME)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
    enabled = true,
    ingredients =
    {
	  {type="item", name="iron-plate", amount=1},
    },
    result = "stone-brick"
  }
  result.name = NAME 
  result.result = NAME 
  result.icon = "__CORE-DyTech-Core__/graphics/intermediates/"..NAME..".png"
  return result
end

for index,name in pairs(INTERMEDIATES) do
	  data:extend(
		{
		  DyTech_Core_Create_Intermediates_Item(name.Name, name.Subgroup),
		  DyTech_Core_Create_Intermediates_Recipe(name.Name),
		})
	if name.Recipe then
		if data.raw.item["chalcopyrite-ore"] then
			data.raw.recipe[name.Name].ingredients = {}
			for _,v in pairs(name.Recipe_Metallurgy) do
				table.insert(data.raw.recipe[name.Name].ingredients,v)
			end
		else
			data.raw.recipe[name.Name].ingredients = {}
			for _,v in pairs(name.Recipe_Normal) do
				table.insert(data.raw.recipe[name.Name].ingredients,v)
			end
		end
	end
end