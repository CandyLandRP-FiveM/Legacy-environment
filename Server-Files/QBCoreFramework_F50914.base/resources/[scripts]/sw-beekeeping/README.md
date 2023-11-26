
Thank you for buying one of my scripts! Hopefully it can empower your roleplay server the way it has on ours!
These scripts are fully configurable and customisable, and open to update ideas and commissions!

I have a discord available for any support needed, and even any script suggestions you may have!

https://discord.gg/tpR2yGsGjE

We also run a roleplay server available where you can experience all these roleplay features first-hand! Serious 18+ RP with a focus on storytelling

https://letsrp.co.uk/

All my scripts have been configured within a balanced live economy server to save you time balancing it yourself!

Props made by the amazing https://bzzz.tebex.io/, please check them out!

-------------------------------------------------------------------------------------------------

CHANGELOG
	
Update v1.0:
	- New Activities: Beekeeping, Honey Crafting, and Mead Crafting!
		- Attract bees to your apiaries using pollen bought from NPCs or collected from 'SW-Farming' crops.
		- Use Queen Bees, Worker Bees, Apiary Frames, and Pollen to synthesize into honey.
			- Flavoured honeys are included when partnered with 'SW-Farming'.
		- Ferment your honey into flavoured alcoholic meads for your players to sell or drink.
	- New Tools: Smokers and Honey Scrapers!
		- Use smokers to pacify your bees allowing you to safely acquire the honeycomb.
		- Use scrapers to scrape every last drop of honey produced within the hives.
		
		
	- This script was made with the intention to work on an already balanced RP server, so values are fully configurable, with further compatibility planned for the future (requests accepted)
		
-------------------------------------------------------------------------------------------------

INSTALLATION

Drag and drop this resource into your FiveM resources folder, and make sure you ensure it in the server.cfg

Add these images to your inventory script

	[qb] > qb-inventory > html > images
            
-------------------------------------------------------------------------------------------------

Add these to your shared/items.lua in your qb-core resource:

Under your QBShared.Items = {

	-- SW-Beekeeping
	["queenbee"] = {
        ["name"] = "queenbee",
        ["label"] = "Queen Bee",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "queenbee.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "The mother of most bees in a hive"
    },
	["workerbee"] = {
        ["name"] = "workerbee",
        ["label"] = "Worker Bee",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "workerbee.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A female bee that carries pollen to the hive"
    },
	["pollen"] = {
        ["name"] = "pollen",
        ["label"] = "Pollen",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pollen.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Powdery substance produced by flowers of seed plants"
    },
	["frame"] = {
        ["name"] = "frame",
        ["label"] = "Apiary Frame",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "frame.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Structural frame that holds the honeycomb within the hive"
    },
	["filledframe"] = {
        ["name"] = "filledframe",
        ["label"] = "Filled Frame",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "filledframe.png",
        ["unique"] = true,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Filled with gooey honeycomb!"
    },
	["honey"] = {
        ["name"] = "honey",
        ["label"] = "Honey",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "honey.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Local sweet honey that can provide health benefits"
    },
	["honeycomb"] = {
        ["name"] = "honeycomb",
        ["label"] = "Honeycomb",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "honeycomb.png",
        ["unique"] = true,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Hexagonal mass to protect bee offspring and store honey"
    },
	["honey_orange"] = {
        ["name"] = "honey_orange",
        ["label"] = "Orange Honey",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "honey_orange.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Local honey sweetened by orange fruit pollen"
    },
	["honey_lime"] = {
        ["name"] = "honey_lime",
        ["label"] = "Lime Honey",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "honey_lime.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Local honey sweetened by lime fruit pollen"
    },
	["honey_lemon"] = {
        ["name"] = "honey_lemon",
        ["label"] = "Lemon Honey",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "honey_lemon.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Local honey sweetened by lemon fruit pollen"
    },
	["honey_peach"] = {
        ["name"] = "honey_peach",
        ["label"] = "Peach Honey",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "honey_peach.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Local honey sweetened by peach fruit pollen"
    },
	["honey_apple"] = {
        ["name"] = "honey_apple",
        ["label"] = "Apple Honey",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "honey_apple.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Local honey sweetened by apple fruit pollen"
    },
	["pollen_orange"] = {
        ["name"] = "pollen_orange",
        ["label"] = "Orange Pollen",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pollen_orange.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Pollen collected from orange fruit trees"
    },
	["pollen_lime"] = {
        ["name"] = "pollen_lime",
        ["label"] = "Lime Pollen",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pollen_lime.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Pollen collected from lime fruit trees"
    },
	["pollen_lemon"] = {
        ["name"] = "pollen_lemon",
        ["label"] = "Lemon Pollen",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pollen_lemon.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Pollen collected from lemon fruit trees"
    },
	["pollen_peach"] = {
        ["name"] = "pollen_peach",
        ["label"] = "Peach Pollen",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pollen_peach.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Pollen collected from peach fruit trees"
    },
	["pollen_apple"] = {
        ["name"] = "pollen_apple",
        ["label"] = "Apple Pollen",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "pollen_apple.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Pollen collected from apple fruit trees"
    },
	["smoker"] = {
        ["name"] = "smoker",
        ["label"] = "Bee Smoker",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "smoker.png",
        ["unique"] = true,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Device used to calm honey bees"
    },
	["scraper"] = {
        ["name"] = "scraper",
        ["label"] = "Honey Scraper",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "scraper.png",
        ["unique"] = true,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Tool used the clear out honey and beeswax"
    },
	["mead"] = {
        ["name"] = "mead",
        ["label"] = "Mead",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mead.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Fermented honey mixed with water, often called 'Honey Wine'"
    },
	["mead_orange"] = {
        ["name"] = "mead_orange",
        ["label"] = "Orange Mead",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mead_orange.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Alcoholic orange-sweetened mead"
    },
	["mead_lime"] = {
        ["name"] = "mead_lime",
        ["label"] = "Lime Mead",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mead_lime.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Alcoholic lime-sweetened mead"
    },
	["mead_lemon"] = {
        ["name"] = "mead_lemon",
        ["label"] = "Lemon Mead",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mead_lemon.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Alcoholic lemon-sweetened mead"
    },
	["mead_peach"] = {
        ["name"] = "mead_peach",
        ["label"] = "Peach Mead",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mead_peach.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Alcoholic peach-sweetened mead"
    },
	["mead_apple"] = {
        ["name"] = "mead_apple",
        ["label"] = "Apple Mead",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "mead_apple.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
        ["description"] = "Alcoholic apple-sweetened mead"
    },
	-- Beekeeping features coming soonTM
	["royaljelly"] = {
        ["name"] = "royaljelly",
        ["label"] = "Royal Jelly",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "royaljelly.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Valuable honey bee secretion containing plentiful health benefits"
    },
	["propolis"] = {
        ["name"] = "propolis",
        ["label"] = "Propolis",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "propolis.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Resin made by bees from the buds of poplar and cone-bearing trees"
    },
	["beeswax"] = {
        ["name"] = "beeswax",
        ["label"] = "Beeswax",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "beeswax.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "A natural wax produced by Honey Bees"
    },
	["waxcandle"] = {
        ["name"] = "waxcandle",
        ["label"] = "Wax Candle",
        ["weight"] = 100,
        ["type"] = "item",
        ["image"] = "waxcandle.png",
        ["unique"] = false,
        ["useable"] = false,
        ["shouldClose"] = false,
        ["combinable"] = nil,
        ["description"] = "Burns far longer than other candles!"
    },

-------------------------------------------------------------------------------------------------
