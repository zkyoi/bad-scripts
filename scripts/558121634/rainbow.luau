local Event = game:GetService("ReplicatedStorage").MainEvent
local plr = game:GetService("Players").LocalPlayer

while true do
	if not plr.Character or not Event then break end
	for i=0, 127 do
		local color = BrickColor.palette(i)
		Event:FireServer(
    		"Paint",
    		"all",
    		BrickColor.new(tostring(color))
		)
		task.wait()
	end
	task.wait()
end
