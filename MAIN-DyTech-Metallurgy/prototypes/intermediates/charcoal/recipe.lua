data:extend(
{
  {
    type = "recipe",
    name = "charcoal-1",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
	enabled = true,
	category = "smelting",
    energy_required = 2,
    subgroup = "dytech-metallurgy-intermediates",
    ingredients =
    {
      {type="item", name="raw-wood", amount=5},
    },
    results = 
	{
      {type="item", name="charcoal", amount=1},
    },
  },
  {
    type = "recipe",
    name = "charcoal-2",
	icon = "__MAIN-DyTech-Metallurgy__/graphics/metals/iron/pig.png",
	enabled = true,
	category = "crafting-with-fluid",
    energy_required = 2,
    subgroup = "dytech-metallurgy-intermediates",
    ingredients =
    {
      {type="item", name="raw-wood", amount=1},
      {type="fluid", name="carbon-monoxide", amount=0.75},
    },
    results = 
	{
      {type="item", name="charcoal", amount=1},
    },
  },
}
)
