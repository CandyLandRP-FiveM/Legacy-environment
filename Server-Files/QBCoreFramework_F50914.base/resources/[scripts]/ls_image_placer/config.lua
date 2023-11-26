--- INTRUCTIONS FOR USING DEV MODE ---
-- Use command 'devmode' and a red marker will appear when you are facing a wall.
-- Press E to select points of the image
--- The first point of the image has to be top left corner, the second point has to be in bottom right corner!
-- After second point is selected, input image link or image path and press submit
-- NOTE: To use image path, the image has to be uploaded to ls_image_placer/images folder. Only type image's name and extension. E.G. bingo.png
-- Adjust image's offset by using the slider and confirm! :)

Config = {}

Config.debug = false

Config.renderDistance = 300 -- Setting below 100 images will lose fade in/fade out effect

--Either DB or JSON
Config.dataType = 'DB'

Config.sqlDriver = 'mysql'  -- mysql or oxmysql

Config.identifier = "license"-- OPTIONS: license, xbl, live, discord, fivem, license2

--The name of the command which calculates the coords and heading of the billboard
Config.commandNames = {
    devMode = 'devmode',
    deleteImage = 'deleteimage',
    disableImages = 'disableimages'
}
--Keybind for selecting image points
Config.keybinds = {
    label = 'E',
    name = 'INPUT_PICKUP',
    input = "E",
}

--Maximum raycast distance
Config.raycastDistance = 30

--If 'devmode' and 'deleteimage' commands are admin only
Config.staffOnly = true

