module("RSF", package.seeall)
require "database/research-system"

function RSUnlock(Name)
	if not glob.Unlocked[Name] then
	local info = RSDatabase.ItemUnlock[Name]
		if glob.science >= info.Points then
			if Research_System_Time_Usage then
				if info.Hour <= remote.call("DyTech-Script", "Timer", "hours") and info.Minute <= remote.call("DyTech-Script", "Timer", "minutes") then
					game.player.force.recipes[info.Name].enabled = true
					PlayerPrint({"unlocked", {info.Name, {"!"}}})
					glob.Unlocked[Name] = true
				else
					PlayerPrint({"not-enough-time"})
					break
				end
			else
				game.player.force.recipes[info.Name].enabled = true
				PlayerPrint({"unlocked", {info.Name, {"!"}}})
				glob.Unlocked[Name] = true
			end
		else
			PlayerPrint({"not-enough-points"})
		end
	end
end