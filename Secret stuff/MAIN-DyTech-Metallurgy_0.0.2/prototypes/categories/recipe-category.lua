require "prototypes.functions"

function DyTech_Create_Recipe_Category(NAME)
  local result =
  {
    type = "recipe-category",
    name = "electrolys"
  }
  result.name = NAME
  return result
end

for index,name in pairs(MACHINES) do
data:extend(
  {
	DyTech_Create_Recipe_Category(name.Category)
  })
end