data:extend(
{ 
  {
    type = "recipe",
    name = "capacitor-1",
    energy_required = 3.5,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="iron-plate", amount=2},
	  {type="item", name="copper-cable", amount=5},
	},
    results = 
	{
	  {type="item", name="capacitor-1", amount=1},
	},
  },
  {
    type = "recipe",
    name = "capacitor-2",
    energy_required = 7,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="steel-plate", amount=1},
	  {type="item", name="capacitor-1", amount=1},
	},
    results = 
	{
	  {type="item", name="capacitor-2", amount=1},
	},
  },
  {
    type = "recipe",
    name = "capacitor-3",
    energy_required = 14,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="zinc-plate", amount=1},
	  {type="item", name="capacitor-2", amount=1},
	},
    results = 
	{
	  {type="item", name="capacitor-3", amount=1},
	},
  },
  {
    type = "recipe",
    name = "capacitor-4",
    energy_required = 28,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="gold-plate", amount=2},
	  {type="item", name="capacitor-3", amount=1},
	},
    results = 
	{
	  {type="item", name="capacitor-4", amount=1},
	},
  },
  {
    type = "recipe",
    name = "flux-capacitor-1",
    energy_required = 3.5,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="capacitor-1", amount=1},
	  {type="item", name="iron-plate", amount=6},
	  {type="item", name="copper-cable", amount=15},
	},
    results = 
	{
	  {type="item", name="flux-capacitor-1", amount=1},
	},
  },
  {
    type = "recipe",
    name = "flux-capacitor-2",
    energy_required = 7,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="capacitor-2", amount=1},
	  {type="item", name="flux-capacitor-1", amount=1},
	  {type="item", name="steel-plate", amount=3},
	},
    results = 
	{
	  {type="item", name="flux-capacitor-2", amount=1},
	},
  },
  {
    type = "recipe",
    name = "flux-capacitor-3",
    energy_required = 14,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="capacitor-3", amount=1},
	  {type="item", name="flux-capacitor-2", amount=1},
	  {type="item", name="zinc-plate", amount=3},
	},
    results = 
	{
	  {type="item", name="flux-capacitor-3", amount=1},
	},
  },
  {
    type = "recipe",
    name = "flux-capacitor-4",
    energy_required = 28,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="capacitor-4", amount=1},
	  {type="item", name="flux-capacitor-3", amount=1},
	  {type="item", name="gold-plate", amount=6},
	},
    results = 
	{
	  {type="item", name="flux-capacitor-4", amount=1},
	},
  },
}
)