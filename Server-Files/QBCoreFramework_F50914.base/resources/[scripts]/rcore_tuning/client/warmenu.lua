WarMenu = { }

WarMenu.debug = false


local menus = { }
local keys = { up = 172, down = 173, left = 174, right = 175, select = 176, back = 177 }
local optionCount = 0

local currentKey = nil
local currentMenu = nil

local titleHeight = 0.11
local titleYOffset = 0.03
local titleScale = 1.0

local buttonHeight = 0.038
local buttonFont = 0
local buttonScale = 0.365
local buttonTextXOffset = 0.005
local buttonTextYOffset = 0.005

local cursiveFont = 1

AddEventHandler('warmenu:close', function(what)
	if currentMenu then
		WarMenu.CloseMenu()
	end
end)

local function debugPrint(text)
	if WarMenu.debug then
		Citizen.Trace('[WarMenu] '..tostring(text))
	end
end


local function setMenuProperty(id, property, value)
	if id and menus[id] then
		menus[id][property] = value
		debugPrint(id..' menu property changed: { '..tostring(property)..', '..tostring(value)..' }')
	end
end


local function isMenuVisible(id)
	if id and menus[id] then
		return menus[id].visible
	else
		return false
	end
end


local function setMenuVisible(id, visible, holdCurrent)
	if id and menus[id] then
		setMenuProperty(id, 'visible', visible)

		if not holdCurrent and menus[id] and not menus[id].keepOption then
			setMenuProperty(id, 'currentOption', 1)
		end

		if visible then
			if id ~= currentMenu and isMenuVisible(currentMenu) then
				setMenuVisible(currentMenu, false)
			end

			currentMenu = id
		end
	end
end

local function HandleCommonmenuIcon(icon, r, g, b, xOffset, yOffset)
	if not HasStreamedTextureDictLoaded('commonmenu') then
		RequestStreamedTextureDict('commonmenu', true)
	end

	local spriteScale = buttonHeight / 1.40

	DrawSprite(
		'commonmenu', icon, 
		xOffset, yOffset, 
		spriteScale, spriteScale * GetAspectRatio(), 0.0,
		r, g, b, 255
	)
end

local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
	if text == 'LOCK' then
		local bgScale  = 2.3
		
		local isActive = menus[currentMenu].currentOption == optionCount

		local bgCol = isActive and 0 or 255
		local iconCol = isActive and 255 or 0
		
		DrawRect(
			x + menus[currentMenu].width - 0.02, y + 0.015, 
			buttonHeight / bgScale, buttonHeight / bgScale * GetAspectRatio(), 
			bgCol, bgCol, bgCol, 255
		)
		HandleCommonmenuIcon('shop_lock', iconCol, iconCol, iconCol, x + menus[currentMenu].width - 0.02, y + 0.015)
	elseif text == 'CHECKMARK' then
		HandleCommonmenuIcon('shop_tick_icon', 227, 162, 33, x + menus[currentMenu].width - 0.02, y + 0.015)
	elseif text == 'GUN' then
		HandleCommonmenuIcon('shop_gunclub_icon_b', 255, 255, 255, x + menus[currentMenu].width - 0.02, y + 0.015)
	elseif text == 'GARAGE' then
		HandleCommonmenuIcon('shop_garage_icon_b', 255, 255, 255, x + menus[currentMenu].width - 0.02, y + 0.015)
	else
		SetTextColour(color.r, color.g, color.b, color.a)
		SetTextFont(font)
		SetTextScale(scale, scale)

		if shadow then
			SetTextDropShadow(2, 2, 0, 0, 0)
		end

		if menus[currentMenu] then
			if center then
				SetTextCentre(center)
			elseif alignRight then
				SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menus[currentMenu].width - buttonTextXOffset)
				SetTextRightJustify(true)
			end
		end

		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringPlayerName(text)
		EndTextCommandDisplayText(x, y)
	end
end


local function drawRect(x, y, width, height, color)
	DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end


local function drawTitle()
	if menus[currentMenu] then
		local x = menus[currentMenu].x + menus[currentMenu].width / 2
		local y = menus[currentMenu].y + titleHeight / 2

		if menus[currentMenu].titleBackgroundSprite then
			DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.name, x, y, menus[currentMenu].width, titleHeight, 0., 255, 255, 255, 255)
		else
			drawRect(x, y, menus[currentMenu].width, titleHeight, menus[currentMenu].titleBackgroundColor)
		end

		drawText(menus[currentMenu].title, x, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, menus[currentMenu].titleColor, titleScale, true)
	end
end


local function drawSubTitle()
	if menus[currentMenu] then
		local x = menus[currentMenu].x + menus[currentMenu].width / 2
		local y = menus[currentMenu].y + titleHeight + buttonHeight / 2

		local subTitleColor = { r = menus[currentMenu].titleBackgroundColor.r, g = menus[currentMenu].titleBackgroundColor.g, b = menus[currentMenu].titleBackgroundColor.b, a = 255 }

		if menus[currentMenu].subtitleTextColor then
			subTitleColor = { r = menus[currentMenu].subtitleTextColor.r, g = menus[currentMenu].subtitleTextColor.g, b = menus[currentMenu].subtitleTextColor.b, a = 255 }
		end

		drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
		drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false)

		if optionCount > menus[currentMenu].maxOptionCount then
			drawText(tostring(menus[currentMenu].currentOption)..' / '..tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false, false, true)
		end
	end
end


local function drawButton(text, subText, options)
	local x = menus[currentMenu].x + menus[currentMenu].width / 2
	local multiplier = nil

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local subTextColor = nil
		local shadow = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = menus[currentMenu].menuFocusTextColor
			subTextColor = menus[currentMenu].menuFocusTextColor
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = menus[currentMenu].menuTextColor
			subTextColor = menus[currentMenu].menuSubTextColor
			shadow = true
		end

		drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor)
		drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)

		if subText then
			drawText(subText, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true)
		elseif options and options.color then
			local ySize = 0.03
			local xSize = ySize * 1/GetAspectRatio()
			local xOffset = menus[currentMenu].width - 1.5 * xSize
			local yOffset = buttonTextYOffset + 0.014

			DrawRect(
				menus[currentMenu].x + xOffset, y - buttonHeight / 2 + yOffset, 
				xSize, ySize, 
				options.color[1], options.color[2], options.color[3], 255
			)

			local arrowCenterOffset = menus[currentMenu].width -  1.9*xSize
			local boxOffset = xSize

			drawText('←', menus[currentMenu].x + arrowCenterOffset - boxOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow)
			drawText('→', menus[currentMenu].x + arrowCenterOffset + boxOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow)
		end
	end
end


function WarMenu.CreateMenu(id, title)
	-- Default settings
	menus[id] = { }
	
	if title then
		menus[id].title = title
	else
		menus[id].title = nil
	end 

	menus[id].subTitle = 'INTERACTIONS'

	menus[id].visible = false

	menus[id].previousMenu = nil

	menus[id].aboutToBeClosed = false

	menus[id].x = 1.0 - 0.23 - 0.0175
	menus[id].y = 0.025
	menus[id].width = 0.23

	menus[id].currentOption = 1
	menus[id].keepOption = false
	menus[id].maxOptionCount = 10

	menus[id].titleFont = cursiveFont
	menus[id].titleColor = { r = 0, g = 0, b = 0, a = 255 }
	menus[id].titleBackgroundColor = { r = 227, g = 162, b = 33, a = 255 }
	menus[id].titleBackgroundSprite = nil

	menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
	menus[id].menuSubTextColor = { r = 189, g = 189, b = 189, a = 255 }
	menus[id].menuFocusTextColor = { r = 0, g = 0, b = 0, a = 255 }
	menus[id].menuFocusBackgroundColor = { r = 245, g = 245, b = 245, a = 255 }
	menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 160 }

	menus[id].subTitleBackgroundColor = { r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255 }

	menus[id].buttonPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } --https://pastebin.com/0neZdsZ5

	debugPrint(tostring(id)..' menu created')
end

function WarMenu.SetPreviousMenu(id, parent)
	setMenuProperty(id, 'previousMenu', parent)
end

function WarMenu.CreateSubMenu(id, parent, subTitle)
	if menus[parent] then
		WarMenu.CreateMenu(id, menus[parent].title)

		if subTitle then
			setMenuProperty(id, 'subTitle', subTitle)
		else
			setMenuProperty(id, 'subTitle', menus[parent].subTitle)
		end

		setMenuProperty(id, 'previousMenu', parent)

		setMenuProperty(id, 'x', menus[parent].x)
		setMenuProperty(id, 'y', menus[parent].y)
		setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount)
		setMenuProperty(id, 'titleFont', menus[parent].titleFont)
		setMenuProperty(id, 'titleColor', menus[parent].titleColor)
		setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor)
		setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite)
		setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor)
		setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor)
		setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor)
		setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor)
		setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor)
		setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor)
	else
		debugPrint('Failed to create '..tostring(id)..' submenu: '..tostring(parent)..' parent menu doesn\'t exist')
	end
end

function WarMenu.CurrentMenu()
	return currentMenu
end

function WarMenu.SetKeepOption(id, b)
	setMenuProperty(id, 'keepOption', b)
end

function WarMenu.ResetOptionPosition(id)
	setMenuProperty(id, 'currentOption', 1)
end
function WarMenu.SetOptionPosition(id, place)
	setMenuProperty(id, 'currentOption', place)
end

function WarMenu.GetOptionPosition(id)
	return menus[id].currentOption
end

function WarMenu.OpenMenu(id)
	if id and menus[id] then
		if not menus[id].previousMenu then
			TriggerEvent('warmenu:close')
		end

		PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
		setMenuVisible(id, true)
		debugPrint(tostring(id)..' menu opened')
	else
		debugPrint('Failed to open '..tostring(id)..' menu: it doesn\'t exist')
	end
end


function WarMenu.IsMenuOpened(id)
	return isMenuVisible(id)
end


function WarMenu.IsAnyMenuOpened()
	for id, _ in pairs(menus) do
		if isMenuVisible(id) then return true end
	end

	return false
end


function WarMenu.IsMenuAboutToBeClosed()
	if menus[currentMenu] then
		return menus[currentMenu].aboutToBeClosed
	else
		return false
	end
end


function WarMenu.CloseMenu()
	if menus[currentMenu] then
		if menus[currentMenu].aboutToBeClosed then
			menus[currentMenu].aboutToBeClosed = false
			setMenuVisible(currentMenu, false)
			debugPrint(tostring(currentMenu)..' menu closed')
			PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			optionCount = 0
			currentMenu = nil
			currentKey = nil
		else
			menus[currentMenu].aboutToBeClosed = true
			debugPrint(tostring(currentMenu)..' menu about to be closed')
		end
	end
end


function WarMenu.Button(text, subText, activeCb, options)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButton(text, subText, options)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				debugPrint(buttonText..' button pressed')
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			else
				if activeCb then
					activeCb()
				end
			end
		end

		return false
	else
		debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

		return false
	end
end

local lastCurrentOption = nil

function WarMenu.SpecialButton(text, subText, callback)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		drawButton(text, subText)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				debugPrint(buttonText..' button pressed')
				callback()
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			else
				if menus[currentMenu].currentOption ~= lastCurrentOption then
					lastCurrentOption = menus[currentMenu].currentOption
					return true
				else
					return false
				end
			end
		end

		return false
	else
		debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

		return false
	end
end


function WarMenu.MenuButton(text, id, arrow, activeCb)
	if arrow ~= nil and arrow == true then
		arrow = '→'
	end
	if menus[id] then
		if WarMenu.Button(text, arrow, activeCb) then
			setMenuVisible(currentMenu, false)
			setMenuVisible(id, true, true)

			return true
		end
	else
		debugPrint('Failed to create '..tostring(text)..' menu button: '..tostring(id)..' submenu doesn\'t exist')
	end

	return false
end


function WarMenu.CheckBox(text, checked, callback)
	if WarMenu.Button(text, checked and 'On' or 'Off') then
		checked = not checked
		debugPrint(tostring(text)..' checkbox changed to '..tostring(checked))
		if callback then callback(checked) end

		return true
	end

	return false
end


function WarMenu.ComboBox(text, items, currentIndex, selectedIndex, callback, currentCallback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = '← '..tostring(selectedItem)..' →'
	end

	if WarMenu.Button(text, selectedItem) then
		selectedIndex = currentIndex
		callback(currentIndex, selectedIndex)
		return true
	elseif isCurrent then
		if currentCallback ~= nil then
			currentCallback()
		end
		if currentKey == keys.left then
			if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end
		elseif currentKey == keys.right then
			if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end
		end
	else
		currentIndex = selectedIndex
	end

	callback(currentIndex, selectedIndex)
	return false
end

function WarMenu.NumberSelector(text, displayNumber, currentNumber, callback, currentCallback)
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	local selectedItem = displayNumber
	if isCurrent then
		selectedItem = '← '..tostring(selectedItem)..' →'
	end

	if WarMenu.Button(text, selectedItem) then
		callback(currentNumber)
		return true
	elseif isCurrent then
		if currentCallback ~= nil then
			currentCallback()
		end
		if currentKey == keys.left then
			currentNumber = currentNumber - 1
		elseif currentKey == keys.right then
			currentNumber = currentNumber + 1
		end
	end

	callback(currentNumber)
	return false
end

function WarMenu.ColorSelector(text, items, index, callback, currentCallback)
	local itemsCount = #items
	local selectedItem = items[index]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if WarMenu.Button(text, nil, nil, {color = selectedItem}) then
		index = index
		callback(index)
		return true
	elseif isCurrent then
		if currentCallback ~= nil then
			currentCallback()
		end
		if currentKey == keys.left then
			if index > 1 then index = index - 1 else index = itemsCount end
		elseif currentKey == keys.right then
			if index < itemsCount then index = index + 1 else index = 1 end
		end
	end

	callback(index)
	return false
end


function WarMenu.Display()
	if isMenuVisible(currentMenu) then
		if menus[currentMenu].aboutToBeClosed then
			WarMenu.CloseMenu()
		else
			drawTitle()
			drawSubTitle()

			currentKey = nil

			if IsControlJustReleased(1, keys.down) or IsDisabledControlJustReleased(1, keys.down) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menus[currentMenu].currentOption < optionCount then
					menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
				else
					menus[currentMenu].currentOption = 1
				end
			elseif IsControlJustReleased(1, keys.up) or IsDisabledControlJustReleased(1, keys.up) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menus[currentMenu].currentOption > 1 then
					menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
				else
					menus[currentMenu].currentOption = optionCount
				end
			elseif IsControlJustReleased(1, keys.left) or IsDisabledControlJustReleased(1, keys.left) then
				currentKey = keys.left
			elseif IsControlJustReleased(1, keys.right) or IsDisabledControlJustReleased(1, keys.right) then
				currentKey = keys.right
			elseif IsControlJustReleased(1, keys.select) or IsDisabledControlJustReleased(1, keys.select) then
				currentKey = keys.select
			elseif IsControlJustReleased(1, keys.back) or IsDisabledControlJustReleased(1, keys.back) then
				if menus[menus[currentMenu].previousMenu] then
					PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
					setMenuVisible(menus[currentMenu].previousMenu, true)
				else
					WarMenu.CloseMenu()
				end
			end

			optionCount = 0
		end
	end
end


function WarMenu.SetMenuWidth(id, width)
	setMenuProperty(id, 'width', width)
end


function WarMenu.SetMenuX(id, x)
	setMenuProperty(id, 'x', x)
end


function WarMenu.SetMenuY(id, y)
	setMenuProperty(id, 'y', y)
end


function WarMenu.SetMenuMaxOptionCountOnScreen(id, count)
	setMenuProperty(id, 'maxOptionCount', count)
end


function WarMenu.SetTitle(id, title)
	setMenuProperty(id, 'title', title)
end


function WarMenu.SetTitleColor(id, r, g, b, a)
	setMenuProperty(id, 'titleColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a })
end

function WarMenu.SetSubTitleColor(id, r, g, b, a)
	setMenuProperty(id, 'subtitleTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a })
end
 
 
function WarMenu.SetTitleBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, 'titleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a })
end


function WarMenu.ClearTitleBackgroundSprite(id)
	setMenuProperty(id, 'titleBackgroundSprite', nil)
end

function WarMenu.SetTitleBackgroundSprite(id, textureDict, textureName)
	RequestStreamedTextureDict(textureDict)
	setMenuProperty(id, 'titleBackgroundSprite', { dict = textureDict, name = textureName })
end


function WarMenu.SetSubTitle(id, text)
	setMenuProperty(id, 'subTitle', text)
end

function WarMenu.SetTitle(id, text)
	setMenuProperty(id, 'title', text)
end


function WarMenu.SetMenuBackgroundColor(id, r, g, b, a)
	setMenuProperty(id, 'menuBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a })
end

function WarMenu.SetTitleSizing(yOffset, scale)
	titleYOffset = yOffset
	titleScale = scale
end


function WarMenu.SetMenuTextColor(id, r, g, b, a)
	setMenuProperty(id, 'menuTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a })
end

function WarMenu.SetMenuSubTextColor(id, r, g, b, a)
	setMenuProperty(id, 'menuSubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a })
end

function WarMenu.SetMenuFocusColor(id, r, g, b, a)
	setMenuProperty(id, 'menuFocusColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a })
end

function WarMenu.GetMenuIds()
	local ids = {}

	for id, _ in pairs(menus) do
		table.insert(ids, id)
	end

	return ids
end

function WarMenu.SetMenuButtonPressedSound(id, name, set)
	setMenuProperty(id, 'buttonPressedSound', { ['name'] = name, ['set'] = set })
end



local sinceMenuClosed = 50000

Citizen.CreateThread(function()
	while true do
		Wait(500)

		if WarMenu.IsAnyMenuOpened() then
			sinceMenuClosed = 0
		else
			sinceMenuClosed = sinceMenuClosed + 500
		end
	end
end)

AddEventHandler('warmenu:isAnyMenuOpen', function(yesCb, noCb)
	if sinceMenuClosed <= 1000 then
		if yesCb then
			yesCb()
		end
	elseif noCb then
		noCb()
	end
end)