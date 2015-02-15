module("RSF", package.seeall)
require "database/research-system"

function RSRemote(Name)
	if not glob.Unlocked[Name] then
		for name, ingredients in pairs(RSDatabase.ItemUnlock[Name]) do 
			if glob.science > ingredients then
				game.player.force.recipes[name] = true
				PlayerPrint({"unlocked", {name, {"!"}}})
			elseif glob.science < ingredients then 
				PlayerPrint({"not-enough-points"})
			end
		end
	end
end