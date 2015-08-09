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
			PlayerPrint({"unlocked", {data.Locale.."-name."..Name}})
			global.ResearchSystem.science = (global.ResearchSystem.science-data.Points)
			UnlockedRecipe(Name, false)
			Amount_Of_Events()
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
		if global.ResearchSystem.science > data.Points and DSgetResearchLevel(data.Tech)==1 then
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
		if global.ResearchSystem.science > data.Points and DSgetResearchLevel(data.Tech)==2 then
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
		if global.ResearchSystem.science > data.Points and DSgetResearchLevel(data.Tech)==3 then
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
		if global.ResearchSystem.science > data.Points and DSgetResearchLevel(data.Tech)==4 then
			global.ResearchSystem.RecipeAvailableToUnlock.Tier4 = global.ResearchSystem.RecipeAvailableToUnlock.Tier4 + 1
		end
	end 
end
end