
Thank you for buying one of my scripts! Hopefully it can empower your roleplay server the way it has on ours!
These scripts are fully configurable and customisable, and open to update ideas and commissions!

I have a discord available for any support needed, and even any script suggestions you may have!

https://discord.gg/tpR2yGsGjE

We also run a roleplay server available where you can experience all these roleplay features first-hand! Serious 18+ RP with a focus on storytelling

https://letsrp.co.uk/

All my scripts have been configured within a balanced live economy server to save you time balancing it yourself!

-------------------------------------------------------------------------------------------------

CHANGELOG

Update v1.1:
	- New Vegetables: Cucumbers and Carrots
	
Update v1.0:
	- New Activities: Fruit/Veg Harvesting, Milking Cows, and Slaughtering Animals
		- Harvest pre-made fruit trees and vegetable crops (easy to add custom ones).
		- Slaughter animals such as cows, pigs, and chickens.
		- Milk cows and gather eggs from chickens
		- Sell your gathered produce at Farmers Markets with fluctuating stock prices
		- Cook sausages, salami, and other produce at the farmer's house
		- Pasteurise milk and churn it into cheese and other products
		- Purchase farming equipment to enhance your immersion
		- Hire tractors to add an extra element of immersion
		
		
	- This script was made with the intention to work on an already balanced RP server, so values are fully configurable, with further compatibility planned for the future (requests accepted)
		
-------------------------------------------------------------------------------------------------

INSTALLATION

Drag and drop this resource into your FiveM resources folder, and make sure you ensure it in the server.cfg

Add these images to your inventory script

	[qb] > qb-inventory > html > images
	

Add these to a shop of your choice (or set Config.SellEquipment to true to buy equipment from Farmers Markets)

	[23] = {
		name = "trowel",
		price = 50,
		maxAmount = 50,
		amount = 10,
		info = {},
		type = "item",
		slot = 23,
	},
	[24] = {
		name = "bucket",
		price = 50,
		maxAmount = 50,
		amount = 10,
		info = {},
		type = "item",
		slot = 24,
	},
            
-------------------------------------------------------------------------------------------------

Add these to your shared/items.lua in your qb-core resource:

Under your QBShared.Items = {

	-- SW-Farming
	["bucket"] = {
        ["name"] = "bucket",
        ["label"] = "Bucket",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "bucket.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "An empty bucket!"
    },
	["trowel"] = {
        ["name"] = "trowel",
        ["label"] = "Trowel",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "trowel.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Versatile farming tool"
    },
	["apple"] = {
        ["name"] = "apple",
        ["label"] = "Apple",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "apple.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Don't eat the pip.."
    },
	["basil"] = {
        ["name"] = "basil",
        ["label"] = "Basil",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "basil.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A great seasoning!"
    },
	["blueberry"] = {
        ["name"] = "blueberry",
        ["label"] = "Blueberry",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "blueberry.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Technically not a berry"
    },
	["boba"] = {
        ["name"] = "boba",
        ["label"] = "Boba",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "boba.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Chewy tapioca balls"
    },
	["bread"] = {
        ["name"] = "bread",
        ["label"] = "Bread",
        ["weight"] = 200,
        ["type"] = "item",
        ["image"] = "bread.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "The staple of humanity"
    },
	["burgerpatty"] = {
        ["name"] = "burgerpatty",
        ["label"] = "Burger Patty",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "burgerpatty.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Raw Patty"
    },
	["carrot"] = {
        ["name"] = "carrot",
        ["label"] = "Carrot",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "carrot.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "What's up, Doc?"
    },
	["cheddar"] = {
        ["name"] = "cheddar",
        ["label"] = "Cheddar Slice",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "cheddar.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Slice of Cheese"
    },
	["chicken"] = {
        ["name"] = "chicken",
        ["label"] = "Chicken",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "chicken.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A raw chicken"
    },
	["chickenbreast"] = {
        ["name"] = "chickenbreast",
        ["label"] = "Chicken Breast",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "chickenbreast.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A cooked chicken breast"
    },
	["chickennugget"] = {
        ["name"] = "chickennugget",
        ["label"] = "Chicken Nuggets",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "chickennugget.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A childhood favourite!"
    },
	["cinnamon"] = {
        ["name"] = "cinnamon",
        ["label"] = "Cinnamon",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "cinnamon.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A festive scent"
    },
	["cocoabean"] = {
        ["name"] = "cocoabean",
        ["label"] = "Cocoa Bean",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "cocoabean.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Signature ingredient of chocolate"
    },
	["coffeebean"] = {
        ["name"] = "coffeebean",
        ["label"] = "Coffee Beans",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "coffeebean.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Signature ingredient of coffee"
    },
	["cucumber"] = {
        ["name"] = "cucumber",
        ["label"] = "Cucumber",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "cucumber.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A creeping vine plant common in salads"
    },
	["eggs"] = {
        ["name"] = "eggs",
        ["label"] = "Eggs",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "eggs.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Free range of course!",
    },
	["flour"] = {
        ["name"] = "flour",
        ["label"] = "Flour",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "flour.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Milled powder from collected grain"
    },
	["grain"] = {
        ["name"] = "grain",
        ["label"] = "Grain",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "grain.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Some small, hard, dry seeds"
    },
	["ham"] = {
        ["name"] = "ham",
        ["label"] = "Sliced Ham",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "ham.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Freshly sliced ham"
    },
	["lemon"] = {
        ["name"] = "lemon",
        ["label"] = "Lemon",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "lemon.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Citrusy delight"
    },
	["lettuce"] = {
        ["name"] = "lettuce",
        ["label"] = "Lettuce",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "lettuce.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Perfect for burger topping... or Rabbits"
    },
	["lime"] = {
        ["name"] = "lime",
        ["label"] = "Lime",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "lime.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Goes well with Tequila!"
    },
	["meat"] = {
        ["name"] = "meat",
        ["label"] = "Meat",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "meat.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A slab of beef"
    },
	["milk"] = {
        ["name"] = "milk",
        ["label"] = "Milk",
        ["weight"] = 300,
        ["type"] = "item",
        ["image"] = "milk.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Glass bottle of milk!"
    },
	["milkpail"] = {
        ["name"] = "milkpail",
        ["label"] = "Milk Pail",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "milkpail.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Pail filled with freshly squeezed milk"
    },
	["mint"] = {
        ["name"] = "mint",
        ["label"] = "Mint",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mint.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Peppermint? Spearmint? Who knows!"
    },
	["mozzarella"] = {
        ["name"] = "mozzarella",
        ["label"] = "Mozzarella",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mozzarella.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Made from Italian Buffalo's milk"
    },
	["mushroom"] = {
        ["name"] = "mushroom",
        ["label"] = "Mushrooms",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mushrooms.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "What a fun guy!"
    },
	["olives"] = {
        ["name"] = "olives",
        ["label"] = "Olives",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "olives.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Not for everyone.."
    },
	["onion"] = {
        ["name"] = "onion",
        ["label"] = "Onion",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "burger-onion.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Brings a tear to my eye"
    },
	["orange"] = {
        ["name"] = "orange",
        ["label"] = "Orange",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "orange.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "What came first - the fruit or the colour?"
    },
	["peach"] = {
        ["name"] = "peach",
        ["label"] = "Peach",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "peach.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Peachy Keen!"
    },
	["pepper"] = {
        ["name"] = "pepper",
        ["label"] = "Pepper",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pepper.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Surprisingly good raw!"
    },
	["pork"] = {
        ["name"] = "pork",
        ["label"] = "Pork",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "pork.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "No longer wabbit season.."
    },
	["potato"] = {
        ["name"] = "potato",
        ["label"] = "Potatoes",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "potatoes.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "An Irish staple"
    },
	["pumpkin"] = {
        ["name"] = "pumpkin",
        ["label"] = "Pumpkin",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pumpkin.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Spooky!"
    },
	["rawbacon"] = {
        ["name"] = "rawbacon",
        ["label"] = "Raw Bacon",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "rawbacon.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Freshly sliced raw bacon"
    },
	["salami"] = {
        ["name"] = "salami",
        ["label"] = "Salami",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "salami.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "That's some spicy sausage!"
    },
	["sausages"] = {
        ["name"] = "sausages",
        ["label"] = "Sausages",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "sausages.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Some not-so-spicy sausage!",
    },
	["soybean"] = {
        ["name"] = "soybean",
        ["label"] = "Soy Bean",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "soybean.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A bean, but a legume"
    },
	["strawberry"] = {
        ["name"] = "strawberry",
        ["label"] = "Strawberry",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "strawberry.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Technically not a berry"
    },
	["tofu"] = {
        ["name"] = "tofu",
        ["label"] = "Tofu",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "tofu.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Vegan friendly!"
    },
	["tomato"] = {
        ["name"] = "tomato",
        ["label"] = "Tomato",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "tomato.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A fruit. Not a vegetable."
    },
	["yeast"] = {
        ["name"] = "yeast",
        ["label"] = "Yeast",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "yeast.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Single-celled organisms"
    },
	["yuzu"] = {
        ["name"] = "yuzu",
        ["label"] = "Yuzu",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "yuzu.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Japanese citrus fruit that resembles a small grapefruit"
    },

-------------------------------------------------------------------------------------------------
