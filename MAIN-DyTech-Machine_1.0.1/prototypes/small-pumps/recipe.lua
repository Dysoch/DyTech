for k, v in pairs(data.raw["recipe"]["small-pump"].ingredients) do
	if v[1] == "electric-engine-unit" then table.remove(data.raw["recipe"]["small-pump"].ingredients, k) end
end
table.insert(data.raw["recipe"]["small-pump"].ingredients,{"engine-unit", 1})

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
      {"iron-plate", 1},
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
      {"lead-plate", 1},
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
      {"tungsten-plate", 1},
	},
    result = "small-pump-mk5"
  },
}
)