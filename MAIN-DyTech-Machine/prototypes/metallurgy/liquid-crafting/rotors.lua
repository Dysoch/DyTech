require "prototypes.metallurgy.liquid-crafting.functions"

data:extend(
{ 
  {
    type = "item",
    name = "mold-rotor",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-gear.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "rotor",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-rotor",
    enabled = false,
    ingredients =
    {
      {"rotor-1", 1},
	  {"clay", 5},
    },
    result = "mold-rotor"
  },
  {
    type = "recipe",
    name = "mold-crafting-rotor-1",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/rotor1.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "1",
    ingredients =
    {
	  {type="item", name="mold-rotor", amount=0},
	  Stone(16),
	  Iron(9.5),
	  Copper(2),
    },
    results = 
	{
	  {type="item", name="rotor-1", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-rotor-2",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/rotor2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "2",
    ingredients =
    {
	  {type="item", name="mold-rotor", amount=0},
	  Stone((16+18+18)),
	  Iron(35.5),
	  Copper(2),
	  Steel(6),
    },
    results = 
	{
	  {type="item", name="rotor-2", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-rotor-3",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/rotor3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "3",
    ingredients =
    {
	  {type="item", name="mold-rotor", amount=0},
	  Stone((16+36+36)),
	  Iron(53.5),
	  Copper(2),
	  Steel(10),
	  Lead(24),
    },
    results = 
	{
	  {type="item", name="rotor-3", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-rotor-4",
    icon = "__CORE-DyTech-Core__/graphics/machine-intermediates/rotor4.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-dytech-intermediates",
    order = "4",
    ingredients =
    {
	  {type="item", name="mold-rotor", amount=0},
	  Stone((16+90+90)),
	  Iron(118),
	  Copper(27),
	  Steel(10),
	  Lead(72),
    },
    results = 
	{
	  {type="item", name="rotor-4", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-rotor",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-rotor"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-rotor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-rotor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-rotor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-rotor-4"
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
    order = "molds-rotor",
  },
}
)