local Workspace = game:GetService("Workspace")

Workspace.ChildAdded:Connect(function(child)
    if child.Name == "Shell" then
		child:Destroy()
	end
end)

for _, obj in pairs(Workspace:GetChildren()) do
	if obj.Name == "Shell" then
		obj:Destroy()
	end
end
