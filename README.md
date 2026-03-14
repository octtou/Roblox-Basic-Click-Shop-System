# A Click to buy shop system from my old project
- Scroll down to the end for the game link
# History
- Created on 29/12/2020
- Created on my Second Account OwlManGuyThing
# How To Use
## Set Up
- Insert a new Part inside Workspace
- Insert a ClickDetector inside the Part
- Insert a Script inside the Part
- Grab any tool from the ToolBox
- Put the tool inside Replicated storage
## Code Set Up
- Inside ServerScript Service Add a Server Script
- Copy the leaderstats code to the Script
- Name the script to LeaderStats
- Copy the Click_to_Buy code to the Script inside the Part

- Change SpeedCoil to the name of your tool
```luau
local price = 10
local db = true

script.Parent.ClickDetector.MouseClick:connect(function(player)
	if player.leaderstats.BloxyCola.Value >= price and db == true then
		player.leaderstats.BloxyCola.Value = player.leaderstats.BloxyCola.Value - price
		db = false
		script.Parent.BrickColor = BrickColor.new("Bright red")
		game.ReplicatedStorage.SpeedCoil:Clone().Parent = player.Backpack -- Change SpeedCoil to the name of your tool
		wait(3)
		script.Parent.BrickColor = BrickColor.new("Bright green")
		db = true
	end
end)
```

- example: if the name of your tool is Sword
```luau
game.ReplicatedStorage.Sword:Clone().Parent = player.Backpack
```

- You could also change the cooldown of how many per second the player can buy the item
```luau
local price = 10
local db = true

script.Parent.ClickDetector.MouseClick:connect(function(player)
	if player.leaderstats.BloxyCola.Value >= price and db == true then
		player.leaderstats.BloxyCola.Value = player.leaderstats.BloxyCola.Value - price
		db = false
		script.Parent.BrickColor = BrickColor.new("Bright red")
		game.ReplicatedStorage.SpeedCoil:Clone().Parent = player.Backpack -- Change SpeedCoil to the name of your tool
		wait(3) -- Cooldown
		script.Parent.BrickColor = BrickColor.new("Bright green")
		db = true
	end
end)
```

## Game Linky
https://www.roblox.com/id/games/6156380756/The-Wall-of-Doom
