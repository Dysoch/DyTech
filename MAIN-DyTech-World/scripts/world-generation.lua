module("Generation", package.seeall)
require "config"
require "scripts.functions"

function Loot_Spawner(AREA, MAX_AMOUNT, event)
	if global.Counter.Loot_ItemCount < global.Counter.Chunks then
	local BuildEntity=global.RandomEntity.Loot[math.random(#global.RandomEntity.Loot)]
	local PosX = event.area.left_top.x+math.random(AREA)
	local PosY = event.area.left_top.y+math.random(AREA)
	local ItemAmount = math.random(1,MAX_AMOUNT)
		if game.get_surface("nauvis").can_place_entity{name = "item-on-ground", position={PosX,PosY}, stack = {name=(BuildEntity)}} then 
			game.get_surface("nauvis").create_entity{name = "item-on-ground", position={PosX,PosY}, stack = {name=(BuildEntity), count = ItemAmount}}
			fs.SpawnCounter(1, ItemAmount)
			debug("Generator: Tier 1: Created Item-On-Ground: "..BuildEntity.." ("..ItemAmount..") at "..PosX..", "..PosY)
		end
	end
end

function Ruins_Spawner(event)
	for i = 1, (math.random(5,300)) do
		BuildEntity = global.RandomEntity.Ruins[math.random(#global.RandomEntity.Ruins)]
		PosX = event.area.left_top.x+math.random(100)
		PosY = event.area.left_top.y+math.random(100)
		if game.get_surface("nauvis").can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
			game.get_surface("nauvis").create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
			fs.SpawnCounter(2)
			global.RandomEntity.Ruins_Spawned.Chunk = global.RandomEntity.Ruins_Spawned.Chunk + 1
		end
	end
	if (math.random(100) < 4) then Loot_Spawner(31, 5, event) end
	if (math.random(100) < 2) then Chest_Spawner(63, 10, 1000, false, event) end
	debug("Generator: Tier 2: Created "..BuildEntity.." ("..global.RandomEntity.Ruins_Spawned.Chunk..") at "..PosX..", "..PosY)
	global.RandomEntity.Ruins_Spawned.Chunk = 0
end

function Chest_Spawner(AREA, MAX_AMOUNT, CHUNKS, STATEMENT, event)
	local BuildEntity=global.RandomEntity.Chests[math.random(#global.RandomEntity.Chests)]
	local PosX = event.area.left_top.x+math.random(AREA)
	local PosY = event.area.left_top.y+math.random(AREA)
	if game.get_surface("nauvis").can_place_entity{name=(BuildEntity), position={PosX,PosY}} then 
		local Chest = game.get_surface("nauvis").create_entity{name=(BuildEntity), position={PosX,PosY}, force=game.forces.neutral}
		if (math.random(100) < 60) and global.Counter.Chunks > CHUNKS and STATEMENT then
			for i = 1, (math.random(2,5)) do
				local Insert=global.RandomEntity.Special_Loot[math.random(#global.RandomEntity.Special_Loot)]
				local Amount = math.random(MAX_AMOUNT)
				Chest.insert{name=Insert, count=Amount}
				fs.SpawnCounter(3, Amount)
			debug("Generator: Chests with Special_Loot: Created "..BuildEntity.." at "..PosX..", "..PosY)
			end
		elseif (math.random(100) < 60) and global.Counter.Chunks > CHUNKS and not STATEMENT then
			for i = 1, (math.random(2,5)) do
				local Insert=global.RandomEntity.Loot[math.random(#global.RandomEntity.Loot)]
				local Amount = math.random(MAX_AMOUNT)
				Chest.insert{name=Insert, count=Amount}
				fs.SpawnCounter(3, Amount)
			debug("Generator: Chests with Loot: Created "..BuildEntity.." at "..PosX..", "..PosY)
			end
		else
			fs.SpawnCounter(3, 0)
		debug("Generator: Chests: Created "..BuildEntity.." at "..PosX..", "..PosY)
		end
	end
end

Testers_Locale = {"tester-ruins-1","tester-ruins-2","tester-ruins-3","tester-ruins-4","tester-ruins-5"}

function Massive_Ruin_Spawner(TESTER, event)
	if not global.TestersDone[TESTER] then
		for i = 1, (math.random(250,1500)) do
		BuildEntity4 = global.RandomEntity.Ruins[math.random(#global.RandomEntity.Ruins)]
		PosX4 = event.area.left_top.x+math.random(191)
		PosY4 = event.area.left_top.y+math.random(191)
			if game.get_surface("nauvis").can_place_entity{name=(BuildEntity4), position={PosX4,PosY4}} then 
				game.get_surface("nauvis").create_entity{name=(BuildEntity4), position={PosX4,PosY4}, force=game.forces.neutral}
				fs.SpawnCounter(4)
				global.RandomEntity.Massive_Ruins_Spawned.Chunk = global.RandomEntity.Massive_Ruins_Spawned.Chunk + 1
			end
		end
		for i = 1, (math.random(5,20)) do
			if (math.random(100) < 20) then Loot_Spawner(191, 25, event) end
			if (math.random(100) < 20) then Chest_Spawner(191, 25, 5, true, event) end
			
		end
		debug("Generator: Tier 2: Created "..BuildEntity4.." ("..global.RandomEntity.Massive_Ruins_Spawned.Chunk..") at "..PosX4..", "..PosY4)
		global.RandomEntity.Massive_Ruins_Spawned.Chunk = 0
		PlayerPrint({Testers_Locale[math.random(#Testers_Locale)], TESTER, PosX4, PosY4})
		global.RandomEntity.Massive_Ruins_Spawned.Total = global.RandomEntity.Massive_Ruins_Spawned.Total + 1
	end
	global.TestersDone[TESTER] = true
end