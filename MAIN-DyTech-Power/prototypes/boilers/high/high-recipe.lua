data:extend(
{
  {
    type = "recipe",
    name = "high-boiler-mk1",
	enabled = true,
    ingredients = 
	{
	  {"boiler", 2},
	  {"rotor-1", 5},
	  {"tin-plate", 30},
	},
    result = "high-boiler-mk1"
  },
  {
    type = "recipe",
    name = "high-boiler-mk2",
	enabled = false,
    ingredients = 
	{
	  {"high-boiler-mk1", 1,
	  {"rotor-2", 6},
	  {"tin-plate", 25},
	},
    result = "high-boiler-mk2"
  },
  {
    type = "recipe",
    name = "high-boiler-mk3",
	enabled = false,
    ingredients = 
	{
	  {"high-boiler-mk2", 1},
	  {"lead-plate", 6},
	  {"rotor-3", 6},
	},
    result = "high-boiler-mk3"
  },
  {
    type = "recipe",
    name = "high-boiler-mk4",
	enabled = false,
    ingredients = 
	{
	  {"high-boiler-mk3", 1},
	  {"rotor-3", 10},
	  {"steel-plate", 25},
	},
    result = "high-boiler-mk4"
  },
  {
    type = "recipe",
    name = "high-boiler-mk5",
	enabled = false,
    ingredients = 
	{
	  {"high-boiler-mk4", 1},
	  {"rotor-4", 13},
	  {"zinc-plate", 250},
	},
    result = "high-boiler-mk5"
  },
 }
)