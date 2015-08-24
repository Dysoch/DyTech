require "config"

data.raw["gui-style"].default["blank".."_DyTech_button_style"]  =
{
  type = "checkbox_style",
  parent = "checkbox_style",
  width = 38,
  height = 45,
  hovered_background =
  {
    filename = "__core__/graphics/gui.png",
    priority = "extra-high-no-scale",
    width = 35,
    height = 35,
    x = 185,
    y = 0
  },
  default_background =
  {
    filename = "__core__/graphics/gui.png",
    priority = "extra-high-no-scale",
    width = 35,
    height = 35,
    x = 185,
    y = 0
  },
  checked =
  {
    filename = "__core__/graphics/gui.png",
    priority = "extra-high-no-scale",
    width = 35,
    height = 35,
    x = 185,
    y = 0
  },
  clicked_background =
  {
    filename = "__core__/graphics/gui.png",
    priority = "extra-high-no-scale",
    width = 35,
    height = 35,
    x = 111,
    y = 0
  }
}

for a, b in pairs(data.raw.recipe) do
	if not b.icon then 
		if data.raw.item[b.name] then
			b.icon = data.raw.item[b.name].icon
		elseif data.raw.ammo[b.name] then
			b.icon = data.raw.ammo[b.name].icon
		elseif data.raw.armor[b.name] then
			b.icon = data.raw.armor[b.name].icon
		elseif data.raw.gun[b.name] then
			b.icon = data.raw.gun[b.name].icon
		elseif data.raw.capsule[b.name] then
			b.icon = data.raw.capsule[b.name].icon
		elseif data.raw.tool[b.name] then
			b.icon = data.raw.tool[b.name].icon
		elseif data.raw.module[b.name] then
			b.icon = data.raw.module[b.name].icon
		elseif data.raw["mining-tool"][b.name] then
			b.icon = data.raw["mining-tool"][b.name].icon
		elseif data.raw["repair-tool"][b.name] then
			b.icon = data.raw["repair-tool"][b.name].icon
		else
			b.icon = "__MAIN-DyTech-Dynamics__/graphics/questionmark.png"
		end
	end
end

for a, b in pairs(data.raw) do
  for name, item in pairs(b) do
    if item.type ~= "technology" then
	  if item.icon then
      data.raw["gui-style"].default[name.."_DyTech_button_style"]  =
      {
        type = "checkbox_style",
        parent = "checkbox_style",
        width = 38,
        height = 45,
        hovered_background =
        {
          filename = item.icon,
          priority = "extra-high-no-scale",
          width = 32,
          height = 32,
          x = 0,
          y = 0
        },
        default_background =
        {
          filename = item.icon,
          priority = "extra-high-no-scale",
          width = 32,
          height = 32,
          x = 0,
          y = 0
        },
        checked =
        {
          filename = "__core__/graphics/gui.png",
          priority = "extra-high-no-scale",
          width = 0,
          height = 0
        },
        clicked_background =
        {
          filename = "__core__/graphics/gui.png",
          priority = "extra-high-no-scale",
          width = 35,
          height = 35,
          x = 111
        }
      }
	  end
    end
  end
end

Debug = false

if Debug then
	Config.Ammo_Catergory = {}
	for _,TABLE in pairs(data.raw["ammo-category"]) do
		for _,NAME in pairs(TABLE) do
			if not Config.Ammo_Catergory[TABLE.name] then
				table.insert(Config.Ammo_Catergory, TABLE.name)
			end
		end
	end
end

if Debug then
	error(serpent.block(Config.Ammo_Catergory))
end