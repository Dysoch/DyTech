require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "item",
    name = "mold-blade",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-gear.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "blade",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-blade",
    enabled = false,
    ingredients =
    {
      {"blade-1", 1},
	  {"clay", 5},
    },
    result = "mold-blade"
  },
  {
    type = "recipe",
    name = "mold-crafting-blade-1",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/blade1.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "1",
    ingredients =
    {
	  {type="item", name="mold-blade", amount=0},
	  Stone(4),
	  Iron(0.5),
    },
    results = 
	{
	  {type="item", name="blade-1", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-blade-2",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/blade2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "2",
    ingredients =
    {
	  {type="item", name="mold-blade", amount=0},
	  Stone(12),
	  Iron(6),
    },
    results = 
	{
	  {type="item", name="blade-2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-blade-3",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/blade3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "3",
    ingredients =
    {
	  {type="item", name="mold-blade", amount=0},
	  Stone(12),
	  Iron(6),
	  Lead(4),
    },
    results = 
	{
	  {type="item", name="blade-3", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-blade",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-blade"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-blade-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-blade-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-blade-3"
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
    order = "molds-gear",
  },
}
)