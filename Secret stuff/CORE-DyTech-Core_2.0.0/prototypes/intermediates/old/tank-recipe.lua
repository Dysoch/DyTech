data:extend(
{ 
  {
    type = "recipe",
    name = "track",
    energy_required = 3.5,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="iron-gear-wheel", amount=8},
	  {type="item", name="track-chain-link", amount=50},
	},
    results = 
	{
	  {type="item", name="track", amount=1},
	},
  },
  {
    type = "recipe",
    name = "track-chain-link",
    energy_required = 3.5,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="iron-plate", amount=2},
	},
    results = 
	{
	  {type="item", name="track-chain-link", amount=5},
	},
  },
  {
    type = "recipe",
    name = "hull-lower",
    energy_required = 3.5,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="iron-plate", amount=15},
	  {type="item", name="steel-plate", amount=5},
	  {type="item", name="copper-cable", amount=10},
	  {type="item", name="engine-unit", amount=5},
	  {type="item", name="electronic-circuit", amount=5},
	},
    results = 
	{
	  {type="item", name="hull-lower", amount=1},
	},
  },
  {
    type = "recipe",
    name = "hull-top",
    energy_required = 3.5,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="steel-plate", amount=10},
	  {type="item", name="copper-plate", amount=2},
	  {type="item", name="tank-barrel", amount=2},
	},
    results = 
	{
	  {type="item", name="hull-top", amount=1},
	},
  },
  {
    type = "recipe",
    name = "tank-barrel",
    energy_required = 3.5,
    enabled = false,
    ingredients = 
	{
	  {type="item", name="steel-plate", amount=10},
	},
    results = 
	{
	  {type="item", name="tank-barrel", amount=1},
	},
  },
}
)