data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-wire-1",
    icon = "__base__/graphics/icons/copper-cable.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=0.4},
	  {type="item", name="mold-wire", amount=1},
    },
    results = 
	{
	  {type="item", name="copper-cable", amount=1},
	  {type="item", name="mold-wire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-2",
    icon = "__base__/graphics/icons/red-wire.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1.2},
	  {type="item", name="mold-wire", amount=1},
    },
    results = 
	{
	  {type="item", name="red-wire", amount=1},
	  {type="item", name="mold-wire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-3",
    icon = "__base__/graphics/icons/green-wire.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1.2},
	  {type="item", name="mold-wire", amount=1},
    },
    results = 
	{
	  {type="item", name="green-wire", amount=1},
	  {type="item", name="mold-wire", amount=1},
	}
  },
}
)