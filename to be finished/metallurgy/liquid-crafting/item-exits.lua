require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "item",
    name = "mold-exit",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-gear.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "exit",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-exit",
    enabled = false,
    ingredients =
    {
      {"item-exit-1", 1},
	  {"clay", 5},
    },
    result = "mold-exit"
  },
  {
    type = "recipe",
    name = "mold-crafting-exit-1",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/item-exit1.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "1",
    ingredients =
    {
	  {type="item", name="mold-exit", amount=0},
	  Iron(12),
    },
    results = 
	{
	  {type="item", name="item-exit-1", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-exit-2",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/item-exit2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "2",
    ingredients =
    {
	  {type="item", name="mold-exit", amount=0},
	  Iron(20),
	  Steel(12),
    },
    results = 
	{
	  {type="item", name="item-exit-2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-exit-3",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/item-exit3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "3",
    ingredients =
    {
	  {type="item", name="mold-exit", amount=0},
	  Iron(26.7),
	  Copper(13.3),
	  Steel(20),
	  Zinc(18.3),
    },
    results = 
	{
	  {type="item", name="item-exit-3", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-exit-4",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/item-exit4.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "4",
    ingredients =
    {
	  {type="item", name="mold-exit", amount=0},
	  Iron(58.3),
	  Copper(61.7),
	  Steel(28),
	  Zinc(31.7),
    },
    results = 
	{
	  {type="item", name="item-exit-4", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-exit",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-exit"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-exit-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-exit-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-exit-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-exit-4"
      },
    },
    prerequisites = {"lava-04", "water-cleaning"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "molds-exit",
  },
}
)