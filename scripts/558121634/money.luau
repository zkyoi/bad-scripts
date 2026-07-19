local Event = game:GetService("ReplicatedStorage").money
local Cash = game:GetService("Players").LocalPlayer.leaderstats.Cash

if Event then
	if Cash then
		Event:FireServer(
			-1 * Cash.Value -- Resets the value back to 0
		)
	end

	task.wait()
	
	Event:FireServer(
		1000000000000000000 -- Don't go any larger because int overflow
	)
end
