module("RSF", package.seeall)
require "config"
require "database/research-system"

function ClearToUnlock()
	glob.ToUnlock = {}
end

function RSUnlock(Name)
local data = RSDatabase.ItemUnlock[Name]
	if not glob.Unlocked[Name] then
	glob.Points = data.Points
		if glob.science >= glob.Points then
			if Research_System_Time_Usage then
				if (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) then
					game.player.force.recipes[Name].enabled = true
					PlayerPrint({"unlocked", {data.Locale.."-name."..Name}})
					glob.science = (glob.science-data.Points)
					glob.Unlocked[Name] = true
				else
					PlayerPrint({"not-enough-time"})
				end
			else
				game.player.force.recipes[Name].enabled = true
				PlayerPrint({"unlocked", {data.Locale.."-name."..Name}})
				glob.science = (glob.science-data.Points)
				glob.Unlocked[Name] = true
			end
		else
			PlayerPrint({"not-enough-points"})
		end
	end
	ClearToUnlock()
	glob.Points=0
end

function RecipeAvailableToUnlockAll(TierRecipe)
if not glob.RecipeAvailableToUnlock then glob.RecipeAvailableToUnlock = {} end
glob.RecipeAvailableToUnlock.All = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) then
				glob.RecipeAvailableToUnlock.All = glob.RecipeAvailableToUnlock.All + 1
			end
		else
			if glob.science > data.Points then
				glob.RecipeAvailableToUnlock.All = glob.RecipeAvailableToUnlock.All + 1
			end
		end
	end
end
end 

function RecipeAvailableToUnlockTier1()
glob.RecipeAvailableToUnlock.Tier1 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) and data.Tier==1 then
				glob.RecipeAvailableToUnlock.Tier1 = glob.RecipeAvailableToUnlock.Tier1 + 1
			end
		else
			if glob.science > data.Points and data.Tier==1 then
				glob.RecipeAvailableToUnlock.Tier1 = glob.RecipeAvailableToUnlock.Tier1 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier2()
glob.RecipeAvailableToUnlock.Tier2 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) and data.Tier==2 then
				glob.RecipeAvailableToUnlock.Tier2 = glob.RecipeAvailableToUnlock.Tier2 + 1
			end
		else
			if glob.science > data.Points and data.Tier==2 then
				glob.RecipeAvailableToUnlock.Tier2 = glob.RecipeAvailableToUnlock.Tier2 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier3()
glob.RecipeAvailableToUnlock.Tier3 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) and data.Tier==3 then
				glob.RecipeAvailableToUnlock.Tier3 = glob.RecipeAvailableToUnlock.Tier3 + 1
			end
		else
			if glob.science > data.Points and data.Tier==3 then
				glob.RecipeAvailableToUnlock.Tier3 = glob.RecipeAvailableToUnlock.Tier3 + 1
			end
		end
	end 
end
end

function RecipeAvailableToUnlockTier4()
glob.RecipeAvailableToUnlock.Tier4 = 0
for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
	if not glob.Unlocked[RecipeName] then
	local data = RSDatabase.ItemUnlock[RecipeName]
		if Research_System_Time_Usage then
			if glob.science > data.Points and (data.Minute+(data.Hour*60)) < (remote.call("DyTech-Script", "Timer", "Minutes")+(remote.call("DyTech-Script", "Timer", "hours")*60)) and data.Tier==4 then
				glob.RecipeAvailableToUnlock.Tier4 = glob.RecipeAvailableToUnlock.Tier4 + 1
			end
		else
			if glob.science > data.Points and data.Tier==4 then
				glob.RecipeAvailableToUnlock.Tier4 = glob.RecipeAvailableToUnlock.Tier4 + 1
			end
		end
	end 
end
end