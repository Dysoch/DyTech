require "config"

--[[ Evolution Check ]]--
if Evolution_Reduced then 
local Time = data.raw["map-settings"]["map-settings"].enemy_evolution.time_factor
local Destroy = data.raw["map-settings"]["map-settings"].enemy_evolution.destroy_factor
local Pollution = data.raw["map-settings"]["map-settings"].enemy_evolution.pollution_factor
	Time = (Time/2) 
	Destroy = (Destroy/2) 
	Pollution = (Pollution/2) 
end

--[[ Difficulty ]]--
if Difficulty==1 then

elseif Difficulty==2 then

elseif Difficulty==3 then

elseif Difficulty==4 then

elseif Difficulty==5 then

else 
	error("You inputted something other then 1,2,3,4 or 5 into the difficulty meter. Please correct it, and try again! (DyTech-War Difficulty Error!")
end