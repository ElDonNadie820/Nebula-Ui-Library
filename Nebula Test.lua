_G.Main = {}

function _G.Main:New(Title)
    -- Creación de elementos principales
    local NebulaLibrary = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TopBar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local CloseButton = Instance.new("ImageButton")
    local MinimizeButton = Instance.new("ImageButton")
    local TitleLabel = Instance.new("TextLabel")
    local Content = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Minimized = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local MaximizeButton = Instance.new("ImageButton")
    local MinimizedTitleLabel = Instance.new("TextLabel")

    -- Propiedades principales
    NebulaLibrary.Name = "Nebula Library"
    NebulaLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    NebulaLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = NebulaLibrary
    Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.316, 0, 0.055, 0)
    Frame.Size = UDim2.new(0, 400, 0, 450)
    Frame.Active = true
    Frame.Draggable = true

    UICorner.Parent = Frame

    -- Barra superior (TopBar)
    TopBar.Parent = Frame
    TopBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    TopBar.Size = UDim2.new(0, 400, 0, 50)
    UICorner_2.Parent = TopBar

    -- Botón de Cierre
    CloseButton.Name = "CloseButton"
    CloseButton.Parent = TopBar
    CloseButton.BackgroundTransparency = 1
    CloseButton.Position = UDim2.new(0.9125, 0, 0.1377, 0)
    CloseButton.Size = UDim2.new(0, 35, 0, 35)
    CloseButton.Image = "http://www.roblox.com/asset/?id=6031094678"
    CloseButton.ImageColor3 = Color3.fromRGB(220, 220, 220)

    -- Botón de Minimizar
    MinimizeButton.Name = "MinimizeButton"
    MinimizeButton.Parent = TopBar
    MinimizeButton.BackgroundTransparency = 1
    MinimizeButton.Position = UDim2.new(0.824999988, 0, 0, 0)
    MinimizeButton.Size = UDim2.new(0, 35, 0, 35)
    MinimizeButton.Image = "http://www.roblox.com/asset/?id=6026568240"
    MinimizeButton.ImageColor3 = Color3.fromRGB(220, 220, 220)

    -- Título
    TitleLabel.Name = "TitleLabel"
    TitleLabel.Parent = TopBar
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Size = UDim2.new(0, 200, 0, 50)
    TitleLabel.Font = Enum.Font.RobotoMono
    TitleLabel.Text = Title
    TitleLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
    TitleLabel.TextScaled = true
    TitleLabel.TextSize = 14
    TitleLabel.TextWrapped = true

    -- Contenido
    Content.Parent = Frame
    Content.BackgroundTransparency = 1
    Content.Position = UDim2.new(0, 0, 0.111, 0)
    Content.Size = UDim2.new(0, 400, 0, 400)

    UIListLayout.Parent = Content
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 10)

    -- Panel Minimizado
    Minimized.Name = "Minimized"
    Minimized.Parent = NebulaLibrary
    Minimized.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Minimized.Position = UDim2.new(0.316, 0, 0.45, 0)
    Minimized.Size = UDim2.new(0, 400, 0, 50)
    Minimized.Visible = false
    Minimized.Active = true
    Minimized.Draggable = true

    UICorner_3.Parent = Minimized

    -- Botón de Cierre del Panel Minimizado
    local CloseMinimizedButton = Instance.new("ImageButton")
    CloseMinimizedButton.Parent = Minimized
    CloseMinimizedButton.BackgroundTransparency = 1
    CloseMinimizedButton.Position = UDim2.new(0.9125, 0, 0.2177, 0)
    CloseMinimizedButton.Size = UDim2.new(0, 35, 0, 35)
    CloseMinimizedButton.Image = "http://www.roblox.com/asset/?id=6031094678"
    CloseMinimizedButton.ImageColor3 = Color3.fromRGB(220, 220, 220)

    -- Botón Maximizar
    MaximizeButton.Parent = Minimized
    MaximizeButton.BackgroundTransparency = 1
    MaximizeButton.Position = UDim2.new(0.824999988, 0, 0.2177, 0)
    MaximizeButton.Size = UDim2.new(0, 35, 0, 35)
    MaximizeButton.Image = "http://www.roblox.com/asset/?id=6026568256"
    MaximizeButton.ImageColor3 = Color3.fromRGB(220, 220, 220)

    -- Título Panel Minimizado
    MinimizedTitleLabel.Name = "MinimizedTitleLabel"
    MinimizedTitleLabel.Parent = Minimized
    MinimizedTitleLabel.BackgroundTransparency = 1
    MinimizedTitleLabel.Size = UDim2.new(0, 200, 0, 50)
    MinimizedTitleLabel.Font = Enum.Font.RobotoMono
    MinimizedTitleLabel.Text = Title
    MinimizedTitleLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
    MinimizedTitleLabel.TextScaled = true
    MinimizedTitleLabel.TextSize = 14
    MinimizedTitleLabel.TextWrapped = true

    -- Scripts de Funcionalidad

    -- Cerrar ventana
    CloseButton.MouseButton1Click:Connect(function()
        NebulaLibrary:Destroy()
    end)

    -- Minimizar ventana
    MinimizeButton.MouseButton1Click:Connect(function()
        Frame.Visible = false
        Minimized.Visible = true
    end)

    -- Maximizar ventana
    MaximizeButton.MouseButton1Click:Connect(function()
        Minimized.Visible = false
        Frame.Visible = true
    end)

    -- Cerrar ventana minimizada
    CloseMinimizedButton.MouseButton1Click:Connect(function()
        NebulaLibrary:Destroy()
    end)

    -- Agregar botones
    _G.Frame = {}
    function _G.Frame:Button(Name, Call)
        local Button = Instance.new("Frame")
        local ButtonName = Instance.new("TextLabel")
        local Click = Instance.new("ImageButton")

        Button.Name = "Button"
        Button.Parent = Content
        Button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        Button.Size = UDim2.new(0, 400, 0, 50)

        ButtonName.Name = "ButtonName"
        ButtonName.Parent = Button
        ButtonName.BackgroundTransparency = 1
        ButtonName.Size = UDim2.new(0, 150, 0, 50)
        ButtonName.Font = Enum.Font.SourceSans
        ButtonName.Text = Name
        ButtonName.TextColor3 = Color3.fromRGB(255, 170, 0)
        ButtonName.TextScaled = true

        Click.Name = "Click"
        Click.Parent = Button
        Click.BackgroundTransparency = 1
        Click.Position = UDim2.new(0.875, 0, 0, 0)
        Click.Size = UDim2.new(0, 50, 0, 43)
        Click.Image = "http://www.roblox.com/asset/?id=6031229361"
        Click.ImageColor3 = Color3.fromRGB(130, 130, 130)

        Click.MouseButton1Click:Connect(function()
            pcall(Call)
        end)
    end

    return _G.Frame
end
