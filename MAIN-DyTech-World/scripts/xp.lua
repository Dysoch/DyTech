module("XP", package.seeall)
require "config"
require "scripts.functions"
require "scripts.gui"

function Building_Level(event)
	if not global.XP then fs.Startup() end
	global.XP.Building.Total = global.XP.Building.Total + (1/fs.Amount_Players())
	global.XP.Building.Set = global.XP.Building.Set + (1/fs.Amount_Players())
	if global.XP.Building.Set == global.XP.Building.Needed or global.XP.Building.Set > global.XP.Building.Needed then
		global.XP.Building.Set = global.XP.Building.Set - global.XP.Building.Needed
		global.XP.Building.Level = global.XP.Building.Level + 1
		global.XP.Level = global.XP.Level + 1
		debug("XP: Building reached "..global.XP.Building.Needed.." items")
		global.XP.Building.Needed = global.XP.Building.Needed + math.random(global.XP.Building.Total)
		PlayerPrint({"xp-2", {"building"}})
	end
end

function Explore_Level(event)
	if not global.XP then fs.Startup() end
	global.XP.Explore.Total = global.XP.Explore.Total + (1/fs.Amount_Players())
	global.XP.Explore.Set = global.XP.Explore.Set + (1/fs.Amount_Players())
	if global.XP.Explore.Set == global.XP.Explore.Needed or global.XP.Explore.Set > global.XP.Explore.Needed then
		global.XP.Explore.Set = global.XP.Explore.Set - global.XP.Explore.Needed
		global.XP.Explore.Level = global.XP.Explore.Level + 1
		global.XP.Level = global.XP.Level + 1
		debug("XP: Explore reached "..global.XP.Explore.Needed.." chunks")
		global.XP.Explore.Needed = global.XP.Explore.Needed + math.random(math.floor(global.XP.Explore.Total/5))
		PlayerPrint({"xp-2", {"explore"}})
	end
end

function Crafting_Speed_Bonus(event)
	if not global.XP then fs.Startup() end
	global.XP.Crafting.Total = global.XP.Crafting.Total + (event.item_stack.count/fs.Amount_Players())
	global.XP.Crafting.Set = global.XP.Crafting.Set + (event.item_stack.count/fs.Amount_Players())
	if global.XP.Crafting.Set == global.XP.Crafting.Needed or global.XP.Crafting.Set > global.XP.Crafting.Needed then
		global.XP.Crafting.Set = global.XP.Crafting.Set - global.XP.Crafting.Needed
		global.XP.Crafting.Level = global.XP.Crafting.Level + 1
		global.XP.Level = global.XP.Level + 1
		Bonus1 = (math.random()/2)
		global.XP.Crafting.Bonus = (global.XP.Crafting.Bonus + Bonus1)
		debug("XP: Crafting reached "..global.XP.Crafting.Needed.." items, increased crafting speed. (speed: "..global.XP.Crafting.Bonus..")")
		global.XP.Crafting.Needed = global.XP.Crafting.Needed + math.random(global.XP.Crafting.Total)
		game.forces.player.manual_crafting_speed_modifier = global.XP.Crafting.Bonus
		PlayerPrint({"xp", {"crafting"}, string.sub(Bonus1,1,4)})
	end
end

function Mining_Speed_Bonus(event)
	if not global.XP then fs.Startup() end
	global.XP.Mining.Total = global.XP.Mining.Total + (event.item_stack.count/fs.Amount_Players())
	global.XP.Mining.Set = global.XP.Mining.Set + (event.item_stack.count/fs.Amount_Players())
	if global.XP.Mining.Set == global.XP.Mining.Needed or global.XP.Mining.Set > global.XP.Mining.Needed then
		global.XP.Mining.Set = global.XP.Mining.Set - global.XP.Mining.Needed
		global.XP.Mining.Level = global.XP.Mining.Level + 1
		global.XP.Level = global.XP.Level + 1
		Bonus1 = (math.random()/2)
		global.XP.Mining.Bonus = global.XP.Mining.Bonus + Bonus1
		debug("XP: Mining reached "..global.XP.Mining.Needed.." items, increased Mining speed. (speed: "..global.XP.Mining.Bonus..")")
		global.XP.Mining.Needed = global.XP.Mining.Needed + math.random(global.XP.Mining.Total)
		game.forces.player.manual_mining_speed_modifier = global.XP.Mining.Bonus
		PlayerPrint({"xp", {"mining"}, string.sub(Bonus1,1,4)})
	end
end

function Fighting_Bonus(event)
	if not global.XP then fs.Startup() end
	if event.entity.type == "unit" then
		global.XP.Fighting.Killed_Total = global.XP.Fighting.Killed_Total + (1/fs.Amount_Players())
		global.XP.Fighting.Killed_Set = global.XP.Fighting.Killed_Set + (1/fs.Amount_Players())
		GUI_checker()
	elseif event.entity.type == "unit-spawner" then
		global.XP.Fighting.Killed_Total = global.XP.Fighting.Killed_Total + (10/fs.Amount_Players())
		global.XP.Fighting.Killed_Set = global.XP.Fighting.Killed_Set + (10/fs.Amount_Players())
		GUI_checker()
	end
	if global.XP.Fighting.Killed_Set == global.XP.Fighting.Needed or global.XP.Fighting.Killed_Set > global.XP.Fighting.Needed then
		global.XP.Fighting.Killed_Set = global.XP.Fighting.Killed_Set - global.XP.Fighting.Needed
		global.XP.Fighting.Level = global.XP.Fighting.Level + 1
		global.XP.Level = global.XP.Level + 1
		Extinction()
		debug("XP: Fighting reached "..global.XP.Fighting.Needed.." kills, increased Fighting stats by "..(global.XP.Fighting.Level/50))
		global.XP.Fighting.Needed = global.XP.Fighting.Needed + math.random(global.XP.Fighting.Killed_Total)
		global.XP.Fighting.Bonus = global.XP.Fighting.Bonus + (global.XP.Fighting.Level/50)
		if not global.XP.Fighting.Category then global.XP.Fighting.Category = {"bullet","rocket","flame-thrower","shotgun-shell","railgun","cannon-shell","combat-robot-laser","laser-turret","electric","capsule","combat-robot-beam"} end
		for number,name in pairs(global.XP.Fighting.Category) do
			game.forces.player.set_ammo_damage_modifier(name, (game.forces.player.get_ammo_damage_modifier(name)+(global.XP.Fighting.Level/50)))
		end
		for number,name in pairs(global.XP.Fighting.Category) do
			game.forces.player.set_gun_speed_modifier(name, (game.forces.player.get_gun_speed_modifier(name)+(global.XP.Fighting.Level/50)))
		end
		PlayerPrint({"xp", {"fighting"}, string.sub((global.XP.Fighting.Level/50),1,4)})
	end
end

function GUI_checker()
	if global.XP.GUI then
		for number in pairs(game.players) do
			GUI.closeGUI("XP", number)
			GUI.showDyTechWorldXPGUI(number)
			game.players[number].gui.left["mainDyTechWorldXPFlow"]["mainDyTechWorldXPFrame"]["Crafting-XP"].value = (global.XP.Crafting.Set/global.XP.Crafting.Needed)
			game.players[number].gui.left["mainDyTechWorldXPFlow"]["mainDyTechWorldXPFrame"]["Mining-XP"].value = (global.XP.Mining.Set/global.XP.Mining.Needed)
			game.players[number].gui.left["mainDyTechWorldXPFlow"]["mainDyTechWorldXPFrame"]["Building-XP"].value = (global.XP.Building.Set/global.XP.Building.Needed)
			game.players[number].gui.left["mainDyTechWorldXPFlow"]["mainDyTechWorldXPFrame"]["Explore-XP"].value = (global.XP.Explore.Set/global.XP.Explore.Needed)
			game.players[number].gui.left["mainDyTechWorldXPFlow"]["mainDyTechWorldXPFrame"]["Fighting-XP"].value = (global.XP.Fighting.Killed_Set/global.XP.Fighting.Needed)
		end
	else
		for number in pairs(game.players) do
			GUI.closeGUI("XP", number)
		end
	end
end

function Extinction()
	if not global.XP.Fighting.Extinction then global.XP.Fighting.Extinction = 0 end
	if global.XP.Fighting.Level==3 or global.XP.Fighting.Level==5 or global.XP.Fighting.Level==7 or global.XP.Fighting.Level==9 or global.XP.Fighting.Level==11 or global.XP.Fighting.Level==13 or global.XP.Fighting.Level==15 or global.XP.Fighting.Level==17 or global.XP.Fighting.Level==19 or global.XP.Fighting.Level==21 then
		global.XP.Fighting.Extinction = global.XP.Fighting.Extinction + 1
	end
end