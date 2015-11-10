--require "prototypes.intermediates.intermediates"

function DyTech_Machine_Create(ITEM)
	DyTech_Machine_Create_Item(ITEM)
	DyTech_Machine_Create_Recipe(ITEM)
end

function DyTech_Machine_Create_Item(ITEM)
  local result =
  {
    type = "item",
    name = "pig-iron-plate",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-all",
    order = "iron-pig",
	place_result = "assembling-machine-2",
    stack_size = 200
  }
  
  result.name = ITEM.Name
  result.order = ITEM.Order
  result.subgroup = "dytech-"..ITEM.Category
  result.icon = "__MAIN-DyTech-Machine__/graphics/icons-"..ITEM.Category.."/"..ITEM.Name..".png"
  result.flags = ITEM.Flags
  --Figuring out stack_size
  if ITEM.Stack_size == nil then
	result.stack_size = 50
  else
	result.stack_size = ITEM.Stack_size
  end
  return result
end

function DyTech_Machine_Create_Recipe(ITEM)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
    enabled = true,
	energy_required = 1,
    ingredients =
    {
    },
    result = "stone-brick"
  }
  result.name = ITEM.Name 
  result.result = ITEM.Name
  result.energy_required = ITEM.Energy_required
  result.icon = "__MAIN-DyTech-Machine__/graphics/icons"..ITEM.Category.."/"..ITEM.Name..".png"
  CreateRecipe(ITEM.Name, ITEM.Recipe)
  return result
end

function CreateRecipe(ITEM)
	if data.raw.item["chalcopyrite-ore"] then
		for _,v in pairs(ITEM.Recipe.Recipe_Metallurgy) do
			table.insert(data.raw.recipe[ITEM.Name].ingredients,v)
		end
	else
		for _,v in pairs(ITEM.Recipe.Recipe_Normal) do
			table.insert(data.raw.recipe[ITEM.Name].ingredients,v)
		end
	end	
end



for index,name in pairs(INTERMEDIATES) do
	  data:extend(
		{
		  DyTech_Core_Create_Intermediates_Item(name.Name, name.Subgroup),
		})
	if name.Recipe then
	  data:extend(
		{
		  DyTech_Core_Create_Intermediates_Recipe(name.Name),
		})
		if data.raw.item["chalcopyrite-ore"] then
			for _,v in pairs(name.Recipe_Metallurgy) do
				table.insert(data.raw.recipe[name.Name].ingredients,v)
			end
		else
			for _,v in pairs(name.Recipe_Normal) do
				table.insert(data.raw.recipe[name.Name].ingredients,v)
			end
		end
	end
end

--[[data.raw.recipe["track-chain-link"].result_count = 5
data.raw.recipe["sand"].result_count = 5]]