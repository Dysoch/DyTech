module("RSF", package.seeall)
require "config"
require "database/research-system"

function ClearToUnlock()
	global.ToUnlock = {}
end

function RSUnlock(Name)
local data = RSDatabase.ItemUnlock[Name]
	if not global.ResearchSystem.Unlocked[Name] then
	global.ResearchSystem.Points = data.Points
		if global.ResearchSystem.science >= global.ResearchSystem.Points then
			if Research_System_Time_Usage then
				if (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) then
					for _,player in pairs(game.players) do
						player.force.recipes[Name].enabled = true
					end
					PlayerPrint({"unlocked", {data.Locale.."-name."..Name}})
					global.ResearchSystem.science = (global.ResearchSystem.science-data.Points)
					UnlockedRecipe(Name, true)
				else
					PlayerPrint({"not-enough-time"})
				end
			else
				for _,player in pairs(game.players) do
					player.force.recipes[Name].enabled = true
				end
				PlayerPrint({"unlocked", {data.Locale.."-name."..Name}})
				global.ResearchSystem.science = (global.ResearchSystem.science-data.Points)
				UnlockedRecipe(Name, false)
			end
		else
			PlayerPrint({"not-enough-points"})
		end
	end
	ClearToUnlock()
	global.ResearchSystem.Points=0
end

function UnlockedRecipe(Name, bool)
	global.ResearchSystem.Unlocked[Name] = {}
	global.ResearchSystem.Unlocked[Name].Done = true
	global.ResearchSystem.Unlocked[Name].TimeUsage = bool
	global.ResearchSystem.Unlocked[Name].Time = remote.call("DyTech-Core", "Timer", "hours")..":"..remote.call("DyTech-Core", "Timer", "minutes")..":"..remote.call("DyTech-Core", "Timer", "seconds")
end

function RecipeAvailableToUnlockAll(TierRecipe)
if not global.ResearchSystem.RecipeAvailableToUnlock then global.ResearchSystem.RecipeAvailableToUnlock = {} end
global.ResearchSystem.RecipeAvailableToUnlock.All = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if global.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) then
				global.ResearchSystem.RecipeAvailableToUnlock.All = global.ResearchSystem.RecipeAvailableToUnlock.All + 1
			end
		else
			if global.ResearchSystem.science > data.Points then
				global.ResearchSystem.RecipeAvailableToUnlock.All = global.ResearchSystem.RecipeAvailableToUnlock.All + 1
			end
		end
	end
end
end 

function RecipeAvailableToUnlockTier1()
global.ResearchSystem.RecipeAvailableToUnlock.Tier1 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if global.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==1 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier1 = global.ResearchSystem.RecipeAvailableToUnlock.Tier1 + 1
			end
		else
			if global.ResearchSystem.science > data.Points and data.Tier==1 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier1 = global.ResearchSystem.RecipeAvailableToUnlock.Tier1 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier2()
global.ResearchSystem.RecipeAvailableToUnlock.Tier2 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if global.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==2 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier2 = global.ResearchSystem.RecipeAvailableToUnlock.Tier2 + 1
			end
		else
			if global.ResearchSystem.science > data.Points and data.Tier==2 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier2 = global.ResearchSystem.RecipeAvailableToUnlock.Tier2 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier3()
global.ResearchSystem.RecipeAvailableToUnlock.Tier3 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if global.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==3 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier3 = global.ResearchSystem.RecipeAvailableToUnlock.Tier3 + 1
			end
		else
			if global.ResearchSystem.science > data.Points and data.Tier==3 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier3 = global.ResearchSystem.RecipeAvailableToUnlock.Tier3 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier4()
global.ResearchSystem.RecipeAvailableToUnlock.Tier4 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not global.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if global.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==4 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier4 = global.ResearchSystem.RecipeAvailableToUnlock.Tier4 + 1
			end
		else
			if global.ResearchSystem.science > data.Points and data.Tier==4 then
				global.ResearchSystem.RecipeAvailableToUnlock.Tier4 = global.ResearchSystem.RecipeAvailableToUnlock.Tier4 + 1
			end
		end
	end 
end
end