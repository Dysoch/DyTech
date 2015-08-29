require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "item",
    name = "mold-frame",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-gear.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "frame",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-frame",
    enabled = false,
    ingredients =
    {
      {"frame-1", 1},
	  {"clay", 5},
    },
    result = "mold-frame"
  },
  {
    type = "recipe",
    name = "mold-crafting-frame-1",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/frame1.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "1",
    ingredients =
    {
	  {type="item", name="mold-frame", amount=0},
	  Iron(55),
	  Copper(22.5),
    },
    results = 
	{
	  {type="item", name="frame-1", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-frame-2",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/frame2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "2",
    ingredients =
    {
	  {type="item", name="mold-frame", amount=0},
	  Iron(65),
	  Copper(47.5),
	  Steel(10),
    },
    results = 
	{
	  {type="item", name="frame-2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-frame-3",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/frame3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "3",
    ingredients =
    {
	  {type="item", name="mold-frame", amount=0},
	  Iron(65),
	  Copper(57.5),
	  Steel(10),
	  Lead(25),
    },
    results = 
	{
	  {type="item", name="frame-3", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-frame-4",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/frame4.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "4",
    ingredients =
    {
	  {type="item", name="mold-frame", amount=0},
	  Iron(132),
	  Copper(191),
	  Steel(10),
	  Lead(25),
	  Tungsten(25),
	  Zinc(43.3),
    },
    results = 
	{
	  {type="item", name="frame-4", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-frame",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-frame-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-frame-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-frame-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-frame-4"
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
    order = "molds-frame",
  },
}
)