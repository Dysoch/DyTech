require "config"

if Config.Difficulty==1 or Config.Difficulty==2 or Config.Difficulty==3 or Config.Difficulty==4 or Config.Difficulty==5 then
	
else
	error("You inputted something other then 1,2,3,4 or 5 into the difficulty meter. Please correct it, and try again! (DyTech-War Difficulty Error!")
end

--[[ Evolution Check ]]--
if Config.Evolution_Reduced then 
local Time = data.raw["map-settings"]["map-settings"].enemy_evolution.time_factor
local Destroy = data.raw["map-settings"]["map-settings"].enemy_evolution.destroy_factor
local Pollution = data.raw["map-settings"]["map-settings"].enemy_evolution.pollution_factor
local BiterPollutionAbsorbAbsolute = data.raw["unit-spawner"]["biter-spawner"].pollution_absorbtion_absolute 
local BiterPollutionAbsorb = data.raw["unit-spawner"]["biter-spawner"].pollution_absorbtion_proportional
local SpitterPollutionAbsorbAbsolute = data.raw["unit-spawner"]["spitter-spawner"].pollution_absorbtion_absolute 
local SpitterPollutionAbsorb = data.raw["unit-spawner"]["spitter-spawner"].pollution_absorbtion_proportional
	if Config.Difficulty==1 then
		Time = (Time/4) 
		Destroy = (Destroy/4) 
		Pollution = (Pollution/4) 
		BiterPollutionAbsorbAbsolute = (BiterPollutionAbsorbAbsolute/2)
		BiterPollutionAbsorb = (BiterPollutionAbsorb/2)
		SpitterPollutionAbsorbAbsolute = (SpitterPollutionAbsorbAbsolute/2)
		SpitterPollutionAbsorb = (SpitterPollutionAbsorb/2)
	elseif Config.Difficulty==2 then
		Time = (Time/2) 
		Destroy = (Destroy/2) 
		Pollution = (Pollution/2) 
	elseif Config.Difficulty==3 then
		BiterPollutionAbsorbAbsolute = (BiterPollutionAbsorbAbsolute*2)
		BiterPollutionAbsorb = (BiterPollutionAbsorb*2)
		SpitterPollutionAbsorbAbsolute = (SpitterPollutionAbsorbAbsolute*2)
		SpitterPollutionAbsorb = (SpitterPollutionAbsorb*2) 
	elseif Config.Difficulty==4 then
		Time = (Time*2) 
		Destroy = (Destroy*2) 
		Pollution = (Pollution*2) 
		BiterPollutionAbsorbAbsolute = (BiterPollutionAbsorbAbsolute*5)
		BiterPollutionAbsorb = (BiterPollutionAbsorb*5)
		SpitterPollutionAbsorbAbsolute = (SpitterPollutionAbsorbAbsolute*5)
		SpitterPollutionAbsorb = (SpitterPollutionAbsorb*5)
	elseif Config.Difficulty==5 then
		Time = (Time*5) 
		Destroy = (Destroy*5) 
		Pollution = (Pollution*5) 
		BiterPollutionAbsorbAbsolute = (BiterPollutionAbsorbAbsolute*10)
		BiterPollutionAbsorb = (BiterPollutionAbsorb*10)
		SpitterPollutionAbsorbAbsolute = (SpitterPollutionAbsorbAbsolute*10)
		SpitterPollutionAbsorb = (SpitterPollutionAbsorb*10)
	end
end

--[[ Difficulty Spawners]]--
if Config.Difficulty==1 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 1000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 10
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 7
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {1800, 300}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 1500
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 7
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 7
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {1900, 400}
	if Config.Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 100000
		data.raw["unit-spawner"]["dyzilla-spawner"].maximum_count_of_owned_units = 40
		data.raw["unit-spawner"]["dyzilla-spawner"].spawning_cooldown = {960, 60}
	end
elseif Config.Difficulty==2 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 2000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 20
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 15
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {900, 150}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 3000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 15
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 15
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {900, 200}
	if Config.Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 200000
		data.raw["unit-spawner"]["dyzilla-spawner"].maximum_count_of_owned_units = 75
		data.raw["unit-spawner"]["dyzilla-spawner"].spawning_cooldown = {480, 60}
	end
elseif Config.Difficulty==3 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 4000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 40
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 30
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {600, 100}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 6000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 30
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 30
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {600, 125}
	if Config.Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 500000
		data.raw["unit-spawner"]["dyzilla-spawner"].maximum_count_of_owned_units = 125
		data.raw["unit-spawner"]["dyzilla-spawner"].spawning_cooldown = {240, 60}
	end
elseif Config.Difficulty==4 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 16000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 80
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 60
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {300, 50}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 24000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 60
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 60
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {300, 60}
	if Config.Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 1000000
		data.raw["unit-spawner"]["dyzilla-spawner"].maximum_count_of_owned_units = 250
		data.raw["unit-spawner"]["dyzilla-spawner"].spawning_cooldown = {120, 40}
	end
elseif Config.Difficulty==5 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 160000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 160
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 120
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {150, 25}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 240000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 120
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 120
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {150, 30}
	if Config.Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 5000000
		data.raw["unit-spawner"]["dyzilla-spawner"].maximum_count_of_owned_units = 500
		data.raw["unit-spawner"]["dyzilla-spawner"].spawning_cooldown = {60, 20}
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
end

if Config.Experimental_Feature then
	for _,projectile in pairs(data.raw["projectile"]) do
		if not projectile.collision_box then
			projectile.collision_box = {{-0.05, -1}, {0.05, 1}}
			projectile.direction_only = true
		end
	end
end