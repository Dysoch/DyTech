module("ARS", package.seeall)
require "scripts/rs-functions"
require "database/research-system"

--[[ The Calculators for the time to check the events!]]--
dstotalevents = 1801 -- This makes 30 minutes before the entire unlock event starts again
eventtime = 60 -- This makes it that the automatic mode checks 1 event every second
function dsttime()
return (dstotalevents*eventtime) end

function AutomaticRS(event) 
	for RecipeName, info in pairs(RSDatabase.ItemUnlock) do
		if not glob.Unlocked[RecipeName] then
		local info = RSDatabase.ItemUnlock[RecipeName]
			if event.tick%dsttime()==(eventtime*info.Event) then 
				RSF.RSUnlock(RecipeName) 
			end
		end
	end
end