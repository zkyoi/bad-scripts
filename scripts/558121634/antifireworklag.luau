local Workspace = game:GetService("Workspace")

Workspace.ChildAdded:Connect(function(child)
	if child.Name == "Shell" then
		task.defer(function()
			child:Destroy()
		end)
	end
end)

for _, obj in Workspace:GetChildren() do
	if obj.Name == "Shell" then
		obj:Destroy()
	end
end
