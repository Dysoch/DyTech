module("ARS", package.seeall)
require "scripts/rs-functions"
require "database/research-system"

--[[ The Calculators for the time to check the events!]]--
dstotalevents = (global.ResearchSystem.Amount+1) -- This makes it select the amount of 
eventtime = 60 -- This makes it that the automatic mode checks 1 event every second
function dsttime()
return (dstotalevents*eventtime) end

function Amount_Of_Events()
	global.ResearchSystem.Amount = 0
	for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
		global.ResearchSystem.Amount = global.ResearchSystem.Amount + 1
	end
	global.ResearchSystem.Amount = global.ResearchSystem.Amount - global.ResearchSystem.Amount_Enabled
end

function AutomaticRS(event) 
	for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
		if not global.ResearchSystem.Unlocked[RecipeName] then
		local info = RSDatabase.ItemUnlock[RecipeName]
			if event.tick%dsttime()==(eventtime*info.Event) then 
				RSF.RSUnlock(RecipeName) 
			end
		end
	end
end