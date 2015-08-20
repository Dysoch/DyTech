module("RSF", package.seeall)
require "config"

function ClearToUnlock()
	global.ToUnlock = {}
end

function RSUnlock(Name)
local data = global.ResearchSystem.ItemUnlock[Name]
	if not global.ResearchSystem.Unlocked[Name] then
	global.ResearchSystem.Points = data.Points
		if global.ResearchSystem.science >= global.ResearchSystem.Points then
			for _,player in pairs(game.players) do
				player.force.recipes[Name].enabled = true
			end
			PlayerPrint({"unlocked", Name})
			global.ResearchSystem.science = (global.ResearchSystem.science-data.Points)
			UnlockedRecipe(Name, false)
			Amount_Of_Events()
			debug("Unlock Events left: "..global.ResearchSystem.Amount)
		else
			PlayerPrint({"not-enough-points"})
		end
	end
	ClearToUnlock()
	global.ResearchSystem.Points=0
end

function UnlockedRecipe(Name, bool)
local seconds = math.floor(game.tick/60)
local minutes = math.floor(seconds/60)
local hours = math.floor(minutes/60)
	global.ResearchSystem.Unlocked[Name] = {}
	global.ResearchSystem.Unlocked[Name].Done = true
	global.ResearchSystem.Unlocked[Name].Time = hours..":"..(minutes-(hours*60))..":"..(seconds-(minutes*60))
	global.ResearchSystem.Amount_Enabled = global.ResearchSystem.Amount_Enabled+1
end

function Amount_Of_Events()
	global.ResearchSystem.Amount = 0
	for RecipeName, info in pairs(global.ResearchSystem.ItemUnlock) do
		global.ResearchSystem.Amount = global.ResearchSystem.Amount + 1
	end
	global.ResearchSystem.Amount = global.ResearchSystem.Amount - global.ResearchSystem.Amount_Enabled
end

function RecipeAvailableToUnlockAll(TierRecipe)
if not global.ResearchSystem.RecipeAvailableToUnlock then global.ResearchSystem.RecipeAvailableToUnlock = {} end
global.ResearchSystem.RecipeAvailableToUnlock.All = 0
for RecipeName, info in pairs(global.ResearchSystem.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = global.ResearchSystem.ItemUnlock[RecipeName]
		if global.ResearchSystem.science > data.Points then
			global.ResearchSystem.RecipeAvailableToUnlock.All = global.ResearchSystem.RecipeAvailableToUnlock.All + 1
		end
	end
end
end

function DSgetResearchLevel(technology)
    return global.Technology[technology].TechLevel
end 

function RecipeAvailableToUnlockTier1()
global.ResearchSystem.RecipeAvailableToUnlock.Tier1 = 0
for RecipeName, info in pairs(global.ResearchSystem.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = global.ResearchSystem.ItemUnlock[RecipeName]
		if global.ResearchSystem.science > data.Points and data.Tier==1 then
			global.ResearchSystem.RecipeAvailableToUnlock.Tier1 = global.ResearchSystem.RecipeAvailableToUnlock.Tier1 + 1
		end
	end 
end
end

function RecipeAvailableToUnlockTier2()
global.ResearchSystem.RecipeAvailableToUnlock.Tier2 = 0
for RecipeName, info in pairs(global.ResearchSystem.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = global.ResearchSystem.ItemUnlock[RecipeName]
		if global.ResearchSystem.science > data.Points and data.Tier==2 then
			global.ResearchSystem.RecipeAvailableToUnlock.Tier2 = global.ResearchSystem.RecipeAvailableToUnlock.Tier2 + 1
		end
	end 
end
end

function RecipeAvailableToUnlockTier3()
global.ResearchSystem.RecipeAvailableToUnlock.Tier3 = 0
for RecipeName, info in pairs(global.ResearchSystem.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = global.ResearchSystem.ItemUnlock[RecipeName]
		if global.ResearchSystem.science > data.Points and data.Tier==3 then
			global.ResearchSystem.RecipeAvailableToUnlock.Tier3 = global.ResearchSystem.RecipeAvailableToUnlock.Tier3 + 1
		end
	end 
end
end

function RecipeAvailableToUnlockTier4()
global.ResearchSystem.RecipeAvailableToUnlock.Tier4 = 0
for RecipeName, info in pairs(global.ResearchSystem.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = global.ResearchSystem.ItemUnlock[RecipeName]
		if global.ResearchSystem.science > data.Points and data.Tier==4 then
			global.ResearchSystem.RecipeAvailableToUnlock.Tier4 = global.ResearchSystem.RecipeAvailableToUnlock.Tier4 + 1
		end
	end 
end
end

function Quickbars(STATEMENT)
	if STATEMENT == "+" then
		if global.ResearchSystem.science >= (500*game.forces.player.quickbar_count) then
			global.ResearchSystem.science = global.ResearchSystem.science - (500*game.forces.player.quickbar_count)
			game.forces.player.quickbar_count = game.forces.player.quickbar_count + 1
			PlayerPrint({"quickbar-increase"})
		end
	elseif STATEMENT == "-" then
		if game.forces.player.quickbar_count ~= 1 then
			game.forces.player.quickbar_count = game.forces.player.quickbar_count - 1
			global.ResearchSystem.science = global.ResearchSystem.science + (500*game.forces.player.quickbar_count)
			PlayerPrint({"quickbar-decrease"})
		end
	end
end

function Stacksize(STATEMENT)
	if STATEMENT == "+" then
		if global.ResearchSystem.science >= (250+(250*game.forces.player.inserter_stack_size_bonus)) then
			global.ResearchSystem.science = global.ResearchSystem.science - (250+(250*game.forces.player.inserter_stack_size_bonus))
			game.forces.player.inserter_stack_size_bonus = game.forces.player.inserter_stack_size_bonus + 1
			PlayerPrint({"stacksize-increase"})
		end
	elseif STATEMENT == "-" then
		if game.forces.player.inserter_stack_size_bonus ~= 0 then
			game.forces.player.inserter_stack_size_bonus = game.forces.player.inserter_stack_size_bonus - 1
			global.ResearchSystem.science = global.ResearchSystem.science + (250+(250*game.forces.player.inserter_stack_size_bonus))
			PlayerPrint({"stacksize-decrease"})
		end
	end
end

function Logistics(STATEMENT)
	if STATEMENT == "+" then
		if global.ResearchSystem.science >= (50+(50*game.forces.player.character_logistic_slot_count)) then
			global.ResearchSystem.science = global.ResearchSystem.science - (50+(50*game.forces.player.character_logistic_slot_count))
			game.forces.player.character_logistic_slot_count = game.forces.player.character_logistic_slot_count + 1
			game.forces.player.character_trash_slot_count = game.forces.player.character_trash_slot_count + 1
			PlayerPrint({"logistics-increase"})
		end
	elseif STATEMENT == "-" then
		if game.forces.player.character_logistic_slot_count ~= 0 then
			game.forces.player.character_logistic_slot_count = game.forces.player.character_logistic_slot_count - 1
			game.forces.player.character_trash_slot_count = game.forces.player.character_trash_slot_count - 1
			global.ResearchSystem.science = global.ResearchSystem.science + (50+(50*game.forces.player.character_logistic_slot_count))
			PlayerPrint({"logistics-decrease"})
		end
	end
end

function Combat_Robots(STATEMENT)
	if STATEMENT == "+" then
		if global.ResearchSystem.science >= (50+(50*game.forces.player.maximum_following_robot_count)) then
			global.ResearchSystem.science = global.ResearchSystem.science - (50+(50*game.forces.player.maximum_following_robot_count))
			game.forces.player.maximum_following_robot_count = game.forces.player.maximum_following_robot_count + 1
			PlayerPrint({"combat-increase"})
		end
	elseif STATEMENT == "-" then
		if game.forces.player.maximum_following_robot_count ~= 0 then
			game.forces.player.maximum_following_robot_count = game.forces.player.maximum_following_robot_count - 1
			global.ResearchSystem.science = global.ResearchSystem.science + (50+(50*game.forces.player.maximum_following_robot_count))
			PlayerPrint({"combat-decrease"})
		end
	end
end

function Lab_Increament(event)
	if event.tick%36000==35999 then
	local count = game.players[1].force.get_entity_count("lab")
	global.ResearchSystem.science = global.ResearchSystem.science + count
	end
end

function Add_To_Rewards()
	global.Lottery.Rewards = {}
	for name,bla in pairs(game.item_prototypes) do
		if string.sub(name,1,7) ~= "cursed-" then
			table.insert(global.Lottery.Rewards,name)
		end
	end
end

function Lottery(playerIndex)
	if global.Lottery.Text <= global.ResearchSystem.science then
		if not global.Lottery.Rewards then Add_To_Rewards() end
		if global.Lottery.Text < 100 then
			Chance = math.random(100)
			if Chance == 50 then
				global.Lottery.Won = global.Lottery.Won + 1
				game.players[playerIndex].print("YOU WON!")
				game.players[playerIndex].insert{name=global.Lottery.Rewards[math.random(#global.Lottery.Rewards)], count=math.random(1,5)}
			else	
				global.Lottery.Lost = global.Lottery.Lost + 1
				game.players[playerIndex].print("YOU LOST")
			end
		else
			Chance = math.random(math.floor(global.Lottery.Text*0.9),math.floor(global.Lottery.Text*1.1))
			if Chance == math.floor(global.Lottery.Text) then
				global.Lottery.Won = global.Lottery.Won + 1
				game.players[playerIndex].print("YOU WON!")
				game.players[playerIndex].insert{name=global.Lottery.Rewards[math.random(#global.Lottery.Rewards)], count=math.random(1,5)}
			else	
				global.Lottery.Lost = global.Lottery.Lost + 1
				game.players[playerIndex].print("YOU LOST")
			end
		end
		global.ResearchSystem.science = global.ResearchSystem.science - global.Lottery.Text
	else
		game.players[playerIndex].print("Not enough Science points!")
	end
end