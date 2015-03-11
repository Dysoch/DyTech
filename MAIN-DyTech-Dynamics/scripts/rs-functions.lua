module("RSF", package.seeall)
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
				if data.Hour <= remote.call("DyTech-Script", "Timer", "hours") and data.Minute <= remote.call("DyTech-Script", "Timer", "minutes") then
					game.player.force.recipes[Name].enabled = true
					PlayerPrint({"unlocked"})
					PlayerPrint({Name})
					glob.science = (glob.science-data.Points)
					glob.Unlocked[Name] = true
				else
					PlayerPrint({"not-enough-time"})
				end
			else
				game.player.force.recipes[Name].enabled = true
				PlayerPrint({"unlocked"})
				PlayerPrint({Name})
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