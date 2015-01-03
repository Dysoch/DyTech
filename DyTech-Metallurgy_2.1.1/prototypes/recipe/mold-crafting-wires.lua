data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-wire-1",
	category = "metallurgy-wire",
    energy_required = 0.25,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=0.4},
    },
    results = 
	{
	  {type="item", name="copper-cable", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-2",
	category = "metallurgy-wire",
    energy_required = 0.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1.2},
    },
    results = 
	{
	  {type="item", name="red-wire", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-3",
	category = "metallurgy-wire",
    energy_required = 0.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=0.8},
	  {type="fluid", name="molten-copper", amount=1.2},
    },
    results = 
	{
	  {type="item", name="green-wire", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-wire-4",
	category = "metallurgy-wire",
    energy_required = 1.5,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-copper-tungsten", amount=0.75},
    },
    results = 
	{
	  {type="item", name="copper-cable", amount=5}
	}
  },
}
)