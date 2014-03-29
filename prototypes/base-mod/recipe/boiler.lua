data:extend(
{ 
  {
    type = "recipe",
    name = "boiler-mk2",
	enabled = false,
    ingredients = 
	{
	  {"boiler", 1},
	  {"bronze-alloy", 4},
	  {"engine5", 1},
	  {"rotor2", 1},
	  {"advanced-circuit", 1}
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
	  {"bronze-alloy", 12},
	  {"engine5", 2},
	  {"rotor3", 1},
	  {"circuit3", 2}
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
	  {"bronze-alloy", 24},
	  {"engine5", 4},
	  {"circuit3", 12},
	  {"ruby-5", 10},
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
	  {"bronze-alloy", 120},
	  {"circuit3", 40},
	  {"diamond-5", 10},
	},
    result = "boiler-mk5"
  },
}
)