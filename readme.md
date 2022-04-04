<div align="center">
    <img width="150" height="150" src="https://i.ibb.co/XzZZrBg/pc-logo-modified.png">
</div>

<h1 align="center">cx-tuners</h1>

# A better way to upgrade your vehicles.

## [Preview](https://youtu.be/CvuTuQYrO_s)

## Dependencies
* [Latest Version of QBCore](https://github.com/qbcore-framework)
* [PolyZone](https://github.com/mkafrin/PolyZone)
* [qb-target](https://github.com/BerkieBb/qb-target)
* [qb-menu](https://github.com/qbcore-framework/qb-menu)

## Installation
* Download the ZIP file and extract it in your resources folder.
* Add ensure cx-tuners to your server.cfg
* Drag and drop the images in `images`
* Add items to qb-core/shared/items.lua
```
	-- Engines
	["engine_level1"] 			 	 = {["name"] = "engine_level1", 			  	["label"] = "Engine Level 1", 			["weight"] = 30000,		["type"] = "item", 		["image"] = "engine1.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Low Tier Engine"},
	["engine_level2"] 			 	 = {["name"] = "engine_level2", 			  	["label"] = "Engine Level 2", 			["weight"] = 35000,		["type"] = "item", 		["image"] = "engine2.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Mid Tier Engine"},
	["engine_level3"] 			 	 = {["name"] = "engine_level3", 			  	["label"] = "Engine Level 3", 			["weight"] = 40000,		["type"] = "item", 		["image"] = "engine3.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Mid Tier Engine"},
	["engine_level4"] 			 	 = {["name"] = "engine_level4", 			  	["label"] = "Engine Level 4", 			["weight"] = 45000,		["type"] = "item", 		["image"] = "engine4.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A High Tier Engine"},

	-- Transmissions
	["transmission_level1"] 		 = {["name"] = "transmission_level1", 			["label"] = "Transmission Level 1", 	["weight"] = 20000,		["type"] = "item", 		["image"] = "transmission1.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Low Tier Transmission"},
	["transmission_level2"] 		 = {["name"] = "transmission_level2", 			["label"] = "Transmission Level 2", 	["weight"] = 25000,		["type"] = "item", 		["image"] = "transmission2.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Mid Tier Transmission"},
	["transmission_level3"] 		 = {["name"] = "transmission_level3", 		  	["label"] = "Transmission Level 3", 	["weight"] = 30000,		["type"] = "item", 		["image"] = "transmission3.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A High Tier Transmission"},

	-- Suspensions
	["suspension_level1"] 			 = {["name"] = "suspension_level1", 			["label"] = "Suspension Level 1", 		["weight"] = 15000,		["type"] = "item", 		["image"] = "suspension1.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Low Tier Suspension"},
	["suspension_level2"] 			 = {["name"] = "suspension_level2", 		  	["label"] = "Suspension Level 2", 		["weight"] = 20000,		["type"] = "item", 		["image"] = "suspension2.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Mid Tier Suspension"},
	["suspension_level3"] 		 	 = {["name"] = "suspension_level3", 		  	["label"] = "Suspension Level 3", 		["weight"] = 25000,		["type"] = "item", 		["image"] = "suspension3.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Mid Tier Suspension"},
	["suspension_level4"] 		 	 = {["name"] = "suspension_level4", 		  	["label"] = "Suspension Level 4", 		["weight"] = 30000,		["type"] = "item", 		["image"] = "suspension4.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A High Tier Suspension"},

	-- Brakes
	["brakes_level1"] 			 	 = {["name"] = "brakes_level1", 			  	["label"] = "Brakes Level 1", 			["weight"] = 10000,		["type"] = "item", 		["image"] = "brakes1.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Low Tier Brakes"},
	["brakes_level2"] 			 	 = {["name"] = "brakes_level2", 			  	["label"] = "Brakes Level 2", 			["weight"] = 15000,		["type"] = "item", 		["image"] = "brakes2.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Mid Tier Brakes"},
	["brakes_level3"] 			 	 = {["name"] = "brakes_level3", 			  	["label"] = "Brakes Level 3", 			["weight"] = 20000,		["type"] = "item", 		["image"] = "brakes3.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "High Tier Brakes"},

	-- Turbo
	["turbo"] 			 	 		 = {["name"] = "turbo", 			  			["label"] = "Turbo", 					["weight"] = 30000,		["type"] = "item", 		["image"] = "turbo.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A Cool Looking Turbo"},
  ```
