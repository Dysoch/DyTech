require "prototypes.functions"

function DyTech_Create_Alloy_Plates_Recipes(NAME, CATEGORY)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "centrifuge",
    subgroup = "dytech-metallurgy-alloys-recipes",
	order = "1",
    enabled = true,
    ingredients =
    {

    },
    results =
    {

    }
  }
  result.name = NAME .. "-alloy"
  result.order = NAME
  result.category = CATEGORY
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/alloys/"..NAME..".png"
  return result
end

for index,name in pairs(ALLOYS) do
	if name.Recipe then
	  data:extend(
		{
		  DyTech_Create_Alloy_Plates_Recipes(name.Name, name.Recipe_Category)
		})
		for _,v in pairs(name.Recipe_Ingredients) do
			table.insert(data.raw.recipe[name.Name.."-alloy"].ingredients,v)
		end
		for _,v in pairs(name.Recipe_Results) do
			table.insert(data.raw.recipe[name.Name.."-alloy"].results,v)
		end
	end
end