require "config"

function RemoveFromTech(Name, Recipe)
	for k, v in pairs(data.raw["technology"][Name].effects) do
		if v.recipe == Recipe then table.remove(data.raw["technology"][Name].effects, k) end
		break
	end
end

if Research_System then
	RemoveFromTech("automation", "assembling-machine-1")
	RemoveFromTech("automation", "long-handed-inserter")
	RemoveFromTech("automation", "iron-gear-wheel")
end