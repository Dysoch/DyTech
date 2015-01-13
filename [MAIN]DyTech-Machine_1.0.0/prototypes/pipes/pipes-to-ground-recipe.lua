data:extend(
{ 
  {
    type = "recipe",
    name = "pipe-to-ground-mk2",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground", 2},
      {"steel-plate", 4},
	},
    result = "pipe-to-ground-mk2",
	result_count = 2
  },
  {
    type = "recipe",
    name = "pipe-to-ground-mk3",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground-mk2", 2},
      {"tin-plate", 8},
	},
    result = "pipe-to-ground-mk3",
	result_count = 2
  },
  {
    type = "recipe",
    name = "pipe-to-ground-mk4",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground-mk3", 2},
      {"lead-plate", 16},
	},
    result = "pipe-to-ground-mk4",
	result_count = 2
  },
  {
    type = "recipe",
    name = "pipe-to-ground-mk5",
	enabled = false,
    ingredients = 
	{
	  {"pipe-to-ground-mk4", 2},
      {"tungsten-plate", 32},
	},
    result = "pipe-to-ground-mk5",
	result_count = 2
  },
}
)