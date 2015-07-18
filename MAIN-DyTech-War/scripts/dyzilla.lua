module("Dyzilla", package.seeall)

function Startup()
global.Dyzilla = {}
global.Dyzilla.Chunks = 0
global.Dyzilla.Alive = 0
global.Dyzilla.Dead = 0
global.Dyzilla.Max = 0
end

function Easy(event)
	global.Dyzilla.Max = 0
	if math.random(500)==5 then
	debug("chance happened (Easy)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > 2500 then
		debug("Max spawners is not 0 (Easy)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				global.Dyzilla.Alive = global.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(global.Dyzilla.Alive))
			end
		end
	end
end

function Medium(event)
	global.Dyzilla.Max = 1
	if math.random(500)==5 then
	debug("chance happened (Medium)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > 2000 then
		debug("Max spawners is not 0 (Medium)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				global.Dyzilla.Alive = global.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(global.Dyzilla.Alive))
			end
		end
	end
end

function Hard(event)
	global.Dyzilla.Max = 2
	if math.random(300)==5 then
	debug("chance happened (Hard)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > 1500 then
		debug("Max spawners is not 0 (Hard)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				global.Dyzilla.Alive = global.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(global.Dyzilla.Alive))
			end
		end
	end
end

function Insane(event)
	global.Dyzilla.Max = 4
	if math.random(150)==5 then
	debug("chance happened (Insane)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > 1000 then
		debug("Max spawners is not 0 (Insane)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				global.Dyzilla.Alive = global.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(global.Dyzilla.Alive))
			end
		end
	end
end

function Extreme(event)
	global.Dyzilla.Max = 9
	if math.random(50)==5 then
	debug("chance happened (Extreme)")
		if global.Dyzilla.Alive <= global.Dyzilla.Max and global.Dyzilla.Chunks > 500 then
		debug("Max spawners is not 0 (Extreme)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.left_top.x+math.random(32)
		local PosY = event.area.left_top.y+math.random(32)
			if game.can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
				game.create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				global.Dyzilla.Alive = global.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(global.Dyzilla.Alive))
			end
		end
	end
end