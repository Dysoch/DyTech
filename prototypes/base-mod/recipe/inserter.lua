data:extend(
{
  {
    type = "recipe",
    name = "inserter-half",
    ingredients = 
	{
      {"electronic-circuit", 1},
      {"iron-gear-wheel", 1},
      {"iron-plate", 1}
    },
    result = "inserter-half",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long",
    ingredients = 
	{
      {"basic-inserter", 1},
      {"iron-plate", 2},
      {"electronic-circuit", 2}
    },
    result = "inserter-long",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long-half",
    ingredients = 
	{
      {"basic-inserter", 1},
      {"iron-plate", 2},
      {"electronic-circuit", 2}
    },
    result = "inserter-long-half",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-fast-half",
    ingredients = 
	{
      {"electronic-circuit", 2},
      {"iron-plate", 2},
      {"basic-inserter", 1}
    },
    result = "inserter-fast-half",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast",
    ingredients = 
	{
      {"electronic-circuit", 2},
      {"iron-plate", 2},
      {"fast-inserter", 1}
    },
    result = "inserter-veryfast",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast-half",
    ingredients = 
	{
      {"electronic-circuit", 2},
      {"iron-plate", 2},
      {"fast-inserter", 1}
    },
    result = "inserter-veryfast-half",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-half-filter",
    ingredients = 
	{
      {"advanced-circuit", 1},
      {"inserter-half", 1},
      {"zinc-plate", 1}
    },
    result = "inserter-half-filter",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long-filter",
    ingredients = 
	{
      {"inserter-long", 1},
      {"zinc-plate", 1},
      {"advanced-circuit", 2}
    },
    result = "inserter-long-filter",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long-half-filter",
    ingredients = 
	{
      {"inserter-long-half", 1},
      {"zinc-plate", 1},
      {"advanced-circuit", 2}
    },
    result = "inserter-long-half-filter",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-fast-half-filter",
    ingredients = 
	{
      {"advanced-circuit", 2},
      {"zinc-plate", 1},
      {"inserter-fast-half", 1}
    },
    result = "inserter-fast-half-filter",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast-filter",
    ingredients = 
	{
      {"advanced-circuit", 2},
      {"zinc-plate", 1},
      {"inserter-veryfast", 1}
    },
    result = "inserter-veryfast-filter",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast-half-filter",
    ingredients = 
	{
      {"advanced-circuit", 2},
      {"zinc-plate", 1},
      {"inserter-veryfast-half", 1}
    },
    result = "inserter-veryfast-half-filter",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-half-smart",
    ingredients = 
	{
      {"circuit3", 2},
      {"inserter-half-filter", 1},
      {"brass-alloy", 3},
    },
    result = "inserter-half-smart",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long-smart",
    ingredients = 
	{
      {"inserter-long-filter", 1},
      {"brass-alloy", 3},
      {"circuit3", 3}
    },
    result = "inserter-long-smart",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long-half-smart",
    ingredients = 
	{
      {"inserter-long-half-filter", 1},
      {"brass-alloy", 3},
      {"circuit3", 3}
    },
    result = "inserter-long-half-smart",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-fast-half-smart",
    ingredients = 
	{
      {"circuit3", 4},
      {"brass-alloy", 3},
      {"inserter-fast-half-filter", 1}
    },
    result = "inserter-fast-half-smart",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast-smart",
    ingredients = 
	{
      {"circuit3", 4},
      {"brass-alloy", 3},
      {"inserter-veryfast-filter", 1}
    },
    result = "inserter-veryfast-smart",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast-half-smart",
    ingredients = 
	{
      {"circuit3", 4},
      {"brass-alloy", 3},
      {"inserter-veryfast-half-filter", 1}
    },
    result = "inserter-veryfast-half-smart",
    enabled = false
  },
  { --ONLY ADDED IN DYTECH
    type = "recipe",
    name = "dytech-inserter",
    ingredients = 
	{
      {"circuit3", 10},
      {"iron-gear-wheel", 10},
      {"iron-plate-1", 10}
    },
    result = "dytech-inserter",
    enabled = false
  }, --ONLY ADDED IN DYTECH
  { --ONLY ADDED IN DYTECH
    type = "recipe",
    name = "dytech-inserter-fast",
    ingredients = 
	{
      {"circuit3", 25},
      {"steel-gear-wheel", 25},
      {"iron-plate-1", 15}
    },
    result = "dytech-inserter-fast",
    enabled = false
  }, --ONLY ADDED IN DYTECH
  {
    type = "recipe",
    name = "long-handed-inserter-filter",
    enabled = false,
    ingredients =
    {
      {"iron-gear-wheel", 1},
	  {"advanced-circuit", 2},
      {"iron-plate", 1},
      {"basic-inserter", 1}
    },
    result = "long-handed-inserter-filter"
  },
}
)