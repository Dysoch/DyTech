module("fs", package.seeall)
require "config"

function Startup()
	if not global.RandomEntity then global.RandomEntity = {} end
	if not global.RandomEntity.Loot then global.RandomEntity.Loot = {"stone"} end
	if not global.RandomEntity.Ruins  then global.RandomEntity.Ruins = {"stone-ruin-1", "stone-ruin-2", "stone-ruin-3", "stone-ruin-4", "stone-ruin-5", "stone-ruin-6", "stone-ruin-7", "stone-ruin-8", "scorchmark-1", "scorchmark-2"} end
	if not global.RandomEntity.Special_Loot then global.RandomEntity.Special_Loot = {"pistol"} end
	Add_To_Random_Entity()
	if not global.RandomEntity.Ruins_Spawned  then global.RandomEntity.Ruins_Spawned = {} end
	if not global.RandomEntity.Ruins_Spawned.Total  then global.RandomEntity.Ruins_Spawned.Total = 0 end
	if not global.RandomEntity.Ruins_Spawned.Chunk  then global.RandomEntity.Ruins_Spawned.Chunk = 0 end
	if not global.RandomEntity.Chests then global.RandomEntity.Chests = {"wooden-chest", "iron-chest", "steel-chest", "smart-chest"} end
	if not global.RandomEntity.Massive_Ruins_Spawned  then global.RandomEntity.Massive_Ruins_Spawned = {} end
	if not global.RandomEntity.Massive_Ruins_Spawned.Total  then global.RandomEntity.Massive_Ruins_Spawned.Total = 1 end
	if not global.RandomEntity.Massive_Ruins_Spawned.Chunk  then global.RandomEntity.Massive_Ruins_Spawned.Chunk = 0 end
	if not global.Counter then global.Counter = {Chunks=0, Total=0, Loot=0, Ruins=0, Chests=0, Massive_Ruins=0, Loot_ItemCount=0, Chests_Loot_ItemCount=0} end
	if not global.XP then global.XP = {} end
	if not global.XP.Level then global.XP.Level = 1 end
	if not global.XP.GUI then global.XP.GUI = false end
	if not global.XP.Building then global.XP.Building = {} end
	if not global.XP.Building.Total then global.XP.Building.Total = 0 end
	if not global.XP.Building.Set then global.XP.Building.Set = 0 end
	if not global.XP.Building.Level then global.XP.Building.Level = 1 end
	if not global.XP.Building.Needed then global.XP.Building.Needed = math.random(25,150) end
	if not global.XP.Explore then global.XP.Explore = {} end
	if not global.XP.Explore.Total then global.XP.Explore.Total = 0 end
	if not global.XP.Explore.Set then global.XP.Explore.Set = 0 end
	if not global.XP.Explore.Level then global.XP.Explore.Level = 1 end
	if not global.XP.Explore.Needed then global.XP.Explore.Needed = math.random(400,600) end
	if not global.XP.Crafting then global.XP.Crafting = {} end
	if not global.XP.Crafting.Total then global.XP.Crafting.Total = 0 end
	if not global.XP.Crafting.Set then global.XP.Crafting.Set = 0 end
	if not global.XP.Crafting.Level then global.XP.Crafting.Level = 1 end
	if not global.XP.Crafting.Needed then global.XP.Crafting.Needed = math.random(25,150) end
	if not global.XP.Crafting.Bonus then global.XP.Crafting.Bonus = 0 end
	if not global.XP.Mining then global.XP.Mining = {} end
	if not global.XP.Mining.Total then global.XP.Mining.Total = 0 end
	if not global.XP.Mining.Set then global.XP.Mining.Set = 0 end
	if not global.XP.Mining.Level then global.XP.Mining.Level = 1 end
	if not global.XP.Mining.Needed then global.XP.Mining.Needed = math.random(25,150) end
	if not global.XP.Mining.Bonus then global.XP.Mining.Bonus = 0 end
	if not global.XP.Fighting then global.XP.Fighting = {} end
	if not global.XP.Fighting.Category then global.XP.Fighting.Category = {"bullet","rocket","flame-thrower","shotgun-shell","railgun","cannon-shell","combat-robot-laser","laser-turret","electric","capsule","combat-robot-beam"} end
	if not global.XP.Fighting.Level then global.XP.Fighting.Level = 1 end
	if not global.XP.Fighting.Needed then global.XP.Fighting.Needed = math.random(100,250) end
	if not global.XP.Fighting.Bonus then global.XP.Fighting.Bonus = 0 end
	if not global.XP.Fighting.Killed_Total then global.XP.Fighting.Killed_Total = 0 end
	if not global.XP.Fighting.Killed_Set then global.XP.Fighting.Killed_Set = 0 end
	if not global.XP.Fighting.Extinction then global.XP.Fighting.Extinction = 0 end
	if not global.XP.Research then global.XP.Research = 0 end
	if not global.Testers then global.Testers = {"SuicidalKid","WoodyDaOcas","L0771","Chernosliv","Xterminator","Oninaig","Bonsai","DreamSmith","Ritoshi"} end
	if not global.TestersDone then global.TestersDone = {SuicidalKid=false,WoodyDaOcas=false,L0771=false,Chernosliv=false,Xterminator=false,Oninaig=false,Bonsai=false,DreamSmith=false,Ritoshi=false} end
end

function incrementCounter(name, amount)
  n = amount or 1
	global.Counter[name] = global.Counter[name] + n
end

--[[ todo: refactor. use loot tables and loot levels, not just "all loot". mkvii power armor randomly is imba. ]]
function Add_To_Random_Entity()
	if not Config.Leveled_Loot_List then
		global.RandomEntity.Loot = {}
		global.RandomEntity.Special_Loot = {}
		for name,bla in pairs(game.item_prototypes) do
			if string.sub(name,1,7) ~= "cursed-" then
				table.insert(global.RandomEntity.Loot,name)
				table.insert(global.RandomEntity.Special_Loot,name)
			end
		end
		debug("Added all items from all mods to the Loot table")
	end
end

function Amount_Players()
	global.Players = 0
	for _,player in pairs(game.players) do
		global.Players = global.Players + 1
	end
	return global.Players
end

function SpawnCounter(statement, Amount)
	if not global.Counter then global.Counter = {Chunks=0, Total=0, Loot=0, Ruins=0, Chests=0, Massive_Ruins=0, Loot_ItemCount=0, Chests_Loot_ItemCount=0} end
	if statement == 1 then
		global.Counter.Loot = global.Counter.Loot + 1
		global.Counter.Loot_ItemCount = global.Counter.Loot_ItemCount + Amount
	elseif statement == 2 then
		global.Counter.Ruins = global.Counter.Ruins + 1
	elseif statement == 3 then
		global.Counter.Chests = global.Counter.Chests + 1
		global.Counter.Chests_Loot_ItemCount = global.Counter.Chests_Loot_ItemCount + Amount
	elseif statement == 4 then
		global.Counter.Massive_Ruins = global.Counter.Massive_Ruins + 1
	end
	global.Counter.Total = global.Counter.Total + 1
end