module("MissionEasy", package.seeall)
require "config"

function MissionEasyLoot()
	local Loot = {"iron-ore", "copper-ore", "coal", "stone", "raw-wood", "wood", "iron-plate", "copper-plate"}
	GivenReward = Loot[math.random(#Loot)]
	return GivenReward
end

function Mission_001()
	if global.Missions.Stamina >= 1 and global.Missions.Timers.EasyActive==false then
		global.Missions.Stamina = global.Missions.Stamina - 1
		global.Missions.Timers.Easy = 15
		global.Missions.Timers.EasyActive = true
		global.Missions.Active.Easy = {}	
		global.Missions.Active.Easy = {Item=MissionEasyLoot(), Amount=math.random(5)}		
	end
end