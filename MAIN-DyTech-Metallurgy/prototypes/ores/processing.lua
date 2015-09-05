require "prototypes.functions"

function DyTech_Create_Raw_Ore_Processing(NAME, CATEGORY)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "centrifuge",
    subgroup = "dytech-metallurgy-raw-ores-processing",
    enabled = true,
    ingredients =
    {

    },
    results =
    {

    }
  }
  result.name = NAME .. "-processing"
  result.order = NAME
  result.category = CATEGORY
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/resource/" .. NAME .. "-ore.png"
  return result
end

for index,name in pairs(RESOURCES) do
	if name.Processing then
	  data:extend(
		{
		  DyTech_Create_Raw_Ore_Processing(name.Name, name.Processing_Category)
		})
		for _,v in pairs(name.Processing_Ingredients) do
			table.insert(data.raw.recipe[name.Name.."-processing"].ingredients,v)
		end
		for _,v in pairs(name.Processing_Results) do
			table.insert(data.raw.recipe[name.Name.."-processing"].results,v)
		end
	end
end