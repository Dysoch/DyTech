data:extend(
{ 
  {
    type = "recipe",
    name = "boiler-mk2",
	enabled = false,
    ingredients = 
	{
	  {"boiler", 1},
	  {"rotor", 2},
	  {"steel-plate", 10},
	},
    result = "boiler-mk2"
  },
  {
    type = "recipe",
    name = "boiler-mk3",
	enabled = false,
    ingredients = 
	{
	  {"boiler-mk2", 1},
	  {"steel-plate", 2},
	  {"rotor", 2},
	},
    result = "boiler-mk3"
  },
  {
    type = "recipe",
    name = "boiler-mk4",
	enabled = false,
    ingredients = 
	{
	  {"boiler-mk3", 1},
	  {"rotor", 4},
	  {"steel-plate", 10},
	},
    result = "boiler-mk4"
  },
  {
    type = "recipe",
    name = "boiler-mk5",
	enabled = false,
    ingredients = 
	{
	  {"boiler-mk4", 1},
	  {"rotor", 5},
	  {"steel-plate", 100},
	},
    result = "boiler-mk5"
  },
}
)