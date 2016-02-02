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
		global.Missions.Timers.Easy = 5
		global.Missions.Timers.EasyActive = true
		global.Missions.Active.Easy = {}	
		global.Missions.Active.Easy = {Item=MissionEasyLoot(), Amount=math.random(5)}		
	end
end

function Mission_002()
	if global.Missions.Stamina >= 2 and global.Missions.Timers.EasyActive==false then
		global.Missions.Stamina = global.Missions.Stamina - 2
		global.Missions.Timers.Easy = 10
		global.Missions.Timers.EasyActive = true
		global.Missions.Active.Easy = {}	
		global.Missions.Active.Easy = {Item=MissionEasyLoot(), Amount=math.random(2,10)}		
	end
end

function Mission_003()
	if global.Missions.Stamina >= 3 and global.Missions.Timers.EasyActive==false then
		global.Missions.Stamina = global.Missions.Stamina - 3
		global.Missions.Timers.Easy = 15
		global.Missions.Timers.EasyActive = true
		global.Missions.Active.Easy = {}	
		global.Missions.Active.Easy = {Item=MissionEasyLoot(), Amount=math.random(5,15)}		
	end
end

function Mission_004()
	if global.Missions.Stamina >= 5 and global.Missions.Timers.EasyActive==false then
		global.Missions.Stamina = global.Missions.Stamina - 5
		global.Missions.Timers.Easy = 20
		global.Missions.Timers.EasyActive = true
		global.Missions.Active.Easy = {}	
		global.Missions.Active.Easy = {Item=MissionEasyLoot(), Amount=math.random(10,25)}		
	end
end