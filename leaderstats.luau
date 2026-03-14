game.Players.PlayerAdded:Connect(function(Player)
	local Leaderstats = Instance.new("Folder", Player)
	Leaderstats.Name = "leaderstats"
	
	local Currency = Instance.new("IntValue", Leaderstats)
	Currency.Name = "Money" -- Change this with your currency name.
	Currency.Value = 100

end)
