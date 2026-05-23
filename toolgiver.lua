local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")

local AllowedUsers = {
	2525576851,
	8119206752 -- enter as muich user IDs you want 
}

Players.PlayerAdded:Connect(function(player)

	if table.find(AllowedUsers, player.UserId) then

		player.CharacterAdded:Connect(function()
			local backpack = player:WaitForChild("Backpack")

			local tool = ServerStorage:FindFirstChild("toolname") --rename with your actual tool name u stored in ServerStorage
			if tool then
				local clone = tool:Clone()
				clone.Parent = backpack
			end
		end)

	end
end)
