data:extend(
{ 
  {
    type = "recipe",
    name = "boiler-mk2",
	enabled = false,
    ingredients = 
	{
	  {"boiler", 1},
	  {"advanced-circuit", 2},
	  {"iron-plate", 10},
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
	  {"advanced-circuit", 10},
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
	  {"advanced-processing-unit", 12},
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
	  {"advanced-processing-unit", 40},
	  {"steel-plate", 100},
	},
    result = "boiler-mk5"
  },
}
)