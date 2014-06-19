require "defines"

game.oninit(function()
	if not glob.dytech then 
		glob.dytech={core=true, dynamic=false, energy=false, gems=false, inserters=false, logistic=false, metallurgy=false, meteors=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false} 
	end 
end)

game.onsave(function()

end)

game.onload(function()

end)

game.onevent(defines.events.onplayercrafteditem, function(event)

end)

game.onevent(defines.events.onplayermineditem, function(event)

end)

game.onevent(defines.events.onentitydied, function(event)

end)

game.onevent(defines.events.onsectorscanned, function(event)

end)

game.onevent(defines.events.onpickedupitem, function(event)

end)

game.onevent(defines.events.ontick, function(event)

end)

game.onevent(defines.events.onbuiltentity, function(event)

end)

game.onevent(defines.events.onchunkgenerated, function(event)

end)

remote.addinterface("DyTech-Core",

})