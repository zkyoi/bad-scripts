local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local stroller = "Stroller"

local function disableTI(part)
	if part then
		for _, connection in getconnections(part.Touched) do
			connection:Disable()
		end
	end
end

local function removeTouchInterest(tool)
	-- I did this the lazy way
	for _, obj in tool:GetChildren() do
		local t = obj:FindFirstChildOfClass("TouchTransmitter")
		if t then
			disableTI(t.Parent)
		end
	end
end

local function toolCheck(tool)
	if tool:IsA("Tool") then
		if tool.Name == stroller then
			removeTouchInterest(tool)
		end
	end
end

local function checkForTools(x)
	for _, v in x:GetChildren() do
		toolCheck(v)
	end
end

local function monitor(thing)
	if not thing then return end
	thing.ChildAdded:Connect(function(child)
		if child then
			task.defer(function()
				toolCheck(child)
			end)
		end
	end)
	checkForTools(thing)
end

for _, player in Players:GetPlayers() do
	if player == plr then continue end
	local bp = player:FindFirstChild("Backpack")
	monitor(bp)
	local c = player.Character
	if c then
		monitor(c)
		checkForTools(c)
	end
end

Players.PlayerAdded:Connect(function(player)
	local bp = player:WaitForChild("Backpack", 10)
	monitor(bp)
end)
