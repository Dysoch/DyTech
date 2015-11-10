require "prototypes.override-functions"

RemoveFromRecipe("advanced-oil-processing", "water")
RemoveFromRecipe("heavy-oil-cracking", "water")
RemoveFromRecipe("light-oil-cracking", "water")
RemoveFromRecipe("sulfuric-acid", "water")
RemoveFromRecipe("sulfur", "water")
RemoveFromRecipe("concrete", "water")
RemoveFromRecipe("explosives", "water")
table.insert(data.raw["recipe"]["advanced-oil-processing"].ingredients,{type="fluid", name="clean-water", amount=5})
table.insert(data.raw["recipe"]["heavy-oil-cracking"].ingredients,{type="fluid", name="clean-water", amount=3})
table.insert(data.raw["recipe"]["light-oil-cracking"].ingredients,{type="fluid", name="clean-water", amount=3})
table.insert(data.raw["recipe"]["sulfuric-acid"].ingredients,{type="fluid", name="clean-water", amount=10})
table.insert(data.raw["recipe"]["sulfur"].ingredients,{type="fluid", name="clean-water", amount=3})
table.insert(data.raw["recipe"]["concrete"].ingredients,{type="fluid", name="clean-water", amount=10})
table.insert(data.raw["recipe"]["explosives"].ingredients,{type="fluid", name="clean-water", amount=1})

data:extend(
{ 
  {
    type = "recipe",
    name = "dirty-water-sand",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=10},
    },
    results = 
	{
	  {type="fluid", name="clean-water", amount=9},
	  {type="item", name="sand", amount=1},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-stone",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=50},
    },
    results = 
	{
	  {type="fluid", name="clean-water", amount=45},
	  {type="item", name="stone", amount=1},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-stone-sand-random",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=100},
    },
    results = 
	{
	  {type="fluid", name="clean-water", amount=80},
      {type="item", name="stone", amount_min=1, amount_max=4, probability=0.4},
      {type="item", name="sand", amount_min=1, amount_max=15, probability=0.8},
      {type="item", name="gold-ore", amount_min=1, amount_max=1, probability=0.01},
      {type="item", name="iron-ore", amount_min=1, amount_max=1, probability=0.025},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-to-water",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=50},
    },
    results = 
	{
	  {type="fluid", name="clean-water", amount=40},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-to-water-2",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=500},
    },
    results = 
	{
	  {type="fluid", name="clean-water", amount=460},
	}
  },
}
)