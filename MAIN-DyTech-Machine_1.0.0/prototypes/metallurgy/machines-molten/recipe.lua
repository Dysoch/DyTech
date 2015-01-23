data:extend(
{
  {
   	type = "recipe",
   	name = "blast-furnace",
	energy_required = 60,
    enabled = false,
    subgroup = "metallurgy-machines",
	ingredients = 
	{ 
	  {"advanced-circuit", 10}, 
	  {"steel-plate", 10}, 
	  {"copper-plate", 25}, 
	  {"iron-plate", 25},
	  {"tin-plate", 150},
	  {"zinc-plate", 50},
	  {"gold-plate", 50},
	  {"silver-plate", 50},
	},
   	result = "blast-furnace",
  },
  {
   	type = "recipe",
   	name = "forge",
	energy_required = 60,
    enabled = false,
    subgroup = "metallurgy-machines",
   	ingredients = 
	{ 
	  {"steel-plate", 25},
	  {"tin-plate", 25},
	  {"electronic-circuit", 25}, 
	  {"steel-gear-wheel", 9},
	  --{"water-barrel", 1},
	},
   	result = "forge",
  },
}
)
