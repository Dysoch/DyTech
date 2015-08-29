data:extend(
{ 
  {
    type = "item",
    name = "mold-gear",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-gear.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "gear",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-gear",
    enabled = false,
    ingredients =
    {
      {"iron-gear-wheel", 1},
	  {"clay", 5},
    },
    result = "mold-gear"
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-1",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/stone-gear-wheel.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "1",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="stone-gear-wheel", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-2",
    icon = "__base__/graphics/icons/iron-gear-wheel.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "2",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.2},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="iron-gear-wheel", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-3",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/steel-gear-wheel.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "3",
    ingredients =
    {
	  {type="fluid", name="molten-carbonated-iron", amount=1.5},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="steel-gear-wheel", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-4",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/tungsten-gear-wheel.png",
	category = "forge",
    energy_required = 0.75,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "4",
    ingredients =
    {
	  {type="fluid", name="molten-tungsten", amount=1},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="tungsten-gear-wheel", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-5",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/lead-gear-wheel.png",
	category = "forge",
    energy_required = 0.75,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "5",
    ingredients =
    {
	  {type="fluid", name="molten-lead", amount=1},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="lead-gear-wheel", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-6",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/cobalt-gear-wheel.png",
	category = "forge",
    energy_required = 0.75,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "6",
    ingredients =
    {
	  {type="fluid", name="molten-cobalt", amount=1},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="cobalt-gear-wheel", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-7",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/tin-gear-wheel.png",
	category = "forge",
    energy_required = 0.75,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "7",
    ingredients =
    {
	  {type="fluid", name="molten-tin", amount=1},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="tin-gear-wheel", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-8",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/zinc-gear-wheel.png",
	category = "forge",
    energy_required = 0.75,
    enabled = false,
    subgroup = "liquid-crafting-gears",
    order = "8",
    ingredients =
    {
	  {type="fluid", name="molten-zinc", amount=1},
	  {type="item", name="mold-gear", amount=0},
    },
    results = 
	{
	  {type="item", name="zinc-gear-wheel", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-gear",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-4"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-5"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-6"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-7"
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