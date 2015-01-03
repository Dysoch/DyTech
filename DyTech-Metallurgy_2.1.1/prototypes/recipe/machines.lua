data:extend(
{
  {
   	type = "recipe",
   	name = "centrifuge",
	energy_required = 10,
    enabled = false,
	ingredients = 
	{ 
	  {"iron-plate", 25},
	  {"steel-plate", 10},
	  {"iron-gear-wheel", 25},
	  {"copper-cable", 10}
	},
   	result = "centrifuge",
  },
  {
   	type = "recipe",
   	name = "centrifuge-mk2",
	energy_required = 10,
    enabled = false,
	ingredients = 
	{ 
	  {"centrifuge", 1},
	  {"steel-plate", 10},
	  {"steel-gear-wheel", 25},
	},
   	result = "centrifuge-mk2",
  },
  {
   	type = "recipe",
   	name = "centrifuge-mk3",
	energy_required = 10,
    enabled = false,
	ingredients = 
	{ 
	  {"centrifuge-mk2", 1},
	  {"lead-plate", 10},
	  {"tungsten-gear-wheel", 25},
	},
   	result = "centrifuge-mk3",
  },
  {
   	type = "recipe",
   	name = "centrifuge-mk4",
	energy_required = 10,
    enabled = false,
	ingredients = 
	{ 
	  {"centrifuge-mk3", 1},
	  {"tungsten-plate", 10},
	  {"brass-gear-wheel", 25},
	},
   	result = "centrifuge-mk4",
  },
  {
   	type = "recipe",
   	name = "centrifuge-mk5",
	energy_required = 10,
    enabled = false,
	ingredients = 
	{ 
	  {"centrifuge-mk4", 1},
	  {"copper-tungsten-alloy", 10},
	  {"copper-tungsten-gear-wheel", 25},
	},
   	result = "centrifuge-mk5",
  },
}
)
