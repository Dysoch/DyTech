require "defines"
require "scripts/database"
require "scripts/functions"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "dynamic")
	fs.OnInit()
end)

game.onsave(function()

end)

game.onload(function()
	fs.OnLoad()
end)

game.onevent(defines.events.ontick, function(event)
	--[[Checking to see which modules are installed. This happens every hour!]]--
	if event.tick%216000==0 then
		fs.ModuleCheck()
	end
end)

game.onevent(defines.events.onplayercrafteditem, function(event)
incrementDynamicCounters = function(stack)
	if database.craftitems[stack.name] then
		for counter, ingredients in pairs(database.craftitems[stack.name]) do
			if database.craftitems[counter] then
				incrementDynamicCounters({name=counter, count=ingredients})
			else
				glob.counter[counter]=glob.counter[counter]+(stack.count*ingredients)
			end
		end
	end
end
incrementDynamicCounters(event.itemstack)
end)

remote.addinterface("DyTech-Dynamic",
{

})