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
	if Difficulty==1 then
		Time = (Time/4) 
		Destroy = (Destroy/4) 
		Pollution = (Pollution/4) 
	elseif Difficulty==2 then
		Time = (Time/2) 
		Destroy = (Destroy/2) 
		Pollution = (Pollution/2)  
	elseif Difficulty==4 then
		Time = (Time*2) 
		Destroy = (Destroy*2) 
		Pollution = (Pollution*2) 
	elseif Difficulty==5 then
		Time = (Time*5) 
		Destroy = (Destroy*5) 
		Pollution = (Pollution*5) 
	end
end

--[[ Difficulty Spawners]]--
if Difficulty==1 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 1000
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 1500
elseif Difficulty==2 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 2000
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 3000
elseif Difficulty==3 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 4000
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 6000
elseif Difficulty==4 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 16000
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 24000
elseif Difficulty==5 then
	data.raw["unit-spawner"]["biter-spawner"].max_health = 160000
	data.raw["unit-spawner"]["spitter-spawner"].max_health = 240000
end

function EnemyHealthChange()
	for _,unitname in pairs(data.raw["unit"]) do
		if Difficulty==1 then
			unitname.max_health = unitname.max_health*0.5
		elseif Difficulty==3 then
			unitname.max_health = unitname.max_health*2
		elseif Difficulty==4 then
			unitname.max_health = unitname.max_health*5
		elseif Difficulty==5 then
			unitname.max_health = unitname.max_health*10
		end
	end
end
EnemyHealthChange()