require "config"

if Difficulty==1 or Difficulty==2 or Difficulty==3 or Difficulty==4 or Difficulty==5 then
	
else
	error("You inputted something other then 1,2,3,4 or 5 into the difficulty meter. Please correct it, and try again! (DyTech-War Difficulty Error!")
end

--[[ Evolution Check ]]--
if Evolution_Reduced then 
local Time = data.raw["map-settings"]["map-settings"].enemy_evolution.time_factor
local Destroy = data.raw["map-settings"]["map-settings"].enemy_evolution.destroy_factor
local Pollution = data.raw["map-settings"]["map-settings"].enemy_evolution.pollution_factor
local BiterPollutionAbsorbAbsolute = data.raw["unit-spawner"]["biter-spawner"].pollution_absorbtion_absolute 
local BiterPollutionAbsorb = data.raw["unit-spawner"]["biter-spawner"].pollution_absorbtion_proportional
local SpitterPollutionAbsorbAbsolute = data.raw["unit-spawner"]["spitter-spawner"].pollution_absorbtion_absolute 
local SpitterPollutionAbsorb = data.raw["unit-spawner"]["spitter-spawner"].pollution_absorbtion_proportional
	if Difficulty==1 then
		Time = (Time/4) 
		Destroy = (Destroy/4) 
		Pollution = (Pollution/4) 
		BiterPollutionAbsorbAbsolute = (BiterPollutionAbsorbAbsolute/2)
		BiterPollutionAbsorb = (BiterPollutionAbsorb/2)
		SpitterPollutionAbsorbAbsolute = (SpitterPollutionAbsorbAbsolute/2)
		SpitterPollutionAbsorb = (SpitterPollutionAbsorb/2)
	elseif Difficulty==2 then
		Time = (Time/2) 
		Destroy = (Destroy/2) 
		Pollution = (Pollution/2) 
	elseif Difficulty==3 then
		BiterPollutionAbsorbAbsolute = (BiterPollutionAbsorbAbsolute*2)
		BiterPollutionAbsorb = (BiterPollutionAbsorb*2)
		SpitterPollutionAbsorbAbsolute = (SpitterPollutionAbsorbAbsolute*2)
		SpitterPollutionAbsorb = (SpitterPollutionAbsorb*2) 
	elseif Difficulty==4 then
		Time = (Time*2) 
		Destroy = (Destroy*2) 
		Pollution = (Pollution*2) 
		BiterPollutionAbsorbAbsolute = (BiterPollutionAbsorbAbsolute*5)
		BiterPollutionAbsorb = (BiterPollutionAbsorb*5)
		SpitterPollutionAbsorbAbsolute = (SpitterPollutionAbsorbAbsolute*5)
		SpitterPollutionAbsorb = (SpitterPollutionAbsorb*5)
	elseif Difficulty==5 then
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
if Difficulty==1 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 1000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 10
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 7
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {1800, 300}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 1500
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 7
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 7
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {1900, 400}
	if Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 100000
	end
elseif Difficulty==2 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 2000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 20
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 15
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {900, 150}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 3000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 15
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 15
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {900, 200}
	if Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 200000
	end
elseif Difficulty==3 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 4000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 40
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 30
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {600, 100}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 6000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 30
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 30
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {600, 125}
	if Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 500000
	end
elseif Difficulty==4 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 16000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 80
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 60
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {300, 50}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 24000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 60
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 60
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {300, 60}
	if Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 1000000
	end
elseif Difficulty==5 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 160000
	data.raw["unit-spawner"]["biter-spawner"].maximum_count_of_owned_units = 160
	data.raw["unit-spawner"]["biter-spawner"].max_friends_around_to_spawn = 120
	data.raw["unit-spawner"]["biter-spawner"].spawning_cooldown = {150, 25}
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 240000
	data.raw["unit-spawner"]["spitter-spawner"].maximum_count_of_owned_units = 120
	data.raw["unit-spawner"]["spitter-spawner"].max_friends_around_to_spawn = 120
	data.raw["unit-spawner"]["spitter-spawner"].spawning_cooldown = {150, 30}
	if Dyzilla_Spawner then
		data.raw["unit-spawner"]["dyzilla-spawner"].max_health = 5000000
	end
end

if Difficulty==1 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*0.5
	end
elseif Difficulty==3 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*2
	end
elseif Difficulty==4 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*5
	end
elseif Difficulty==5 then
	for _,unitname in pairs(data.raw["unit"]) do
		unitname.max_health = unitname.max_health*10
	end
end

