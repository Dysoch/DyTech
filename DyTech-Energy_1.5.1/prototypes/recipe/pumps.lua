data:extend(
{ 
  {
    type = "recipe",
    name = "small-pump-mk2",
	enabled = false,
    ingredients = 
	{
	  {"small-pump", 1},
      {"electric-engine-unit", 1},
      {"steel-plate", 1},
      {"pipe-mk2", 1}
	},
    result = "small-pump-mk2"
  },
  {
    type = "recipe",
    name = "small-pump-mk3",
	enabled = false,
    ingredients = 
	{
	  {"small-pump-mk2", 1},
      {"electric-engine-unit", 1},
      {"steel-plate", 1},
      {"pipe-mk3", 1}
	},
    result = "small-pump-mk3"
  },
  {
    type = "recipe",
    name = "small-pump-mk4",
	enabled = false,
    ingredients = 
	{
	  {"small-pump-mk3", 1},
      {"electric-engine-unit", 1},
      {"steel-plate", 1},
      {"pipe-mk4", 1}
	},
    result = "small-pump-mk4"
  },
  {
    type = "recipe",
    name = "small-pump-mk5",
	enabled = false,
    ingredients = 
	{
	  {"small-pump-mk4", 1},
      {"electric-engine-unit", 1},
      {"steel-plate", 1},
      {"pipe-mk5", 1}
	},
    result = "small-pump-mk5"
  },
}
)