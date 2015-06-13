module("CollectorFunctions", package.seeall)

function ticker()
	if glob.Collectors.CollectorList ~= nil then
		if glob.ticks == 0 or glob.ticks == nil then
			glob.ticks = 59
			processCollectors()
		else
			glob.ticks = glob.ticks - 1
		end
	end
end

function builtEntity(event)
	local newCollector
	
	if event.createdentity.name == "item-collector-area" then
		newCollector = game.createentity({name = "item-collector-area", position = event.createdentity.position, force = game.forces.player})
		event.createdentity.destroy()
		
		if glob.Collectors.CollectorList == nil then
			glob.Collectors.CollectorList = {}
			ticker()
		end
		
		table.insert(glob.Collectors.CollectorList, newCollector)
		if not glob.Collectors.Amount then
			glob.Collectors.Amount = 1
		else
			glob.Collectors.Amount = glob.Collectors.Amount + 1
		end
	end
end

AutoRange = 500

function processCollectors()
	local items
	local inventory
	local belt
for k,collector in pairs(glob.Collectors.CollectorList) do
	if collector.valid then
		if not glob.Collectors.AutomaticRange then
			items = game.findentitiesfiltered({area = {{x = collector.position.x - glob.Collectors.Range, y = collector.position.y - glob.Collectors.Range}, {x = collector.position.x + glob.Collectors.Range, y = collector.position.y + glob.Collectors.Range}}, name = "item-on-ground"})
			if #items > 0 then
				inventory = collector.getinventory(1)
				for _,item in pairs(items) do
					if not item.isitemonbelt() then
						if glob.Collectors.Filtered then
							if item.stack.name == "small-corpse" or
							item.stack.name == "medium-corpse" or
							item.stack.name == "big-corpse" or
							item.stack.name == "berserk-corpse" or
							item.stack.name == "elder-corpse" or
							item.stack.name == "king-corpse" or
							item.stack.name == "queen-corpse" then
								if inventory.caninsert(item.stack) then
									inventory.insert(item.stack)
									item.destroy()
									break
								end
							end
						else 
							if inventory.caninsert(item.stack) then
								inventory.insert(item.stack)
								item.destroy()
							break
							end
						end
					end
				end
			end
		else
			items = game.findentitiesfiltered({area = {{x = collector.position.x - (AutoRange/glob.Collectors.Amount), y = collector.position.y - (AutoRange/glob.Collectors.Amount)}, {x = collector.position.x + (AutoRange/glob.Collectors.Amount), y = collector.position.y + (AutoRange/glob.Collectors.Amount)}}, name = "item-on-ground"})
			if #items > 0 then
				inventory = collector.getinventory(1)
				for _,item in pairs(items) do
					if not item.isitemonbelt() then
						if glob.Collectors.Filtered then
							if item.stack.name == "small-corpse" or
							item.stack.name == "medium-corpse" or
							item.stack.name == "big-corpse" or
							item.stack.name == "berserk-corpse" or
							item.stack.name == "elder-corpse" or
							item.stack.name == "king-corpse" or
							item.stack.name == "queen-corpse" then
								if inventory.caninsert(item.stack) then
									inventory.insert(item.stack)
									item.destroy()
									break
								end
							end
						else 
							if inventory.caninsert(item.stack) then
								inventory.insert(item.stack)
								item.destroy()
							break
							end
						end
					end
				end
			end
		end
	else
		table.remove(glob.Collectors.CollectorList, k)
		if #glob.Collectors.CollectorList == 0 then
			glob.Collectors.CollectorList = nil
		end
	end
end
end

function showCollectorGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.center.add({type="flow", direction="vertical", name=guiNames.mainCollectorFlow})
player.gui.center[guiNames.mainCollectorFlow].add({type="frame", direction="vertical", name=guiNames.mainCollectorFrame, caption={"collector-gui"}})
adder = player.gui.center[guiNames.mainCollectorFlow][guiNames.mainCollectorFrame]
adder.add({type="button", name=guiNames.CollectorWorkingButton, caption={"collectors-working", tostring(glob.Collectors.Working)}})
adder.add({type="button", name=guiNames.CollectorFilteredButton, caption={"collectors-filtered", tostring(glob.Collectors.Filtered)}})
adder.add({type="button", name=guiNames.CollectorAutoRangeButton, caption={"collectors-autorange-1", tostring(glob.Collectors.AutomaticRange)}})
if not glob.Collectors.AutomaticRange then
	adder.add({type="button", name=guiNames.CollectorRangeMinusButton, caption="-"})
	adder.add({type="button", name=guiNames.CollectorRangeButton, caption={"collectors-range", tostring(glob.Collectors.Range*2), "x", tostring(glob.Collectors.Range*2)}})
	adder.add({type="button", name=guiNames.CollectorRangePlusButton, caption="+"})
else
	adder.add({type="label", name="CollectorsLabel-1", caption={"collectors-amount", tostring(glob.Collectors.Amount)}})
	adder.add({type="label", name="CollectorsLabel-2", caption={"collectors-autorange-2", tostring(math.floor((AutoRange/glob.Collectors.Amount)*2)), "x", tostring(math.floor((AutoRange/glob.Collectors.Amount)*2))}})
end
adder.add({type="button", name=guiNames.CloseButton, caption={"close"}})
end