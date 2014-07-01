data:extend(
{ 
  {
    type = "recipe",
    name = "pipe-to-ground-mk2",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground", 1},
      {"steel-plate", 4},
	},
    result = "pipe-to-ground-mk2"
  },
  {
    type = "recipe",
    name = "pipe-to-ground-mk3",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground-mk2", 1},
      {"steel-plate", 8},
	},
    result = "pipe-to-ground-mk3"
  },
  {
    type = "recipe",
    name = "pipe-to-ground-mk4",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground-mk3", 1},
      {"steel-plate", 16},
	},
    result = "pipe-to-ground-mk4"
  },
  {
    type = "recipe",
    name = "pipe-to-ground-mk5",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground-mk4", 1},
      {"steel-plate", 32},
	},
    result = "pipe-to-ground-mk5"
  },
}
)