data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-gear-1",
    icon = "__base__/graphics/icons/iron-gear-wheel.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.2},
	  {type="item", name="mold-gear", amount=1},
    },
    results = 
	{
	  {type="item", name="iron-gear-wheel", amount=1},
	  {type="item", name="mold-gear", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-2",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/steel-gear-wheel.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-carbonated-iron", amount=1.5},
	  {type="item", name="mold-gear", amount=1},
    },
    results = 
	{
	  {type="item", name="steel-gear-wheel", amount=1},
	  {type="item", name="mold-gear", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-3",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/tungsten-gear-wheel.png",
	category = "forge",
    energy_required = 0.75,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-tungsten", amount=1},
	  {type="item", name="mold-gear", amount=1},
    },
    results = 
	{
	  {type="item", name="tungsten-gear-wheel", amount=1},
	  {type="item", name="mold-gear", amount=1},
	}
  },
}
)