function OpenGUI(player, output)
	local primarybox = game.players[i].gui.top.add{type = "checkbox", caption = "Primary", name = "primary", state = false}
	local secondarybox = game.players[i].gui.top.add{type = "checkbox", caption = "Secondary", name = "secondary", state = false}
	local tertiarybox = game.players[i].gui.top.add{type = "checkbox", caption = "Tertiary", name = "tertiary", state = false}
	
	if output == "primary" then
		primarybox.state = true
	elseif output == "secondary" then
		secondarybox.state = true
	elseif output == "tertiary" then
		tertiarybox.state = true
	else
		return
	end
end

function CloseGUI()

end