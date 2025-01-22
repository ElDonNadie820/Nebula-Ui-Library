local Nebula = {}

function Nebula:CreateUi(Title)
    local NebulaLibrary = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TopBar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local Frame_2 = Instance.new("Frame")
    local X = Instance.new("ImageButton")
    local ImageButton = Instance.new("ImageButton")
    local Name = Instance.new("TextLabel")
    local Content = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Minimized = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local X_2 = Instance.new("ImageButton")
    local Maximizar = Instance.new("ImageButton")
    local Name_2 = Instance.new("TextLabel")

    -- Properties

    NebulaLibrary.Name = "Nebula Library"
    NebulaLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    NebulaLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = NebulaLibrary
    Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)  -- Dark Gray
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.316, 0, 0.055, 0)
    Frame.Size = UDim2.new(0, 400, 0, 450)
    Frame.Active = true
    Frame.Draggable = true

    UICorner.Parent = Frame

    TopBar.Name = "TopBar"
    TopBar.Parent = Frame
    TopBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Darker Gray
    TopBar.BorderSizePixel = 0
    TopBar.Size = UDim2.new(0, 400, 0, 50)

    UICorner_2.Parent = TopBar

    -- TopBar title
    Name.Name = "Name"
    Name.Parent = TopBar
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1
    Name.Size = UDim2.new(0, 250, 0, 50)
    Name.Font = Enum.Font.Gotham
    Name.Text = Title
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextScaled = true

    -- Close Button (X)
    X.Name = "X"
    X.Parent = TopBar
    X.BackgroundTransparency = 1
    X.Position = UDim2.new(0.912, 0, 0.1, 0)
    X.Size = UDim2.new(0, 30, 0, 30)
    X.Image = "http://www.roblox.com/asset/?id=6031094678"
    X.ImageColor3 = Color3.fromRGB(255, 255, 255)

    -- Minimize Button
    ImageButton.Name = "Minimize"
    ImageButton.Parent = TopBar
    ImageButton.BackgroundTransparency = 1
    ImageButton.Position = UDim2.new(0.824, 0, 0.1, 0)
    ImageButton.Size = UDim2.new(0, 30, 0, 30)
    ImageButton.Image = "http://www.roblox.com/asset/?id=6026568240"
    ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)

    Content.Name = "Content"
    Content.Parent = Frame
    Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Content.BackgroundTransparency = 1
    Content.Position = UDim2.new(0, 0, 0.111, 0)
    Content.Size = UDim2.new(0, 400, 0, 400)

    UIListLayout.Parent = Content
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    -- Minimized frame properties
    Minimized.Name = "Minimized"
    Minimized.Parent = NebulaLibrary
    Minimized.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  -- Darker Gray
    Minimized.BorderSizePixel = 0
    Minimized.Position = UDim2.new(0.316, 0, 0.45, 0)
    Minimized.Size = UDim2.new(0, 400, 0, 50)
    Minimized.Visible = false
    Minimized.Active = true
    Minimized.Draggable = true

    UICorner_3.Parent = Minimized

    X_2.Name = "X"
    X_2.Parent = Minimized
    X_2.BackgroundTransparency = 1
    X_2.Position = UDim2.new(0.912, 0, 0.1, 0)
    X_2.Size = UDim2.new(0, 30, 0, 30)
    X_2.Image = "http://www.roblox.com/asset/?id=6031094678"
    X_2.ImageColor3 = Color3.fromRGB(255, 255, 255)

    Maximizar.Name = "Maximize"
    Maximizar.Parent = Minimized
    Maximizar.BackgroundTransparency = 1
    Maximizar.Position = UDim2.new(0.824, 0, 0.1, 0)
    Maximizar.Size = UDim2.new(0, 30, 0, 30)
    Maximizar.Image = "http://www.roblox.com/asset/?id=6026568256"
    Maximizar.ImageColor3 = Color3.fromRGB(255, 255, 255)

    Name_2.Name = "Name"
    Name_2.Parent = Minimized
    Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name_2.BackgroundTransparency = 1
    Name_2.Size = UDim2.new(0, 250, 0, 50)
    Name_2.Font = Enum.Font.Gotham
    Name_2.Text = Title
    Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name_2.TextScaled = true

    -- Scripts for buttons

    -- Close Button
    local function closeLibrary()
        X.MouseButton1Click:Connect(function()
            NebulaLibrary:Destroy()
        end)
    end
    coroutine.wrap(closeLibrary)()

    -- Minimize Button
    local function minimizeFrame()
        ImageButton.MouseButton1Click:Connect(function()
            Frame.Visible = false
            Minimized.Visible = true
        end)
    end
    coroutine.wrap(minimizeFrame)()

    -- Maximize Button
    local function maximizeFrame()
        Maximizar.MouseButton1Click:Connect(function()
            Minimized.Visible = false
            Frame.Visible = true
        end)
    end
    coroutine.wrap(maximizeFrame)()

    local NebulaFrame = {}
  
    function NebulaFrame:Button(Name, Call)
        local Button = Instance.new("Frame")
        local Click = Instance.new("ImageButton")
        local ButtonName = Instance.new("TextLabel")

        Button.Name = "Button"
        Button.Parent = Content
        Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)  -- Subtle Gray
        Button.Size = UDim2.new(0, 400, 0, 50)

        ButtonName.Name = "ButtonName"
        ButtonName.Parent = Button
        ButtonName.BackgroundTransparency = 1
        ButtonName.Size = UDim2.new(0, 150, 0, 50)
        ButtonName.Font = Enum.Font.Gotham
        ButtonName.Text = Name
        ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
        ButtonName.TextScaled = true

        Click.Name = "Click"
        Click.Parent = Button
        Click.BackgroundTransparency = 1
        Click.Position = UDim2.new(0.875, 0, 0, 0)
        Click.Size = UDim2.new(0, 50, 0, 43)
        Click.Image = "http://www.roblox.com/asset/?id=6031229361"
        Click.ImageColor3 = Color3.fromRGB(255, 255, 255)

        Click.MouseButton1Click:Connect(function()
            pcall(Call)
        end)
    end

    return NebulaFrame
end

return Nebula
