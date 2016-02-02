data:extend(
{
  {
    type = "recipe",
    name = "high-boiler-mk1",
	enabled = true,
    ingredients = 
	{
	  {"boiler", 2},
	  {"rotor", 5},
	  {"steel-plate", 30},
	},
    result = "high-boiler-mk1"
  },
  {
    type = "recipe",
    name = "high-boiler-mk2",
	enabled = false,
    ingredients = 
	{
	  {"high-boiler-mk1", 1},
	  {"rotor", 6},
	  {"steel-plate", 25},
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
	  {"steel-plate", 6},
	  {"rotor", 6},
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
	  {"rotor", 10},
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
	  {"rotor", 13},
	  {"steel-plate", 250},
	},
    result = "high-boiler-mk5"
  },
})