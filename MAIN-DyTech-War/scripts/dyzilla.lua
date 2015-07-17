module("Dyzilla", package.seeall)

function Startup()
glob.Dyzilla = {}
glob.Dyzilla.Chunks = 0
glob.Dyzilla.Alive = 0
glob.Dyzilla.Dead = 0
glob.Dyzilla.Max = 0
end

function Easy(event)
	glob.Dyzilla.Max = 0
	if math.random(500)==5 then
	debug("chance happened (Easy)")
		if glob.Dyzilla.Alive <= glob.Dyzilla.Max and glob.Dyzilla.Chunks > 2500 then
		debug("Max spawners is not 0 (Easy)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				glob.Dyzilla.Alive = glob.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(glob.Dyzilla.Alive))
			end
		end
	end
end

function Medium(event)
	glob.Dyzilla.Max = 1
	if math.random(500)==5 then
	debug("chance happened (Medium)")
		if glob.Dyzilla.Alive <= glob.Dyzilla.Max and glob.Dyzilla.Chunks > 2000 then
		debug("Max spawners is not 0 (Medium)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				glob.Dyzilla.Alive = glob.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(glob.Dyzilla.Alive))
			end
		end
	end
end

function Hard(event)
	glob.Dyzilla.Max = 2
	if math.random(300)==5 then
	debug("chance happened (Hard)")
		if glob.Dyzilla.Alive <= glob.Dyzilla.Max and glob.Dyzilla.Chunks > 1500 then
		debug("Max spawners is not 0 (Hard)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				glob.Dyzilla.Alive = glob.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(glob.Dyzilla.Alive))
			end
		end
	end
end

function Insane(event)
	glob.Dyzilla.Max = 4
	if math.random(150)==5 then
	debug("chance happened (Insane)")
		if glob.Dyzilla.Alive <= glob.Dyzilla.Max and glob.Dyzilla.Chunks > 1000 then
		debug("Max spawners is not 0 (Insane)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				glob.Dyzilla.Alive = glob.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(glob.Dyzilla.Alive))
			end
		end
	end
end

function Extreme(event)
	glob.Dyzilla.Max = 9
	if math.random(50)==5 then
	debug("chance happened (Extreme)")
		if glob.Dyzilla.Alive <= glob.Dyzilla.Max and glob.Dyzilla.Chunks > 500 then
		debug("Max spawners is not 0 (Extreme)")
		local BuildEntity = "dyzilla-spawner"
		local PosX = event.area.lefttop.x+math.random(32)
		local PosY = event.area.lefttop.y+math.random(32)
			if game.canplaceentity{name=(BuildEntity), position={PosX,PosY}} then 
				game.createentity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.enemy}
				glob.Dyzilla.Alive = glob.Dyzilla.Alive + 1
				PlayerPrint("Dyzilla Spawner has been FOUND!")
				debug(tostring(glob.Dyzilla.Alive))
			end
		end
	end
end