require "config"
require "loot"

if Config.Difficulty==1 or Config.Difficulty==2 or Config.Difficulty==3 or Config.Difficulty==4 or Config.Difficulty==5 or Config.Difficulty==6 then
	
else
	error("You inputted something other then 1,2,3,4,5 or 6 into the difficulty meter. Please correct it, and try again! (DyTech-War Difficulty Error!")
end

--[[ Evolution Check ]]--
if Config.Evolution_Reduced then 
local Time = data.raw["map-settings"]["map-settings"].enemy_evolution.time_factor
local Destroy = data.raw["map-settings"]["map-settings"].enemy_evolution.destroy_factor
local Pollution = data.raw["map-settings"]["map-settings"].enemy_evolution.pollution_factor
	if Config.Difficulty==1 then
		Time = (Time/4) 
		Destroy = (Destroy/4) 
		Pollution = (Pollution/4) 
		for k,v in pairs(data.raw["unit-spawner"]) do
			v.pollution_absorbtion_absolute = (v.pollution_absorbtion_absolute/2)
			v.pollution_absorbtion_proportional = (v.pollution_absorbtion_proportional/2)
		end
	elseif Config.Difficulty==2 then
		Time = (Time/2) 
		Destroy = (Destroy/2) 
		Pollution = (Pollution/2) 
	elseif Config.Difficulty==3 then
		for k,v in pairs(data.raw["unit-spawner"]) do
			v.pollution_absorbtion_absolute = (v.pollution_absorbtion_absolute*2)
			v.pollution_absorbtion_proportional = (v.pollution_absorbtion_proportional*2)
		end
	elseif Config.Difficulty==4 then
		Time = (Time*2) 
		Destroy = (Destroy*2) 
		Pollution = (Pollution*2) 
		for k,v in pairs(data.raw["unit-spawner"]) do
			v.pollution_absorbtion_absolute = (v.pollution_absorbtion_absolute*5)
			v.pollution_absorbtion_proportional = (v.pollution_absorbtion_proportional*5)
		end
	elseif Config.Difficulty==5 then
		Time = (Time*5) 
		Destroy = (Destroy*5) 
		Pollution = (Pollution*5) 
		for k,v in pairs(data.raw["unit-spawner"]) do
			v.pollution_absorbtion_absolute = (v.pollution_absorbtion_absolute*10)
			v.pollution_absorbtion_proportional = (v.pollution_absorbtion_proportional*10)
		end
	elseif Config.Difficulty==6 then
		Time = (Time*50) 
		Destroy = (Destroy*50) 
		Pollution = (Pollution*50) 
		for k,v in pairs(data.raw["unit-spawner"]) do
			v.pollution_absorbtion_absolute = (v.pollution_absorbtion_absolute*100)
			v.pollution_absorbtion_proportional = (v.pollution_absorbtion_proportional*100)
		end
	end
end

--[[ Difficulty Spawners]]--
if Config.Difficulty==1 then
	for k,v in pairs(data.raw["unit-spawner"]) do
	local Factor = 0.5
		v.max_health = math.floor(v.max_health*Factor)
		v.healing_per_tick = math.floor(v.healing_per_tick*Factor)
		v.pollution_absorbtion_absolute = math.floor(v.pollution_absorbtion_absolute*Factor)
		v.pollution_absorbtion_proportional = math.floor(v.pollution_absorbtion_proportional*Factor)
		v.max_count_of_owned_units = math.floor(v.max_count_of_owned_units*Factor)
		v.max_friends_around_to_spawn = math.floor(v.max_friends_around_to_spawn*Factor)
		for i,n in pairs(v.spawning_cooldown) do
			n = math.floor(n*Factor)
		end
	end
elseif Config.Difficulty==2 then
	for k,v in pairs(data.raw["unit-spawner"]) do
	local Factor = 1
		v.max_health = math.floor(v.max_health*Factor)
		v.healing_per_tick = math.floor(v.healing_per_tick*Factor)
		v.pollution_absorbtion_absolute = math.floor(v.pollution_absorbtion_absolute*Factor)
		v.pollution_absorbtion_proportional = math.floor(v.pollution_absorbtion_proportional*Factor)
		v.max_count_of_owned_units = math.floor(v.max_count_of_owned_units*Factor)
		v.max_friends_around_to_spawn = math.floor(v.max_friends_around_to_spawn*Factor)
		for i,n in pairs(v.spawning_cooldown) do
			n = math.floor(n*Factor)
		end
	end
elseif Config.Difficulty==3 then
	for k,v in pairs(data.raw["unit-spawner"]) do
	local Factor = 3.5
		v.max_health = math.floor(v.max_health*Factor)
		v.healing_per_tick = math.floor(v.healing_per_tick*Factor)
		v.pollution_absorbtion_absolute = math.floor(v.pollution_absorbtion_absolute*Factor)
		v.pollution_absorbtion_proportional = math.floor(v.pollution_absorbtion_proportional*Factor)
		v.max_count_of_owned_units = math.floor(v.max_count_of_owned_units*Factor)
		v.max_friends_around_to_spawn = math.floor(v.max_friends_around_to_spawn*Factor)
		for i,n in pairs(v.spawning_cooldown) do
			n = math.floor(n*Factor)
		end
	end
elseif Config.Difficulty==4 then
	for k,v in pairs(data.raw["unit-spawner"]) do
	local Factor = 12.25
		v.max_health = math.floor(v.max_health*Factor)
		v.healing_per_tick = math.floor(v.healing_per_tick*Factor)
		v.pollution_absorbtion_absolute = math.floor(v.pollution_absorbtion_absolute*Factor)
		v.pollution_absorbtion_proportional = math.floor(v.pollution_absorbtion_proportional*Factor)
		v.max_count_of_owned_units = math.floor(v.max_count_of_owned_units*Factor)
		v.max_friends_around_to_spawn = math.floor(v.max_friends_around_to_spawn*Factor)
		for i,n in pairs(v.spawning_cooldown) do
			n = math.floor(n*Factor)
		end
	end
elseif Config.Difficulty==5 then
	for k,v in pairs(data.raw["unit-spawner"]) do
	local Factor = 42.88
		v.max_health = math.floor(v.max_health*Factor)
		v.healing_per_tick = math.floor(v.healing_per_tick*Factor)
		v.pollution_absorbtion_absolute = math.floor(v.pollution_absorbtion_absolute*Factor)
		v.pollution_absorbtion_proportional = math.floor(v.pollution_absorbtion_proportional*Factor)
		v.max_count_of_owned_units = math.floor(v.max_count_of_owned_units*Factor)
		v.max_friends_around_to_spawn = math.floor(v.max_friends_around_to_spawn*Factor)
		for i,n in pairs(v.spawning_cooldown) do
			n = math.floor(n*Factor)
		end
	end
elseif Config.Difficulty==6 then
	for k,v in pairs(data.raw["unit-spawner"]) do
	local Factor = 150.06
		v.max_health = math.floor(v.max_health*Factor)
		v.healing_per_tick = math.floor(v.healing_per_tick*Factor)
		v.pollution_absorbtion_absolute = math.floor(v.pollution_absorbtion_absolute*Factor)
		v.pollution_absorbtion_proportional = math.floor(v.pollution_absorbtion_proportional*Factor)
		v.max_count_of_owned_units = math.floor(v.max_count_of_owned_units*Factor)
		v.max_friends_around_to_spawn = math.floor(v.max_friends_around_to_spawn*Factor)
		for i,n in pairs(v.spawning_cooldown) do
			n = math.floor(n*Factor)
		end
	end
end

if Config.Difficulty==1 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*0.5
	end
elseif Config.Difficulty==3 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*2
	end
elseif Config.Difficulty==4 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*5
	end
elseif Config.Difficulty==5 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*10
	end
elseif Config.Difficulty==6 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*100
	end
end

if Config.Experimental_Feature then
	for _,projectile in pairs(data.raw["projectile"]) do
		if not projectile.collision_box then
			projectile.collision_box = {{-0.05, -1}, {0.05, 1}}
			projectile.direction_only = true
		end
	end
end

--[[for k, v in pairs(data.raw["unit"]) do
	if v.loot then
		for _,table in pairs(Units_Loot) do
			table.insert(v.loot, table)
		end
	else
		v.loot = Units_Loot
	end
end

for k, v in pairs(data.raw["unit-spawner"]) do
	if v.loot then
		for _,table in pairs(Spawner_Loot) do
			table.insert(v.loot, table)
		end
	else
		v.loot = Spawner_Loot
	end
end]]--