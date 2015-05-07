data:extend(
{ 
  {
    type = "item",
    name = "mold-machine",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-circuit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "machine",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-machine",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"assembling-machine-2", 1}
    },
    result = "mold-machine"
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-1",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=16.5},
	  {type="fluid", name="molten-copper", amount=3.375},
	  {type="item", name="mold-machine", amount=1},
    },
    results = 
	{
	  {type="item", name="assembling-machine-1", amount=1},
	  {type="item", name="mold-machine", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-2",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=34.5},
	  {type="fluid", name="molten-copper", amount=8.625},
	  {type="item", name="mold-machine", amount=1},
    },
    results = 
	{
	  {type="item", name="assembling-machine-2", amount=1},
	  {type="item", name="mold-machine", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-machine-3",
    icon = "__base__/graphics/icons/assembling-machine-3.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-machines",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=103.5},
	  {type="fluid", name="molten-copper", amount=60.375},
	  {type="item", name="mold-machine", amount=1},
    },
    results = 
	{
	  {type="item", name="assembling-machine-3", amount=1},
	  {type="item", name="mold-machine", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-machine",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-machine"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-machine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-machine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-machine-3"
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
    order = "molds-machine",
  },
}
)