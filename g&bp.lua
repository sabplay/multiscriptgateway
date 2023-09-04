local a = Instance.new("BillboardGui")
a.Size = UDim2.new(1,0, 1,0)
a.Name = "A"
a.AlwaysOnTop = true
local b = Instance.new("Frame",a)
b.Size = UDim2.new(1,0, 1,0)
b.BackgroundTransparency = 1
b.BorderSizePixel = 0
local c = Instance.new("TextLabel",b)
c.Text = "Zombie"
c.TextColor3 = Color3.new(1,1,1)
c.Font = 1
c.TextScaled = true
c.Size = UDim2.new(3,0, 3,0)
c.BackgroundTransparency = 1
c.BorderSizePixel = 0

wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "activiated"; -- the title (ofc)
Text = "Multiscript, - Scripting at it's finest"; -- what the text says (ofc)
Duration = 5; -- how long the notification should in secounds
})
       
game:GetService("Workspace").Camera.ChildAdded:Connect(function(zom)
   if zom:IsA("Model") then
       a:Clone().Parent = zom
   end
end)

function CreateCham(Zombie)
   local h = Instance.new('Highlight', Zombie)
   h.FillTransparency = 0.5
   h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
   h.Enabled = true
   h.OutlineColor = Color3.fromRGB(0,0,0)
   h.FillColor = Color3.fromRGB(255,0,0)
end
for i,v in pairs(workspace.Camera:GetChildren()) do
   if v.Name == 'm_Zombie' then
       CreateCham(v)
   end
end
workspace.Camera.ChildAdded:Connect(function(Child)
   if Child.Name == 'm_Zombie' then
       wait(3)
       CreateCham(Child)
   end
end)
