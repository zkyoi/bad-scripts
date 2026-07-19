local Event = game:GetService("ReplicatedStorage").money
local Cash = game:GetService("Players").LocalPlayer.leaderstats.Cash
Event:FireServer(
	-1 * Cash.Value
)

task.wait()

Event:FireServer(
	9007199254740992 -- Don't go any larger because int overflow
)
