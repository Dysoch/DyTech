require "defines"
require "database/research"
require "scripts/functions"

game.oninit(function()
	glob.science=0
end)

game.onsave(function()

end)

game.onload(function()
	if not glob.science then glob.science=0 end
end)

game.onevent(defines.events.onresearchfinished, function(event)
	if ResearchDatabase.research[event.name] then
		for counter, ingredients in pairs(ResearchDatabase.research[event.name]) do 
			glob[counter]=glob[counter]+(1*ingredients)
		end
	end
end)

remote.addinterface("DyTech-Dynamics",
{  

})