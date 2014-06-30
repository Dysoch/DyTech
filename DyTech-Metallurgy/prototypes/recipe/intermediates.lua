data:extend(
{ 
  {
    type = "recipe",
    name = "clay",
	category = "crafting-with-fluid",
    subgroup = "metallurgy-intermediates",
    energy_required = 2,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=1},
	  {type="item", name="sand", amount=4},
    },
    results = 
    {
      {type="item", name="clay", amount=1}
    },
  },
  {
    type = "recipe",
    name = "coal-splitting",
	category = "centrifuge",
    icon = "__DyTech-Metallurgy__/graphics/icons/carbon.png",
    subgroup = "metallurgy-intermediates",
    energy_required = 4,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=0.2},
	  {type="fluid", name="lava-2000", amount=0.2},
	  {type="item", name="coal", amount=1},
    },
    results = 
	{
	  {type="item", name="carbon", amount=7},
	  {type="item", name="sulfur", amount=2},
	  {type="fluid", name="liquid-air", amount=1},
	}
  },
  {
    type = "recipe",
    name = "metallurgy-liquid-air",
	category = "air-collection",
	enabled = false,
    ingredients = {},
    results = 
	{
	  {type="fluid", name="liquid-air", amount=1}
	}
  },
}
)