require "defines"

local chests
local minedChests
local terminalChestInstalled
local energyPerItemMoved = 1000
-- This is only used to track research completed - changing it won't increase the maximum beyond 5
-- Setting this to false disables the picking up of compression chests
-- Set to 0 to enable - NOTE you must also enable the research in Compression Chests\prototypes\technologies.lua
local maximumPickedUpCompressionChests = false
local loaded
local ticks

game.forces.player.recipes["compression-chest"].enabled = game.forces.player.technologies["logistics-3"].researched
game.forces.player.recipes["compression-power-pole"].enabled = game.forces.player.technologies["logistics-3"].researched
game.forces.player.recipes["compression-mover"].enabled = game.forces.player.technologies["move-compression-chest"].researched

game.oninit(function()
	remote.call("DyTech-Core", "addModule", "storage")
	terminalChestInstalled = isTerminalChestInstalled()
	loaded = true
end)

game.onload(function()
	if not loaded then
		loaded = true
		game.forces.player.recipes["compression-chest"].enabled = game.forces.player.technologies["logistics-3"].researched
		game.forces.player.recipes["compression-power-pole"].enabled = game.forces.player.technologies["logistics-3"].researched
		game.forces.player.recipes["compression-mover"].enabled = game.forces.player.technologies["move-compression-chest"].researched
		
		terminalChestInstalled = isTerminalChestInstalled()
		
		if glob.chests ~= nil then
			chests = glob.chests
			game.onevent(defines.events.ontick, tickChests)
			ticks = 0
		end
		
		if glob.minedChests ~= nil then
			minedChests = glob.minedChests
		end
	end
end)

game.onevent(defines.events.onpreplayermineditem, function(event)
	local entity = event.entity
	local playerItemCount
	local insertedCount
	local newChestPosition
	local newChest
	local chestSlotContents
	local difX,difY
	local newX,newY
	local chestNumber
	local chestItemName
	local chestHadPower
	local countBefore
	local countAfter
	local chestHasPower
	
	if entity.name == "compression-chest" then
		if chests ~= nil then
			for k,v in pairs(chests) do
				if v[1].valid then
					if entity.equals(v[1]) then
						if v[2] ~= 0 then
							if game.player.cursorstack ~= nil and (game.player.cursorstack.name == v[3] or game.player.cursorstack.name == "compression-mover") then
								if game.player.cursorstack.name == v[3] then
									-- Fill the player's inventory with as much chest contents as it can hold
									if v[12] ~= nil then
										energyRequired = v[2] * energyPerItemMoved
										energyAvailable = 0
										
										for pole,entity in pairs(v[12]) do
											if entity.valid then
												energyAvailable = energyAvailable + entity.energy
											else
												table.remove(v[12], pole)
												if #v[12] == 0 then
													v[12] = nil
												end
											end
										end
										
										if energyAvailable < energyRequired then
											moveAmount = math.floor(energyAvailable / energyPerItemMoved)
											energyRequired = moveAmount * energyPerItemMoved
										else
											moveAmount = v[2]
										end
										
										if moveAmount > 0 then
											-- Transfer as many items as possible
											playerItemCount = game.player.getitemcount(v[3])
											game.player.insert({name = v[3], count = moveAmount})
											insertedCount = game.player.getitemcount(v[3]) - playerItemCount
											v[2] = v[2] - insertedCount
											energyRequired = insertedCount * energyPerItemMoved
											
											-- Drain energy
											for pole,entity in pairs(v[12]) do
												if entity.valid then
													energy = entity.energy
													
													if energy >= energyRequired then
														entity.energy = energy - energyRequired
														break
													else
														entity.energy = 0
														energyRequired = energyRequired - energy
													end
												else
													table.remove(v[12], pole)
													if #v[12] == 0 then
														v[12] = nil
													end
												end
											end
										else
											game.player.print("Insufficient power to move items.")
										end
									else
										game.player.print("No Compression Power Poles within range.")
									end
									
									newChestPosition = entity.position
								else
									if maximumPickedUpCompressionChests ~= false and maximumPickedUpCompressionChests ~= 5 then
										for n = maximumPickedUpCompressionChests + 1, 5, 1 do
											if game.forces.player.technologies["pickup-compression-chest-count-" .. n].researched then
												maximumPickedUpCompressionChests = n
											else
												break
											end
										end
									end
									
									if maximumPickedUpCompressionChests ~= false and maximumPickedUpCompressionChests > 0 then
										if minedChests == nil then
											glob.minedChests = {}
											minedChests = glob.minedChests
										end
										
										for n = 1,maximumPickedUpCompressionChests,1 do
											if minedChests[n] == nil then
												chestNumber = n
												break
											end
										end
										
										if chestNumber ~= nil then
											minedChests[chestNumber] = {}
											
											-- Relies on the fact the Compression Chest only has one slot
											for k2,v2 in pairs(entity.getinventory(1).getcontents()) do
												minedChests[chestNumber][1] = {name = k2, count = v2}	--Inventory of the chest
											end
											
											minedChests[chestNumber][2] = v[2]							--Stored count
											minedChests[chestNumber][3] = v[3]							--Stored name
											minedChests[chestNumber][4] = v[4]							--Stored half stack size
											
											entity.getinventory(1).clear()
											chestItemName = "compression-chest-mined-" .. chestNumber
											
											countBefore = game.player.getitemcount(chestItemName)
											game.player.insert({name = chestItemName, count = 1})
											countAfter = game.player.getitemcount(chestItemName)
											if countBefore == countAfter then
												game.createentity({name = "item-on-ground", position = entity.position, stack = {name = chestItemName, count = 1}})
											end
											
--											if game.player.caninsert({name = chestItemName, count = 1}) then
--												game.player.insert({name = chestItemName, count = 1})
--											else
--												game.createentity({name = "item-on-ground", position = entity.position, stack = {name = chestItemName, count = 1}})
--											end
											
											table.remove(chests, k)
											
											if #glob.chests == 0 then
												chests = nil
												glob.chests = nil
												game.onevent(defines.events.ontick, nil)
											end
										else
											game.player.print("Unable to pick up Compression Chest with inventory:")
											game.player.print("Your current limit is " .. maximumPickedUpCompressionChests .. " at the same time.")
											game.player.print("")
											game.player.print("If for some reason the previous picked up chests don't exist you can:")
											game.player.print("Spawn in a \"reset-compression-chests\" and placing it in the world to reset the picked-up chest list.")
											--game.player.print("If you do place a \"reset-compression-chests\" *ALL* picked-up compression chests will lose their inventories.")
											newChestPosition = entity.position
										end
									else
										-- Attempt to move the chest closer to the player
										difX = game.player.position.x - entity.position.x
										difY = game.player.position.y - entity.position.y
										
										if difX <= -1 then
											newX = entity.position.x - 1
										elseif difX >= 1 then
											newX = entity.position.x + 1
										else
											newX = entity.position.x
										end
										
										if difY <= -1 then
											newY = entity.position.y - 1
										elseif difY >= 1 then
											newY = entity.position.y + 1
										else
											newY = entity.position.y
										end
										
										newChestPosition = {x = newX, y = newY}
										
										-- If the chest can't be placed at the new location put it back where it was
										if not game.canplaceentity({name = "compression-chest", position = newChestPosition}) then
											game.player.print("Unable to move Compression Chest - no room.")
											newChestPosition = entity.position
										end
									end
								end
							else
								game.player.print("Currently storing: " .. v[2] + v[11].getitemcount(v[3]) .. " " .. game.getlocaliseditemname(v[3]) .. ".")
								
								if v[12] ~= nil then
									for k2,v2 in pairs(v[12]) do
										if v2.valid then
											chestHasPower = true
											break
										end
									end
								end
								
								if chestHasPower == nil then
									game.player.print("Chest has no power.")
									chestHasPower = false
								end
								
								newChestPosition = entity.position
							end
							
							if newChestPosition ~= nil then
								newChest = game.createentity({name = "compression-chest", position = newChestPosition, force = game.forces.player})
								
								-- Relies on the fact the Compression Chest only has one slot
								for k2,v2 in pairs(entity.getinventory(1).getcontents()) do
									newChest.getinventory(1).insert({name = k2, count = v2})
								end
								entity.getinventory(1).clear()
								
								v[1] = newChest
								v[11] = newChest.getinventory(1)
								
								if terminalChestInstalled then
									v[8] = findNeighbouringTCs(newChestPosition)				--Neighbouring Terminal Chests
									v[9] = 0													--All TC activity counter
									v[10] = 0													--All TC extended non-activity counter
								end
								
								if v[12] ~= nil then
									for _,pole in pairs(v[12]) do
										if pole.valid then
											chestHadPower = true
											break
										end
									end
								end
								
								v[12] = findNeighbouringCCPPs(newChestPosition)						--Compression chest power poles
								
								if v[12] == nil then
									if chestHadPower and chestHasPower ~= false then
										game.player.print("Moved chest now has no power pole in range.")
									end
								elseif not chestHadPower then
									game.player.print("Moved chest now has at least 1 power pole in range.")
								end
							end
						else
							countBefore = game.player.getitemcount("compression-chest")
							game.player.insert({name = "compression-chest", count = 1})
							countAfter = game.player.getitemcount("compression-chest")
							if countBefore == countAfter then
								game.createentity({name = "item-on-ground", position = event.entity.position, stack = {name = "compression-chest", count = 1}})
							end
							
--							if game.player.caninsert({name = "compression-chest", count = 1}) then
--								game.player.insert({name = "compression-chest", count = 1})
--							else
--								game.createentity({name = "item-on-ground", position = entity.position, stack = {name = "compression-chest", count = 1}})
--							end
							
							table.remove(chests, k)
							
							if #glob.chests == 0 then
								chests = nil
								glob.chests = nil
								game.onevent(defines.events.ontick, nil)
								break
							end
						end
						
						break
					end
				end
			end
		end
	end
end)

game.onevent(defines.events.onentitydied, function(event)
	if chests ~= nil and event.entity.name == "compression-chest" then
		for k,v in pairs(chests) do
			if event.entity.equals(v[1]) then
				if v[2] ~= 0 then
					game.player.print("All is lost! A Compression Chest was destroyed and with it all it's contents: " .. v[2] .. " " .. game.getlocaliseditemname(v[3]) .. ".")
				end
				
				table.remove(chests, k)
				if #glob.chests == 0 then
					chests = nil
					glob.chests = nil
					game.onevent(defines.events.ontick, nil)
				end
				break
			end
		end
	end
end)

function entityBuilt(event)
	local chest
	local newEntity
	local createdEntity = event.createdentity
	
	if createdEntity.name == "compression-chest" then
		if glob.chests == nil then
			glob.chests = {}
			chests = glob.chests
			game.onevent(defines.events.ontick, tickChests)
			ticks = 0
		end
		
		chest = {true, true, true, true, true, true, true, true, true, true, true, true, true}
		
		chest[1] = createdEntity											--Created entity
		chest[2] = 0														--Stored count
		chest[3] = nil														--Stored name
	--	chest[4] = 															--Stored half stack size
		chest[5] = 0														--General sleep timer
		chest[6] = 0														--Activity counter
		chest[7] = 0														--Extended non-activity counter
		if terminalChestInstalled then
			chest[8] = findNeighbouringTCs(createdEntity.position)			--Neighbouring Terminal Chests
			chest[9] = 0													--All TC activity counter
			chest[10] = 0													--All TC extended non-activity counter
		else
			chest[8] = nil
		end
		chest[11] = createdEntity.getinventory(1)							--Inventory of the chest
		chest[12] = findNeighbouringCCPPs(createdEntity.position)			--Compression chest power poles
		chest[13] = createdEntity.position
		
		table.insert(chests, chest)
	elseif createdEntity.name == "compression-power-pole-test" then
		createdEntity.energy = 50000000000000
	elseif createdEntity.name == "terminal-chest" then
		linkNeighbouringCCsTC(createdEntity)
	elseif createdEntity.name == "compression-power-pole-field" then
		newEntity = game.createentity({name = "compression-power-pole", position = createdEntity.position, force = game.forces.player})
		createdEntity.destroy()
		linkNeighbouringCCsCP(newEntity)
	elseif createdEntity.name == "reset-compression-chests" then
		-- Resets the mined-chests list when placed in the world - used only in the event a mined chest item is destroyed
		createdEntity.destroy()
		minedChests = nil
		glob.minedChests = nil
		game.player.print("Compression Chest mined-chest list reset - all existing Compression mined-chests will revert to standard Compression chests when palced.")
	else
		if string.sub(createdEntity.name, 1, 24) == "compression-chest-mined-" then
			local chestNumber
			local createNormal
			
			if minedChests ~= nil then
				chestNumber = tonumber(string.sub(createdEntity.name, 25))
				
				if minedChests[chestNumber] ~= nil then
					if glob.chests == nil then
						glob.chests = {}
						chests = glob.chests
						game.onevent(defines.events.ontick, tickChests)
						ticks = 0
					end
					
					newEntity = game.createentity({name = "compression-chest", position = createdEntity.position, force = game.forces.player})
					chest = {true, true, true, true, true, true, true, true, true, true, true, true, true}
					
					chest[1] = newEntity												--Created entity
					chest[2] = minedChests[chestNumber][2]								--Stored count
					chest[3] = minedChests[chestNumber][3]								--Stored name
					chest[4] = minedChests[chestNumber][4]								--Stored half stack size
					chest[5] = 0														--General sleep timer
					chest[6] = 0														--Activity counter
					chest[7] = 0														--Extended non-activity counter
					if terminalChestInstalled then
						chest[8] = findNeighbouringTCs(newEntity.position)				--Neighbouring Terminal Chests
						chest[9] = 0													--All TC activity counter
						chest[10] = 0													--All TC extended non-activity counter
					else
						chest[8] = nil
					end
					chest[11] = newEntity.getinventory(1)								--Inventory of the chest
					chest[12] = findNeighbouringCCPPs(newEntity.position)				--Compression chest power poles
					chest[13] = newEntity.position
					
					table.insert(chests, chest)
					
					-- Restore the chest's inventory if it had one
					if minedChests[chestNumber][1] ~= nil then
						chest[11].insert(minedChests[chestNumber][1])
					end
					
					minedChests[chestNumber] = nil
					
					for n = 1,maximumPickedUpCompressionChests,1 do
						if minedChests[n] ~= nil then
							chestNumber = 0
							break
						end
					end
					
					if chestNumber ~= 0 then
						minedChests = nil
						glob.minedChests = nil
					end
				else
					chestNumber = nil
				end
			end
			
			if chestNumber == nil then
				entityBuilt({createdentity = game.createentity({name = "compression-chest", position = createdEntity.position, force = game.forces.player})})
			end
			
			createdEntity.destroy()
		end
	end
end

game.onevent(defines.events.onbuiltentity, entityBuilt)

function isTerminalChestInstalled()
	if game.entityprototypes["terminal-chest"] == nil then
		return false
	else
		return true
	end
end

function findNeighbouringTCs(position)
	local neighbouringChests
	local newChest
	local terminalChests
	
	terminalChests = game.findentitiesfiltered({area = {{x = position.x - 1, y = position.y - 1}, {x = position.x + 1, y = position.y + 1}}, name = "terminal-chest"})
	
	for _,chest in pairs(terminalChests) do
		if math.abs(position.x - chest.position.x) + math.abs(position.y - chest.position.y) == 1 then
			if neighbouringChests == nil then
				neighbouringChests = {}
			end
			
			newChest = {true, true, true}
			newChest[1] = chest												--Chest entity
			newChest[2] = 0													--Activity counter
			newChest[3] = chest.getinventory(1)								--Inventory of the chest
			
			table.insert(neighbouringChests, newChest)
		end
	end
	
	return neighbouringChests
end

function findNeighbouringCCPPs(position)
	local poles
	local compressionPowerPoles
	
	compressionPowerPoles = game.findentitiesfiltered({area = {{x = position.x - 2.1, y = position.y - 2.1}, {x = position.x + 2.1, y = position.y + 2.1}}, name = "compression-power-pole"})
	
	for _,pole in pairs(compressionPowerPoles) do
		if poles == nil then
			poles = {}
		end
		
		table.insert(poles, pole)
	end
	
	return poles
end

function linkNeighbouringCCsTC(entity)
	local compressionChests
	local newChest
	
	if chests ~= nil then
		compressionChests = game.findentitiesfiltered({area = {{x = entity.position.x - 1, y = entity.position.y - 1}, {x = entity.position.x + 1, y = entity.position.y + 1}}, name = "compression-chest"})
		
		for _,chest in pairs(compressionChests) do
			if math.abs(entity.position.x - chest.position.x) + math.abs(entity.position.y - chest.position.y) == 1 then
				for k,v in pairs(chests) do
					-- Add the chest into any neighbouring compression chests
					if chest.equals(v[1]) then
						if v[8] == nil then
							v[8] = {}											--Neighbouring Terminal Chests
							v[9] = 0											--All TC activity counter
							v[10] = 0											--All TC extended non-activity counter
						end
						
						newChest = {true, true, true}
						newChest[1] = entity									--Chest entity
						newChest[2] = 0											--Activity counter
						newChest[3] = entity.getinventory(1)					--Inventory of the chest
						
						table.insert(v[8], newChest)
					end
				end
			end
		end
	end
end

function linkNeighbouringCCsCP(entity)
	local compressionChests
	
	if chests ~= nil then
		compressionChests = game.findentitiesfiltered({area = {{x = entity.position.x - 2.1, y = entity.position.y - 2.1}, {x = entity.position.x + 2.1, y = entity.position.y + 2.1}}, name = "compression-chest"})
		
		for _,chest in pairs(compressionChests) do
			for k,v in pairs(chests) do
				-- Add the chest into any neighbouring compression chests
				if chest.equals(v[1]) then
					if v[12] == nil then
						v[12] = {}											--Neighbouring compression chest power poles
					end
					
					table.insert(v[12], entity)
				end
			end
		end
	end
end

function tickChests()
	if ticks > 0 then ticks = ticks - 1 else ticks = 10, executeTicks() end
end

function executeTicks()
	local chest
	local inventory
	local contents
	local itemStackSize
	local insertAmount
	local chestHasContent
	local itemCount
	local terminalChestsActive
	local moveAmount
	local energyRequired
	local energyAvailable
	local energy
	local outOfPower
	local newChest
	local newPosition
	
	for k,v in pairs(chests) do
		if v[1].valid then
			-- If the chest has a power source
			if v[12] ~= nil then
				outOfPower = 0
				-- Look through the chests neighbouring terminal chests
				if v[8] ~= nil and v[3] ~= nil then
					if v[9] == 0 then
						terminalChestsActive = false
						if energyAvailable ~= nil then
							energyAvailable = nil
						end
						
						-- For each connected TC
						for TC_k,TC_v in pairs(v[8]) do
							if TC_v[1].valid then
								if TC_v[2] == 0 then
									itemCount = TC_v[3].getitemcount(v[3])
									
									if itemCount > 0 then
										energyRequired = itemCount * energyPerItemMoved
										
										if energyAvailable == nil then
											energyAvailable = 0
											outOfPower = 2
											for pole,entity in pairs(v[12]) do
												if entity.valid then
													energyAvailable = energyAvailable + entity.energy
												else
													table.remove(v[12], pole)
													if #v[12] == 0 then
														v[12] = nil
													end
												end
											end
										end
										
										if energyAvailable < energyRequired then
											moveAmount = math.floor(energyAvailable / energyPerItemMoved)
											energyRequired = moveAmount * energyPerItemMoved
										else
											moveAmount = itemCount
										end
										
										if moveAmount > 0 then
											-- Delete the items
											TC_v[3].remove({name = v[3], count = moveAmount})
											
											-- Drain energy
											for pole,entity in pairs(v[12]) do
												if entity.valid then
													energy = entity.energy
													
													if energy >= energyRequired then
														entity.energy = energy - energyRequired
														break
													else
														entity.energy = 0
														energyRequired = energyRequired - energy
													end
												else
													table.remove(v[12], pole)
													if #v[12] == 0 then
														v[12] = nil
													end
												end
											end
											
											-- Set the chest as un-mineable if it's storing internal content
--												if v[2] == 0 then
--													v[1].minable = false
--												end
											
											-- Skip the next 6 attempts to check this TC
											TC_v[2] = 6
											terminalChestsActive = true
											v[2] = v[2] + moveAmount
										else
											-- No power - skip the next 20 attempts to check this TC
											outOfPower = 1
											TC_v[2] = 20
											
											-- Because there's no power left there's no reason to check the other chests if any
											break
										end
									else
										-- Skip the next 25 attempts to check this TC
										TC_v[2] = 25
									end
								else
									TC_v[2] = TC_v[2] - 1
								end
							else
								table.remove(v[8], TC_k)
								if #v[8] == 0 then
									v[8] = nil
								end
							end
						end
						
						-- No TCs had contents that could be stored
						if terminalChestsActive then
							-- At least one connected TC has become active, dis-allow extended sleep mode
							v[10] = 0
						else
							-- If all TCs have been inactive for the last 3 attempts enter extended sleep mode
							if v[10] >= 90 then
								-- Skip the next 20 attempts to check connected TCs
								v[9] = 20
								
								-- Reset the activity counters for all connected TCs so they check next attempt
								if v[8] ~= nil then
									for _,TC_v in pairs(v[8]) do
										TC_v[2] = 0
									end
								end
							else
								v[10] = v[10] + 1
							end
						end
					else
						v[9] = v[9] - 1
					end
				end
				
				-- Look at the inventory of the chest
				if v[5] > 0 then
					v[5] = v[5] - 1
				else
					if outOfPower ~= 1 then
						chestHasContent = false
						if energyAvailable ~= nil and outOfPower == 0 then
							energyAvailable = nil
						end
						
						for itemName,itemCount in pairs(v[11].getcontents()) do
							chestHasContent = true
							if itemName == v[3] then
								if itemCount > v[4] then
									energyRequired = (itemCount - v[4]) * energyPerItemMoved
									
									if energyAvailable == nil then
										energyAvailable = 0
										for pole,entity in pairs(v[12]) do
											if entity.valid then
												energyAvailable = energyAvailable + entity.energy
											else
												table.remove(v[12], pole)
												if #v[12] == 0 then
													v[12] = nil
												end
											end
										end
									end
									
									if energyAvailable < energyRequired then
										moveAmount = math.floor(energyAvailable / energyPerItemMoved)
										energyRequired = moveAmount * energyPerItemMoved
									else
										moveAmount = itemCount - v[4]
									end
									
									if moveAmount > 0 then
										-- Remove items
										v[11].remove({name = itemName, count = moveAmount})
										
										-- Drain energy
										for pole,entity in pairs(v[12]) do
											if entity.valid then
												energy = entity.energy
												
												if energy >= energyRequired then
													entity.energy = energy - energyRequired
													break
												else
													entity.energy = 0
													energyRequired = energyRequired - energy
												end
											else
												table.remove(v[12], pole)
												if #v[12] == 0 then
													v[12] = nil
												end
											end
										end
										
										v[6] = 0
										
--											if v[2] == 0 then
--												v[1].minable = false
--											end
										
										v[2] = v[2] + moveAmount
									else
										-- Out of power
										v[5] = 10
									end
								elseif v[2] ~= 0 and itemCount < v[4] then
									insertAmount = v[4] - itemCount
									if insertAmount > v[2] then
										insertAmount = v[2]
									end
									
									energyRequired = insertAmount * energyPerItemMoved
									
									if energyAvailable == nil then
										energyAvailable = 0
										outOfPower = 2
										for pole,entity in pairs(v[12]) do
											if entity.valid then
												energyAvailable = energyAvailable + entity.energy
											else
												table.remove(v[12], pole)
												if #v[12] == 0 then
													v[12] = nil
												end
											end
										end
									end
									
									if energyAvailable < energyRequired then
										insertAmount = math.floor(energyAvailable / energyPerItemMoved)
										energyRequired = insertAmount * energyPerItemMoved
									end
									
									if insertAmount > 0 then
										-- Insert items
										v[11].insert({name = itemName, count = insertAmount})
										
										-- Drain energy
										for pole,entity in pairs(v[12]) do
											if entity.valid then
												energy = entity.energy
												
												if energy >= energyRequired then
													entity.energy = energy - energyRequired
													break
												else
													entity.energy = 0
													energyRequired = energyRequired - energy
												end
											else
												table.remove(v[12], pole)
												if #v[12] == 0 then
													v[12] = nil
												end
											end
										end
										
										v[2] = v[2] - insertAmount
										v[6] = 0
										
--											if v[2] == 0 then
--												v[1].minable = true
--											end
									else
										-- Of power
										v[5] = 10
									end
								else
									if v[6] == 20 then
										if v[7] == 120 then
											v[5] = 20
										else
											v[5] = 3
											v[7] = v[7] + 1
										end
									else
										v[6] = v[6] + 1
										v[7] = 0
									end
								end
							elseif v[2] == 0 then
								itemStackSize = game.itemprototypes[itemName].stacksize
								if itemStackSize >= 3 then
									v[3] = itemName
									v[4] = math.floor(itemStackSize / 3) * 2
									v[2] = 0
									-- The item removal will be handled next chest tick
								else
									v[5] = 20
								end
							else
								-- Wrong item type in chest.. wait for it to be removed
								v[5] = 20
							end
							
							break
						end
						
						if chestHasContent == false then
							if v[2] ~= 0 then
								insertAmount = v[4]
								if insertAmount > v[2] then
									insertAmount = v[2]
								end
								
								energyRequired = insertAmount * energyPerItemMoved
								
								if energyAvailable == nil then
									energyAvailable = 0
									for pole,entity in pairs(v[12]) do
										if entity.valid then
											energyAvailable = energyAvailable + entity.energy
										else
											table.remove(v[12], pole)
											if #v[12] == 0 then
												v[12] = nil
											end
										end
									end
								end
								
								if energyAvailable < energyRequired then
									insertAmount = math.floor(energyAvailable / energyPerItemMoved)
									energyRequired = insertAmount * energyPerItemMoved
								end
								
								if insertAmount > 0 then
									-- Insert items
									v[11].insert({name = v[3], count = insertAmount})
									
									-- Drain energy
									for pole,entity in pairs(v[12]) do
										if entity.valid then
											energy = entity.energy
											
											if energy >= energyRequired then
												entity.energy = energy - energyRequired
												break
											else
												entity.energy = 0
												energyRequired = energyRequired - energy
											end
										else
											table.remove(v[12], pole)
											if #v[12] == 0 then
												v[12] = nil
											end
										end
									end
									
									v[2] = v[2] - insertAmount
									
									if v[2] == 0 then
										v[1].minable = true
									end
									
									v[6] = 0
								else
									-- Out of power
									v[5] = 10
								end
							else
								if v[6] == 20 then
									v[5] = 20
								else
									v[6] = v[6] + 1
								end
							end
						end
					else
						-- Out of power
						v[5] = 10
					end
				end
			end
		else
			-- If the entity isn't valid something other than the player or death removed it - recreate it
			game.player.print("You can't remove a Compression Chest with robots or via other scripts due to game limitations - attempting to re-creating the chest at: x=" .. v[13].x .. ", y=" .. v[13].y .. "...")
			newPosition = game.findnoncollidingposition("compression-chest", v[13], 10, 1)
			
			if newPosition ~= nil then
				newChest = game.createentity({name = "compression-chest", position = newPosition, force = game.forces.player})
				
				v[1] = newChest
				v[11] = newChest.getinventory(1)
				
				if terminalChestInstalled then
					v[8] = findNeighbouringTCs(newPosition)						--Neighbouring Terminal Chests
				end
				
				v[12] = findNeighbouringCCPPs(newPosition)						--Compression chest power poles
				v[13] = newPosition
			else
				game.player.print("Impressive, you managed to find a way to erase the contents of a Compression Chest :) You may or may not want to reload and not do what you just did.")
				table.remove(chests, k)
				if #glob.chests == 0 then
					chests = nil
					glob.chests = nil
					game.onevent(defines.events.ontick, nil)
					break
				end
			end
		end
	end
end

remote.addinterface("DyTech-Storage",
{

})