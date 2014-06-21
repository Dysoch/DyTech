require "defines"

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "storage")
glob.stone={}
glob.stonecount=0
--glob.sand={}
--glob.sandcount=0
glob.coal={}
glob.coalcount=0
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.ontick, function(event)
	--[[Stone Collector]]--
    if glob.stone~=nil and event.tick%12==0 then
		CollectByPosition("stone", 1.5, true)
	end
	--[[Sand Collector]]--
--	if glob.sand~=nil and event.tick%12==0 then
--		CollectByPosition("sand", 1.5, true)
--	end
	--[[Coal Collector]]--
	if glob.coal~=nil and event.tick%12==0 then
		CollectByPosition("coal", 1.5, true)
	end
end)

game.onevent(defines.events.onbuiltentity, function(event)
	--[[Stone Collector Build]]--
	if event.createdentity.name == "stone-collector-1" then				
		if glob.stone==nil then
			glob.stone={}
			glob.stonecount=0
		end
		glob.stonecount=glob.stonecount+1
		glob.stone[glob.stonecount]={}
		glob.stone[glob.stonecount].position=event.createdentity.position
	--[[Sand Collector Build]]--
--	elseif event.createdentity.name == "sand-collector-1" then				
--		if glob.sand==nil then
--			glob.sand={}
--			glob.sandcount=0
--		end
--		glob.sandcount=glob.sandcount+1
--		glob.sand[glob.sandcount]={}
--		glob.sand[glob.sandcount].position=event.createdentity.position
	--[[Coal Collector Build]]--
	elseif event.createdentity.name == "coal-collector-1" then				
		if glob.coal==nil then
			glob.coal={}
			glob.coalcount=0
		end
		glob.coalcount=glob.coalcount+1
		glob.coal[glob.coalcount]={}
		glob.coal[glob.coalcount].position=event.createdentity.position
	end
end)

function getboundingbox(position, radius)
return {position.x-radius, position.y-radius}, {position.x+radius,position.y+radius} end

function CollectByPosition(name, radius, ext)
	local realname=name.."-collector"
	if ext then realname=realname.."-1" end
	for i, value in pairs(glob[name]) do
    local foundcollector=game.findentitiesfiltered{name=realname, area={getboundingbox(value.position, 1)}}
		if not foundcollector[1] then
		table.remove(glob[name], i)
		break
		else
			for _, item in pairs(game.findentitiesfiltered{name="item-on-ground", area={getboundingbox(value.position, radius)}}) do
				if item.stack.name==name and foundcollector[1].caninsert{name=name, count=1} then
					foundcollector[1].insert{name=name, count=1}
					game.createentity{name="item-pickup-dytech", position={value.position.x, value.position.y+0.5}}
					item.destroy()
				break
				end
			end
		end
	end
end

remote.addinterface("DyTech-Storage",
{

})