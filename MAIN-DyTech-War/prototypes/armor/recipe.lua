data:extend(
{ 
  {
    type = "recipe",
    name = "power-armor-mk3",
	enabled = false,
    energy_required = 50,
    ingredients = 
	{
	  {"effectivity-module-3", 36},
	  {"power-armor-mk2", 2},
	  {"speed-module-3", 30},
	  {"cobalt-plate", 80},
	  {"tungsten-plate", 80},
	  {"ardite-plate", 80},
	  {"alien-artifact", 150},
	  {"chitin", 150},
	},
    result = "power-armor-mk3"
  },
  {
    type = "recipe",
    name = "power-armor-mk4",
	enabled = false,
    energy_required = 75,
    ingredients = 
	{
	  {"power-armor-mk3", 1},
	  {"alien-artifact", 200},
	  {"chitin", 200},
	},
    result = "power-armor-mk4"
  },
  {
    type = "recipe",
    name = "power-armor-mk5",
	enabled = false,
    energy_required = 100,
    ingredients = 
	{
	  {"power-armor-mk4", 1},
	  {"alien-artifact", 250},
	  {"chitin", 250},
	},
    result = "power-armor-mk5"
  },
  {
    type = "recipe",
    name = "power-armor-mk6",
	enabled = false,
    energy_required = 125,
    ingredients = 
	{
	  {"power-armor-mk5", 1},
	  {"alien-artifact", 300},
	  {"chitin", 300},
	},
    result = "power-armor-mk6"
  },
  {
    type = "recipe",
    name = "power-armor-mk7",
	enabled = false,
    energy_required = 150,
    ingredients = 
	{
	  {"power-armor-mk6", 1},
	  {"alien-artifact", 350},
	  {"chitin", 350},
	},
    result = "power-armor-mk7"
  },
}
)