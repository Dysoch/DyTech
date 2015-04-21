require "config"

--[[ Evolution Check ]]--
if Evolution_Reduced then 
local Time = data.raw["map-settings"].enemy_evolution.time_factor
local Destroy = data.raw["map-settings"].enemy_evolution.destroy_factor
local Pollution = data.raw["map-settings"].enemy_evolution.pollution_factor
	Time = (Time/2) 
	Destroy = (Destroy/2) 
	Pollution = (Pollution/2) 
end