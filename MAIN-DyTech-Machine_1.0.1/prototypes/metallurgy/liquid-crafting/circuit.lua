data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-circuit-1",
    icon = "__base__/graphics/icons/electronic-circuit.png",
	category = "forge",
    energy_required = 0.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1},
	  {type="item", name="mold-wire", amount=1},
    },
    results = 
	{
	  {type="item", name="electronic-circuit", amount=1},
	  {type="item", name="mold-wire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-2",
    icon = "__base__/graphics/icons/advanced-circuit.png",
	category = "forge",
    energy_required = 2,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.4},
	  {type="fluid", name="molten-copper", amount=1.8},
	  {type="item", name="plastic-bar", amount=1},
	  {type="item", name="mold-wire", amount=1},
    },
    results = 
	{
	  {type="item", name="advanced-circuit", amount=1},
	  {type="item", name="mold-wire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-3",
    icon = "__base__/graphics/icons/processing-unit.png",
	category = "forge",
    energy_required = 6,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=15},
	  {type="fluid", name="molten-copper", amount=20},
	  {type="item", name="plastic-bar", amount=2},
      {type="fluid", name="sulfuric-acid", amount=0.1},
	  {type="item", name="mold-wire", amount=1},
    },
    results = 
	{
	  {type="item", name="processing-unit", amount=1},
	  {type="item", name="mold-wire", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-4",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/advanced-processing-unit.png",
	category = "forge",
    energy_required = 12,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=37.5},
	  {type="fluid", name="molten-copper", amount=50},
	  {type="item", name="plastic-bar", amount=8},
      {type="fluid", name="sulfuric-acid", amount=0.4},
	  {type="item", name="mold-wire", amount=1},
    },
    results = 
	{
	  {type="item", name="advanced-processing-unit", amount=1},
	  {type="item", name="mold-wire", amount=1},
	}
  },
}
)