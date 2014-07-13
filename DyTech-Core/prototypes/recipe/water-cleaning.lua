data:extend(
{ 
  {
    type = "recipe",
    name = "dirty-water-sand",
    icon = "__DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "crafting-with-fluid",
    subgroup = "metallurgy-intermediates",
    ingredients =
    {
	  {type="fluid", name="dirty-water", amount=2},
    },
    results = 
	{
	  {type="fluid", name="water", amount=2},
	  {type="item", name="sand", amount=1},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-stone",
    icon = "__DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "crafting-with-fluid",
    subgroup = "metallurgy-intermediates",
    ingredients =
    {
	  {type="fluid", name="dirty-water", amount=5},
    },
    results = 
	{
	  {type="fluid", name="water", amount=5},
	  {type="item", name="stone", amount=1},
	}
  },
}
)