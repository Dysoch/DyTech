require "defines"
require "config"
require "scripts/functions"

remote.add_interface("DyTech-Machine",
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
	end,
	
	DataDump = function()
		game.makefile("DyTech/Config/Machine.txt", serpent.block(Config))	
	end
})