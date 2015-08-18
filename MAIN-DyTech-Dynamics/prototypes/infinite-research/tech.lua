function Create_Infinite_Research(level, pack1, pack2, pack3, alienpack, count)
  local result =
  {
    type = "technology",
    name = "infinite-research-1",
    icon = "__base__/graphics/technology/follower-robots.png",
    effects = {},
    prerequisites = {},
    unit =
    {
      ingredients = {},
      time = 9
    },
    upgrade = true,
    order = "e-p-b-c"
  }
  result.name = "infinite-research-" .. level
  if level == 1 then
    result.prerequisites = {}
  else
    result.prerequisites = {"infinite-research-" .. (level - 1)}
  end
  result.unit.count = count
  if pack1 ~= 0 then
    table.insert(result.unit.ingredients, {"science-pack-1", pack1})
  end
  if pack2 ~= 0 then
    table.insert(result.unit.ingredients, {"science-pack-2", pack2})
  end
  if pack3 ~= 0 then
    table.insert(result.unit.ingredients, {"science-pack-3", pack3})
  end
  if alienpack ~= 0 then
    table.insert(result.unit.ingredients, {"alien-science-pack", alienpack})
  end
  result.unit.time = 9 + level
  return result
end

for i=1,24 do
data:extend(
{
	Create_Infinite_Research(i, 1, 0, 0, 0, i * 100)
})
end

for i=25,99 do
data:extend(
{
	Create_Infinite_Research(i, 1, 1, 0, 0, i * 100)
})
end

for i=100,249 do
data:extend(
{
	Create_Infinite_Research(i, 1, 1, 1, 0, i * 100)
})
end

for i=250,500 do
data:extend(
{
	Create_Infinite_Research(i, 1, 1, 1, 1, i * 100)
})
end
