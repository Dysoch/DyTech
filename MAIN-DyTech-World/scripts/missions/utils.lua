module("MissionUtils", package.seeall)
require "config"

function Startup()
	global.Missions = {}
	global.Missions.Stamina = 0
	global.Missions.Timers = {}
	global.Missions.Timers.Easy = 0
	global.Missions.Timers.Medium = 0
	global.Missions.Timers.Hard = 0
	global.Missions.Timers.Insane = 0
	global.Missions.Timers.EasyActive = false
	global.Missions.Timers.MediumActive = false
	global.Missions.Timers.HardActive = false
	global.Missions.Timers.InsaneActive = false
	global.Missions.Active = {}
	global.Missions.Active.Easy = {}
	global.Missions.Active.Medium = {}
	global.Missions.Active.Hard = {}
	global.Missions.Active.Insane = {}
end

function StaminaIncrease()
	if global.Missions.Stamina < (20+global.XP.Level*5) then
		global.Missions.Stamina = global.Missions.Stamina + 1
	end
end

function GUI()
	for _,player in pairs(game.players) do
		if player.gui.top["Stamina-Label"] then
			player.gui.top["Stamina-Label"].destroy()
		end
		player.gui.top.add({type="label", name="Stamina-Label", caption={"stamina", global.Missions.Stamina}})
	end
end

function Reward(data)
	for _,player in pairs(game.players) do
		player.insert{name=data.Item, count=data.Amount}
	end
end