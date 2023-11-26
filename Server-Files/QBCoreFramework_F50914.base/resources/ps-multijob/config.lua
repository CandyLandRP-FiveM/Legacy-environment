Config = Config or {}

-- Side of the screen where you want the ui to be on. Can either be "left" or "right"
Config.Side = "right"

Config.MaxJobs = 5
Config.IgnoredJobs = {
	["unemployed"] = true,
}

Config.DenyDuty = {
	["ambulance"] = false,
	["police"] = false,
}

Config.WhitelistJobs = {
	["police"] = true,
	["ambulance"] = true,
	["mechanic"] = true,
	["cityhall"] = true,
	["lawyer"] = true,
	["floki"] = true,
	["coolbeans"] = true,
	["upandatom"] = true,
	["hornys"] = true,
	["pdm"] = true,
	["nachodaddy"] = true,
	["phaq"] = true,
	["tavern"] = true,
	["cyber"] = true,
	["arcade"] = true,
	["autoexotics"] = true,
	["pinkcage"] = true,
	["moore"] = true,
	["tow"] = true,
	["cortez"] = true,
	["pawn"] = true,
	["rws"] = true,
}

Config.Descriptions = {
	["police"] = "Shoot some criminals or maybe be a good cop and arrest them",
	["ambulance"] = "Fix the bullet holes",
	["mechanic"] = "Fix the bullet holes",
	["tow"] = "Pickup the tow truck and steal some vehicles",
	["taxi"] = "Pickup people around the city and drive them to their destination",
	["bus"] = "Pickup multiple people around the city and drive them to their destination",
	["realestate"] = "Sell houses or something",
	["cardealer"] = "Sell cars or something",
	["cityhall"] = "Land of the Mayor",
	["lawyer"] = "Help the good or the bad",
	["reporter"] = "Lowkey useless",
	["trucker"] = "Drive a truck",
	["garbage"] = "Drive a garbage truck",
	["vineyard"] = "Get them vines",
	["hotdog"] = "Sell them glizzys",
	["floki"] = "Make those bikes pretty",
	["autoexotics"] = "fix those vehicles broooo",
	["coolbeans"] = "Bake yourself happy",
	["upandatom"] = "burgers that are out of this world",
	["hornys"] = "The feel good fast food",
	["pdm"] = "Luxury beyond compare",
	["nachodaddy"] = "Un Taco Al Dia Es La Llave De La Alegria",
	["arcade"] = "The most LIT place in this city",
	["cyber"] = "fix those vehicles broooo",
	["pinkcakge"] = "chillest place in the city",
	["moore"] = "hottest club in the city",
	["tow"] = "Make peoples day just a little worse",
	["cortez"] = "If you Know you Know",
	["pawn"] = "The finest Silver and Gold Trader known to the gods",
	["rws"] = "Premium Goods at Wholesale Prices",

}

-- Change the icons to any free font awesome icon, also add other jobs your server might have to the list
-- List: https://fontawesome.com/search?o=r&s=solid
Config.FontAwesomeIcons = {
	["police"] = "fa-solid fa-handcuffs",
	["ambulance"] = "fa-solid fa-user-doctor",
	["mechanic"] = "fa-solid fa-wrench",
	["tow"] = "fa-solid fa-truck-tow",
	["taxi"] = "fa-solid fa-taxi",
	["bus"] = "fa-solid fa-bus",
	["realestate"] = "fa-solid fa-sign-hanging",
	["cardealer"] = "fa-solid fa-cards",
	["judge"] = "fa-solid fa-gavel",
	["lawyer"] = "fa-solid fa-gavel",
	["reporter"] = "fa-solid fa-microphone",
	["trucker"] = "fa-solid fa-truck-front",
	["garbage"] = "fa-solid fa-trash-can",
	["vineyard"] = "fa-solid fa-wine-bottle",
	["hotdog"] = "fa-solid fa-hotdog",
	["floki"] = "fa-solid fa-wrench",
	["pdm"] = "fa-solid fa-car",
	["upandatom"] = "fa-solid fa-burger",
	["hornys"] = "fa-solid fa-burger",
	["nachodaddy"] = "fa-solid fa-pepper-hot",
	["coolbeans"] = "fa-solid fa-mug-saucer",
	["autoexotics"] = "fa-solid fa-wrench",
	["arcade"] = "fa-solid fa-gamepad",
	["cyber"] = "fa-solid fa-wrench",
	["pinkcage"] = "fa-solid fa-wine-bottle",
	["moore"] = "fa-solid fa-money-bill",
	["tow"] = "fa-solid fa-money-bill",
	["cortez"] = "fa-solid fa-money-bill",
	["pawn"] = "fa-solid fa-money-bill",
	["rws"] = "fa-solid fa-truck",

}
