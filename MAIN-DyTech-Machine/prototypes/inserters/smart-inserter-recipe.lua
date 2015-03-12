data:extend(
{
  {
    type = "recipe",
    name = "inserter-close",
    ingredients = 
	{
      {"basic-inserter", 1},
      {"electronic-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-close",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long-short",
    ingredients = 
	{
      {"inserter-close", 1},
      {"long-handed-inserter", 1},
      {"electronic-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-long-short",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-long-short-close",
    ingredients = 
	{
      {"inserter-close", 1},
      {"inserter-long-short", 1},
      {"electronic-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-long-short-close",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-fast-close",
    ingredients = 
	{
      {"inserter-close", 1},
      {"fast-inserter", 1},
      {"electronic-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-fast-close",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast",
    ingredients = 
	{
      {"fast-inserter", 2},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-veryfast",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-veryfast-close",
    ingredients = 
	{
      {"inserter-veryfast", 1},
      {"inserter-fast-close", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-veryfast-close",
    enabled = false
  },
  {
    type = "recipe",
    name = "inserter-close-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-close", 1},
      {"smart-inserter", 1},
      {"electronic-circuit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-close-smart"
  },
  {
    type = "recipe",
    name = "inserter-smart",
    enabled = false,
    ingredients =
    {
      {"basic-inserter", 1},
      {"smart-inserter", 1},
      {"electronic-circuit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-smart"
  },
  {
    type = "recipe",
    name = "inserter-long-smart",
    enabled = false,
    ingredients =
    {
      {"long-handed-inserter", 1},
      {"smart-inserter", 1},
      {"electronic-circuit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-smart"
  },
  {
    type = "recipe",
    name = "inserter-long-short-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-long-short", 1},
      {"smart-inserter", 1},
      {"electronic-circuit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-short-smart"
  },
  {
    type = "recipe",
    name = "inserter-long-close-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-long-close", 1},
      {"smart-inserter", 1},
      {"electronic-circuit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-close-smart"
  },
  {
    type = "recipe",
    name = "inserter-long-short-close-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-long-short-close", 1},
      {"smart-inserter", 1},
      {"electronic-circuit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-short-close-smart"
  },
  {
    type = "recipe",
    name = "inserter-fast-close-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-fast-close", 1},
      {"smart-inserter", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-fast-close-smart"
  },
  {
    type = "recipe",
    name = "inserter-veryfast-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-veryfast", 1},
      {"smart-inserter", 1},
      {"advanced-processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-veryfast-smart"
  },
  {
    type = "recipe",
    name = "inserter-veryfast-close-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-veryfast-close", 1},
      {"smart-inserter", 1},
      {"advanced-processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-veryfast-close-smart"
  },
  {
    type = "recipe",
    name = "inserter-long-close",
    enabled = false,
    ingredients =
    {
      {"inserter-close", 1},
      {"long-handed-inserter", 1},
      {"electronic-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-long-close"
  },
  {
    type = "recipe",
    name = "inserter-long-fast",
    enabled = false,
    ingredients =
    {
      {"fast-inserter", 1},
      {"long-handed-inserter", 1},
      {"advanced-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-long-fast"
  },
  {
    type = "recipe",
    name = "inserter-long-fast-short",
    enabled = false,
    ingredients =
    {
      {"fast-inserter", 1},
      {"inserter-long-short", 1},
      {"advanced-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-long-fast-short"
  },
  {
    type = "recipe",
    name = "inserter-long-fast-close",
    enabled = false,
    ingredients =
    {
      {"fast-inserter", 1},
      {"inserter-long-close", 1},
      {"advanced-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-long-fast-close"
  },
  {
    type = "recipe",
    name = "inserter-long-fast-close-short",
    enabled = false,
    ingredients =
    {
      {"fast-inserter", 1},
      {"inserter-long-short-close", 1},
      {"advanced-circuit", 2},
	  {"iron-plate", 10},
    },
    result = "inserter-long-fast-close-short"
  },
  {
    type = "recipe",
    name = "inserter-long-fast-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast", 1},
      {"smart-inserter", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-fast-smart"
  },
  {
    type = "recipe",
    name = "inserter-long-fast-smart-short",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast-short", 1},
      {"smart-inserter", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-fast-smart-short"
  },
  {
    type = "recipe",
    name = "inserter-long-fast-smart-close",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast-close", 1},
      {"smart-inserter", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-fast-smart-close"
  },
  {
    type = "recipe",
    name = "inserter-long-fast-smart-close-short",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast-close-short", 1},
      {"smart-inserter", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-fast-smart-close-short"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast", 2},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast-short",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast", 1},
      {"inserter-long-fast-short", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast-short"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast-close",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast", 1},
      {"inserter-long-fast-close", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast-close"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast-close-short",
    enabled = false,
    ingredients =
    {
      {"inserter-long-fast", 1},
      {"inserter-long-fast-close-short", 1},
      {"processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast-close-short"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast-smart",
    enabled = false,
    ingredients =
    {
      {"inserter-long-veryfast", 1},
      {"smart-inserter", 1},
      {"advanced-processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast-smart"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast-smart-short",
    enabled = false,
    ingredients =
    {
      {"inserter-long-veryfast-short", 1},
      {"smart-inserter", 1},
      {"advanced-processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast-smart-short"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast-smart-close",
    enabled = false,
    ingredients =
    {
      {"inserter-long-veryfast-close", 1},
      {"smart-inserter", 1},
      {"advanced-processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast-smart-close"
  },
  {
    type = "recipe",
    name = "inserter-long-veryfast-smart-close-short",
    enabled = false,
    ingredients =
    {
      {"inserter-long-veryfast-close-short", 1},
      {"smart-inserter", 1},
      {"advanced-processing-unit", 2},
	  {"steel-plate", 10},
    },
    result = "inserter-long-veryfast-smart-close-short"
  },
 }
)