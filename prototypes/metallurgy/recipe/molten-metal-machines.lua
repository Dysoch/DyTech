data:extend(
{
  {
   	type = "recipe",
   	name = "blast-furnace",
	energy_required= 60,
    enabled= false,
	ingredients= 
	{ 
	  {"advanced-circuit", 10}, 
	  {"steel-plate", 50}, 
	  {"copper-plate", 100}, 
	  {"iron-plate", 100},
	  {"copper-cable", 10}
	},
   	result= "blast-furnace",
  },
  {
   	type = "recipe",
   	name = "forge",
	energy_required= 60,
    enabled= false,
   	ingredients= 
	{ 
	  {"steel-plate", 100}, 
	  {"fast-inserter", 9} 
	},
   	result= "forge",
  },
}
)
