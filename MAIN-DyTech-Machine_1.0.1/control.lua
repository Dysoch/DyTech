require "defines"
require "scripts/functions"

remote.addinterface("DyTech-Machine",
{  
	TestMetallurgy = function(pIndex)
		if pIndex == 0 then
			for i,_ in ipairs(game.players) do
				Functions.TestMetallurgy(i)
			end
		elseif game.players[pIndex] == nil then return
		else
			Functions.TestMetallurgy(pIndex)
		end
	end
})