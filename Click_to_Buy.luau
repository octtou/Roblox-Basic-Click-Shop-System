local price = 10
local db = true -- so player cant spam buy btw

script.Parent.ClickDetector.MouseClick:connect(function(player)
	if player.leaderstats.Money.Value >= price and db == true then
		player.leaderstats.Money.Value = player.leaderstats.Money.Value - price
		db = false
		script.Parent.BrickColor = BrickColor.new("Bright red")
		game.ReplicatedStorage.SpeedCoil:Clone().Parent = player.Backpack
		wait(3) --Change how many per second they can buy
		script.Parent.BrickColor = BrickColor.new("Bright green")
		db = true
	end
end)
