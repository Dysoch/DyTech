module("RSF", package.seeall)
require "config"
require "database/research-system"

function ClearToUnlock()
	glob.ToUnlock = {}
end

function RSUnlock(Name)
local data = RSDatabase.ItemUnlock[Name]
	if not glob.ResearchSystem.Unlocked[Name] then
	glob.ResearchSystem.Points = data.Points
		if glob.ResearchSystem.science >= glob.ResearchSystem.Points then
			if Research_System_Time_Usage then
				if (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) then
					for _,player in pairs(game.players) do
						player.force.recipes[Name].enabled = true
					end
					PlayerPrint({"unlocked", {data.Locale.."-name."..Name}})
					glob.ResearchSystem.science = (glob.ResearchSystem.science-data.Points)
					UnlockedRecipe(Name, true)
				else
					PlayerPrint({"not-enough-time"})
				end
			else
				for _,player in pairs(game.players) do
					player.force.recipes[Name].enabled = true
				end
				PlayerPrint({"unlocked", {data.Locale.."-name."..Name}})
				glob.ResearchSystem.science = (glob.ResearchSystem.science-data.Points)
				UnlockedRecipe(Name, false)
			end
		else
			PlayerPrint({"not-enough-points"})
		end
	end
	ClearToUnlock()
	glob.ResearchSystem.Points=0
end

function UnlockedRecipe(Name, bool)
	glob.ResearchSystem.Unlocked[Name] = {}
	glob.ResearchSystem.Unlocked[Name].Done = true
	glob.ResearchSystem.Unlocked[Name].TimeUsage = bool
	glob.ResearchSystem.Unlocked[Name].Time = remote.call("DyTech-Core", "Timer", "hours")..":"..remote.call("DyTech-Core", "Timer", "minutes")..":"..remote.call("DyTech-Core", "Timer", "seconds")
end

function RecipeAvailableToUnlockAll(TierRecipe)
if not glob.ResearchSystem.RecipeAvailableToUnlock then glob.ResearchSystem.RecipeAvailableToUnlock = {} end
glob.ResearchSystem.RecipeAvailableToUnlock.All = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) then
				glob.ResearchSystem.RecipeAvailableToUnlock.All = glob.ResearchSystem.RecipeAvailableToUnlock.All + 1
			end
		else
			if glob.ResearchSystem.science > data.Points then
				glob.ResearchSystem.RecipeAvailableToUnlock.All = glob.ResearchSystem.RecipeAvailableToUnlock.All + 1
			end
		end
	end
end
end 

function RecipeAvailableToUnlockTier1()
glob.ResearchSystem.RecipeAvailableToUnlock.Tier1 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==1 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier1 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier1 + 1
			end
		else
			if glob.ResearchSystem.science > data.Points and data.Tier==1 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier1 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier1 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier2()
glob.ResearchSystem.RecipeAvailableToUnlock.Tier2 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==2 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier2 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier2 + 1
			end
		else
			if glob.ResearchSystem.science > data.Points and data.Tier==2 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier2 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier2 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier3()
glob.ResearchSystem.RecipeAvailableToUnlock.Tier3 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==3 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier3 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier3 + 1
			end
		else
			if glob.ResearchSystem.science > data.Points and data.Tier==3 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier3 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier3 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier4()
glob.ResearchSystem.RecipeAvailableToUnlock.Tier4 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.ResearchSystem.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.ResearchSystem.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Core", "Timer", "Minutes")+(remote.call("DyTech-Core", "Timer", "hours")*60)) and data.Tier==4 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier4 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier4 + 1
			end
		else
			if glob.ResearchSystem.science > data.Points and data.Tier==4 then
				glob.ResearchSystem.RecipeAvailableToUnlock.Tier4 = glob.ResearchSystem.RecipeAvailableToUnlock.Tier4 + 1
			end
		end
	end 
end
end