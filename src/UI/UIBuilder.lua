local UIBuilder = {}

function UIBuilder:Init(player)

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ZuevHub"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0,400,0,300)
    mainFrame.Position = UDim2.new(0.5,-200,0.5,-150)
    mainFrame.BackgroundColor3 = Color3.fromRGB(35,35,35)
    mainFrame.Parent = screenGui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1,0,0,40)
    title.Text = "ZuevHub"
    title.TextColor3 = Color3.new(1,1,1)
    title.BackgroundTransparency = 1
    title.Parent = mainFrame

end

return UIBuilder
