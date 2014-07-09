require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "dynamic")
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	--[[Checking to see which modules are installed. This happens every hour!]]--
	if event.tick%216000==0 then
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true else glob.modules.core = false end 
		if remote.call("DyTech-Core", "detectModule", "compatibility")==true then glob.modules.compatibility = true end 
		if remote.call("DyTech-Core", "detectModule", "energy")==true then glob.modules. = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
		if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true end 
	end
end)

remote.addinterface("DyTech-Dynamic",
{

})