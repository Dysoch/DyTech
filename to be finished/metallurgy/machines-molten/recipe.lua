data:extend(
{
  {
   	type = "recipe",
   	name = "blast-furnace",
	energy_required = 15,
    enabled = false,
    subgroup = "metallurgy-machines",
	ingredients = 
	{ 
	  {"electronic-circuit", 30}, 
	  {"steel-plate", 10}, 
	  {"copper-plate", 25}, 
	  {"iron-plate", 25},
	  {"zinc-plate", 50},
	},
   	result = "blast-furnace",
  },
  {
   	type = "recipe",
   	name = "forge",
	energy_required = 15,
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
  {
   	type = "recipe",
   	name = "blast-furnace-1",
	energy_required = 30,
    enabled = false,
    subgroup = "metallurgy-machines",
	ingredients = 
	{ 
	  {"blast-furnace", 1}, 
	  {"processing-unit", 25}, 
	  {"zinc-plate", 50},
	  {"tin-plate", 50},
	},
   	result = "blast-furnace-1",
  },
  {
   	type = "recipe",
   	name = "forge-1",
	energy_required = 30,
    enabled = false,
    subgroup = "metallurgy-machines",
   	ingredients = 
	{ 
	  {"forge", 1},
	  {"advanced-circuit", 25}, 
	  {"lead-gear-wheel", 9},
	},
   	result = "forge-1",
  },
  {
   	type = "recipe",
   	name = "blast-furnace-2",
	energy_required = 60,
    enabled = false,
    subgroup = "metallurgy-machines",
	ingredients = 
	{ 
	  {"blast-furnace-1", 1}, 
	  {"advanced-processing-unit", 25}, 
	  {"zinc-plate", 50},
	  {"gold-plate", 50},
	  {"silver-plate", 50},
	},
   	result = "blast-furnace-2",
  },
  {
   	type = "recipe",
   	name = "forge-2",
	energy_required = 60,
    enabled = false,
    subgroup = "metallurgy-machines",
   	ingredients = 
	{ 
	  {"forge-1", 1},
	  {"processing-unit", 25}, 
	  {"tungsten-gear-wheel", 9},
	},
   	result = "forge-2",
  },
}
)
