require "prototypes.functions"

function DyTech_Create_Venting_Recipe(NAME)
  local result =
  {
    type = "recipe",
    name = "hematite-processing",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "venting",
    subgroup = "dytech-metallurgy-fluids-venting-recipes",
    enabled = true,
	hidden = false,
    ingredients =
    {
	  {type="fluid", name="lava", amount=1},
    },
    results = 
    {
	  {type="fluid", name="lava", amount=0},
    },
  }
  result.name = NAME .. "-venting"
  result.order = NAME
  result.ingredients[1].name = NAME
  result.results[1].name = NAME
  result.icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/"..NAME..".png"
  return result
end

for index,name in pairs(CHEMICALS) do
	if data.raw.fluid[name] then
	  data:extend(
		{
		  DyTech_Create_Venting_Recipe(name)
		})
	end
end