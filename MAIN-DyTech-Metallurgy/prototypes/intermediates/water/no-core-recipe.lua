data:extend(
{ 
  {
    type = "recipe",
    name = "water-electrolys",
    icon = "__MAIN-DyTech-Metallurgy__/graphics/chemicals/water.png",
	category = "electrolys",
    subgroup = "dytech-metallurgy-fluids-recipes",
    enabled = true,
    ingredients =
    {
	  {type="fluid", name="water", amount=1},
    },
    results = 
	{
	  {type="fluid", name="oxygen", amount=1},
	  {type="fluid", name="hydrogen", amount=2},
	}
  },
}
)