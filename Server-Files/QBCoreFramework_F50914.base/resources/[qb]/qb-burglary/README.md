Thanks for purchasing our Houserobbery script, be sure to join our discord for updates and support - https://discord.gg/sgMjeY7BeX <3

Documentation - https://skryptz5m.github.io/burglary-docs/

Please read the installation guide below carefully.

Before following these steps make sure qb-instance has been removed from your resource folder. 

Step 1 (Required). Add qb-burglary to your [qb] folder
Step 2 (Recommended). Take the provided images and add them to your inventory images folder, qb-inventory -> html -> images
Step 3 (Required). Add the required items to your QB item list, qb-core -> shared -> items.lua or shared.lua

TV prop item
['bigtv'] 				 	     = {['name'] = 'bigtv', 			  	  		['label'] = 'TV', 						['weight'] = 70000, 	['type'] = 'item', 		['image'] = 'stolentv.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

PC prop item
['computer'] 				 	 = {['name'] = 'computer', 			  	  		['label'] = 'Computer', 				['weight'] = 70000, 	['type'] = 'item', 		['image'] = 'stolencomputer.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

Microwave prop item
['microwave'] 				 	 = {['name'] = 'microwave', 			  	  	['label'] = 'Microwave', 				['weight'] = 70000, 	['type'] = 'item', 		['image'] = 'stolenmicro.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

Stereo prop item
['stereo'] 				 	     = {['name'] = 'stereo', 			  	  		['label'] = 'HIFI', 					['weight'] = 70000, 	['type'] = 'item', 		['image'] = 'stolenstereo.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

T1 safe key item
['t1_safe_key'] 			 	 = {['name'] = 't1_safe_key', 			 		['label'] = 'Key', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'safe_key.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Probably unlocks something'},

T2 safe key item
['t2_safe_key'] 			 	 = {['name'] = 't2_safe_key', 			 		['label'] = 'Key', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'safe_key.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Probably unlocks something'},

T3 safe key item
['t3_safe_key'] 			 	 = {['name'] = 't3_safe_key', 			 		['label'] = 'Key', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'safe_key.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Probably unlocks something'},

Step 4 (Recommended). You can find more information and options in config.lua - https://gyazo.com/0ecb6c467922c0bcb477257424ec2959
Step 5 (Recommended). You can also find more options based on the house tier in houses/tier1.lua/tier2.lua/tier3.lua - https://gyazo.com/ab693e698bd2bfb92a18b350d5acbbd2
Step 6 (Optional). You must import the "boss_reputation.sql" file before enabling the XP system - Config.Reputation in config.lua - https://gyazo.com/b8dce80325260d8fcf6a53676da8f915 / https://gyazo.com/9354b3256b6f0863b264117863d95d04

If you need help please use the request-help channel to create a ticket. - https://gyazo.com/166dd42a1fbe5aae909a1909dc401ebd
