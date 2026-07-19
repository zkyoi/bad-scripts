-- This is less antistroller and more antisit
local Players = game:GetService("Players")
local plr = Players.LocalPlayer

function as(char)
	local hum = char:WaitForChild("Humanoid", 10)
	if hum then
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
		hum:GetPropertyChangedSignal("Sit"):Connect(function()
			if hum.Sit then
				hum.Sit = false
				hum:ChangeState(Enum.HumanoidStateType.GettingUp)
			end
		end)
	end
end

plr.CharacterAdded:Connect(as)
if plr.Character then as(plr.Character) end
