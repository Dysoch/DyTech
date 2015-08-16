module("ARS", package.seeall)
require "scripts/rs-functions"

--[[ The Calculators for the time to check the events!]]--
eventtime = 60 -- This makes it that the automatic mode checks 1 event every second
function dsttime()
return ((Init_Amount() + 1)*eventtime) end

function Init_Amount()
	if global.ResearchSystem.Amount then
		return global.ResearchSystem.Amount
	else
		return 0
	end
end

function AutomaticRS(event) 
	for RecipeName, info in pairs(global.ResearchSystem.ItemUnlock) do
		if not global.ResearchSystem.Unlocked[RecipeName] then
		local info = global.ResearchSystem.ItemUnlock[RecipeName]
			if event.tick%dsttime()==(eventtime*info.Event) and global.ResearchSystem.science >= info.Points then 
				RSF.RSUnlock(RecipeName) 
			end
		end
	end
end