module("Dyzilla", package.seeall)
require "config"

function Startup()
global.Dyzilla = {}
global.Dyzilla.Chunks = 0
global.Dyzilla.Alive = 0
global.Dyzilla.Dead = 0
global.Dyzilla.Max = 0
global.Dyzilla.Supplies = false
end

function Easy(event)
	global.Dyzilla.Max = 0
	if math.random(500)==5 then
	debug("Dyzilla: chance happened (Easy)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > (2500+(1250*global.Dyzilla.Alive)) then
		debug("Dyzilla: Max spawners is not 0 (Easy)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			for _,player in pairs(game.players) do
				if player.surface.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
					if remote.interfaces["DyTech-World"] then
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
					else
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.dyzilla}
					end
					global.Dyzilla.Alive = global.Dyzilla.Alive + 1
					PlayerPrint("Dyzilla Spawner has been FOUND! ("..global.Dyzilla.Alive.." alive at the moment)")
					debug("Dyzilla: New spawner spawned in, total alive: "..global.Dyzilla.Alive)
				end
			end
		end
	end
end

function Medium(event)
	global.Dyzilla.Max = 1
	if math.random(500)==5 then
	debug("Dyzilla: chance happened (Medium)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > (2000+(1000*global.Dyzilla.Alive)) then
		debug("Dyzilla: Max spawners is not 0 (Medium)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			for _,player in pairs(game.players) do
				if player.surface.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
					if remote.interfaces["DyTech-World"] then
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
					else
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.dyzilla}
					end
					global.Dyzilla.Alive = global.Dyzilla.Alive + 1
					PlayerPrint("Dyzilla Spawner has been FOUND! ("..global.Dyzilla.Alive.." alive at the moment)")
					debug("Dyzilla: New spawner spawned in, total alive: "..global.Dyzilla.Alive)
				end
			end
		end
	end
end

function Hard(event)
	global.Dyzilla.Max = 2
	if math.random(300)==5 then
	debug("Dyzilla: chance happened (Hard)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > (1500+(750*global.Dyzilla.Alive)) then
		debug("Dyzilla: Max spawners is not 0 (Hard)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			for _,player in pairs(game.players) do
				if player.surface.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
					if remote.interfaces["DyTech-World"] then
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
					else
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.dyzilla}
					end
					global.Dyzilla.Alive = global.Dyzilla.Alive + 1
					PlayerPrint("Dyzilla Spawner has been FOUND! ("..global.Dyzilla.Alive.." alive at the moment)")
					debug("Dyzilla: New spawner spawned in, total alive: "..global.Dyzilla.Alive)
				end
			end
		end
	end
end

function Insane(event)
	global.Dyzilla.Max = 4
	if math.random(150)==5 then
	debug("Dyzilla: chance happened (Insane)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > (1000+(500*global.Dyzilla.Alive)) then
		debug("Dyzilla: Max spawners is not 0 (Insane)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			for _,player in pairs(game.players) do
				if player.surface.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
					if remote.interfaces["DyTech-World"] then
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
					else
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.dyzilla}
					end
					global.Dyzilla.Alive = global.Dyzilla.Alive + 1
					PlayerPrint("Dyzilla Spawner has been FOUND! ("..global.Dyzilla.Alive.." alive at the moment)")
					debug("Dyzilla: New spawner spawned in, total alive: "..global.Dyzilla.Alive)
				end
			end
		end
	end
end

function Extreme(event)
	global.Dyzilla.Max = 9
	if math.random(50)==5 then
	debug("chance happened (Extreme)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > (500+(250*global.Dyzilla.Alive)) then
		debug("Max spawners is not 0 (Extreme)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			for _,player in pairs(game.players) do
				if player.surface.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
					if remote.interfaces["DyTech-World"] then
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
					else
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.dyzilla}
					end
					global.Dyzilla.Alive = global.Dyzilla.Alive + 1
					PlayerPrint("Dyzilla Spawner has been FOUND! ("..global.Dyzilla.Alive.." alive at the moment)")
					debug("Dyzilla: New spawner spawned in, total alive: "..global.Dyzilla.Alive)
				end
			end
		end
	end
end

function Hell(event)
	global.Dyzilla.Max = 99
	if math.random(6)==5 then
	debug("chance happened (Hell)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > (250+(50*global.Dyzilla.Alive)) then
		debug("Max spawners is not 0 (Extreme)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			for _,player in pairs(game.players) do
				if player.surface.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
					if remote.interfaces["DyTech-World"] then
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
					else
						player.surface.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.dyzilla}
					end
					global.Dyzilla.Alive = global.Dyzilla.Alive + 1
					PlayerPrint("Dyzilla Spawner has been FOUND! ("..global.Dyzilla.Alive.." alive at the moment)")
					debug("Dyzilla: New spawner spawned in, total alive: "..global.Dyzilla.Alive)
				end
			end
		end
	end
end

function DeathModeSupplies()
	for _,player in pairs(game.players) do
		local chestposition1 = player.surface.find_non_colliding_position("steel-chest", player.position, 1, 1)
		local chest1 = player.surface.create_entity{name="steel-chest", position=chestposition1, force = game.forces.player}
		local chestposition2 = player.surface.find_non_colliding_position("steel-chest", player.position, -1, -1)
		local chest2 = player.surface.create_entity{name="steel-chest", position=chestposition2, force = game.forces.player}
		chest1.insert{name="small-electric-pole", count=50}
		chest1.insert{name="substation", count=10}
		chest1.insert{name="fast-inserter", count=100}
		chest1.insert{name="smart-inserter", count=100}
		chest1.insert{name="basic-transport-belt", count=500}
		chest1.insert{name="basic-transport-belt-to-ground", count=100}
		chest1.insert{name="basic-splitter", count=100}
		chest1.insert{name="assembling-machine-2", count=50}
		chest1.insert{name="blueprint", count=1}
		chest1.insert{name="logistic-chest-requester", count=25}
		chest1.insert{name="logistic-chest-passive-provider", count=25}
		chest1.insert{name="logistic-chest-active-provider", count=25}
		chest1.insert{name="logistic-chest-storage", count=10}
		chest1.insert{name="deconstruction-planner", count=1}
		if remote.interfaces["DyTech-Power"] then
			chest2.insert{name="large-solar-panel-primary-mk5", count=50}
			chest2.insert{name="small-solar-panel-primary-mk5", count=50}
			chest2.insert{name="basic-accumulator-mk6", count=50}
		else
			chest2.insert{name="solar-panel", count=250}
			chest2.insert{name="basic-accumulator", count=250}
		end
		if remote.interfaces["DyTech-Machine"] then
			chest2.insert{name="construction-robot-2", count=100}
			chest2.insert{name="logistic-robot-2", count=100}
			chest2.insert{name="repair-pack-3", count=200}
			chest2.insert{name="roboport-2", count=10}
		else
			chest2.insert{name="construction-robot", count=100}
			chest2.insert{name="logistic-robot", count=100}
			chest2.insert{name="repair-pack", count=100}
			chest2.insert{name="roboport", count=20}
		end
		if remote.interfaces["DyTech-War"] then
			chest2.insert{name="laser-turret-sniper-3", count=50}
			chest2.insert{name="laser-turret-diamond-3", count=50}
			chest2.insert{name="tungsten-wall", count=500}
			chest2.insert{name="tungsten-wall-gate", count=50}
		else
			chest2.insert{name="laser-turret", count=150}
			chest2.insert{name="stone-wall", count=500}
		end
		game.forces.player.current_research = "construction-robotics"
		game.forces.player.technologies["construction-robotics"].researched = true
		game.forces.player.current_research = "construction-robotics-1"
		game.forces.player.technologies["construction-robotics-1"].researched = true
		game.forces.player.current_research = "construction-robotics-2"
		game.forces.player.technologies["construction-robotics-2"].researched = true
		game.forces.player.current_research = "automation"
	end
	global.Dyzilla.Supplies = true
end