for k,v in pairs(data.raw["unit-spawner"]) do
	v.max_health = v.max_health * 3.5
	v.spawning_radius = v.spawning_radius * 3.5
	v.spawning_spacing = v.spawning_spacing * 3.5
	v.max_spawn_shift = v.max_spawn_shift * 3.5
end