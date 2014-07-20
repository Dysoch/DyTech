require "defines"
--require "scripts/database"
require "scripts/dynamic-system"
require "scripts/dynamic-system-hard"
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
	if glob.DynamicSystem==true then
		if glob.HardMode==false then
		--[[Dynamic System unlocks]]--
		Dynamic.dynamicUnlocks(event, Dynamic.dsttime(), Dynamic.eventtime)
		--[[Rewards]]--
		Dynamic.dynamicRewards(event, Dynamic.dsttime(), Dynamic.eventtime)
		elseif glob.HardMode==true then
		--[[Dynamic System Hard Mode unlocks]]--
		DynamicHard.dynamicUnlocks(event, DynamicHard.dsttime(), DynamicHard.eventtime)
		--[[Rewards Hard Mode]]--
		DynamicHard.dynamicRewards(event, DynamicHard.dsttime(), DynamicHard.eventtime)
		end
	end
end)

game.onevent(defines.events.onplayercrafteditem, function(event)
	if not glob.CraftedItems[event.itemstack.name] then
		glob.CraftedItems[event.itemstack.name] = event.itemstack.count
	else
		glob.CraftedItems[event.itemstack.name] = glob.CraftedItems[event.itemstack.name] + event.itemstack.count
	end
end)

game.onevent(defines.events.onpickedupitem, function(event)
	if not glob.PickedItems[event.itemstack.name] then
		glob.PickedItems[event.itemstack.name] = event.itemstack.count
	else
		glob.PickedItems[event.itemstack.name] = glob.PickedItems[event.itemstack.name] + event.itemstack.count
	end
end)

game.onevent(defines.events.onplayermineditem, function(event)
	if not glob.MinedItems[event.itemstack.name] then
		glob.MinedItems[event.itemstack.name] = event.itemstack.count
	else
		glob.MinedItems[event.itemstack.name] = glob.MinedItems[event.itemstack.name] + event.itemstack.count
	end
end)

remote.addinterface("DyTech-Dynamic",
{
  CraftedItems = function() 
	fs.CraftedItems()
  end,
  
  PickedItems = function() 
	fs.PickedItems()
  end,
  
  MinedItems = function() 
	fs.MinedItems()
  end,
  
  ToggleDynamicSystem = function()
	fs.DynamicToggle()
  end,
  
  ToggleHardMode = function()
	fs.HardModeToggle()
  end
})