local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

-- Variables principales
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local OrionLib = {
    Elements = {},
    ThemeObjects = {},
    Connections = {},
    Flags = {},
    Themes = {
        Default = {
            Main = Color3.fromRGB(30, 30, 30),
            Second = Color3.fromRGB(40, 40, 40),
            Stroke = Color3.fromRGB(60, 60, 60),
            Divider = Color3.fromRGB(60, 60, 60),
            Text = Color3.fromRGB(255, 255, 255),
            TextDark = Color3.fromRGB(150, 150, 150)
        }
    },
    SelectedTheme = "Default",
    Folder = nil,
    SaveCfg = false
}

-- Cargar iconos Feather
local Icons = {}
local success, response = pcall(function()
    Icons = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/evoincorp/lucideblox/master/src/modules/util/icons.json")).icons
end)
if not success then
    warn("Orion Library - Error al cargar los iconos Feather: " .. response)
end

-- Función para obtener un icono
local function GetIcon(iconName)
    return Icons[iconName] or nil
end

-- Crear la interfaz principal
local Orion = Instance.new("ScreenGui")
Orion.Name = "Orion"
Orion.Parent = game:GetService("CoreGui")

-- Función para agregar funcionalidad de arrastre
local function AddDraggingFunctionality(dragPoint, main)
    local dragging, dragInput, mousePos, framePos = false
    dragPoint.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = main.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    dragPoint.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            TweenService:Create(main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
            }):Play()
        end
    end)
end

-- Función para crear elementos
local function CreateElement(elementName, elementFunction)
    OrionLib.Elements[elementName] = function(...)
        return elementFunction(...)
    end
end

-- Función para aplicar tema
local function ApplyTheme()
    for type, objects in pairs(OrionLib.ThemeObjects) do
        for _, object in pairs(objects) do
            local property = object:IsA("TextLabel") and "TextColor3" or "BackgroundColor3"
            object[property] = OrionLib.Themes[OrionLib.SelectedTheme][type]
        end
    end
end

-- Ejemplo de uso: Crear una ventana
CreateElement("Window", function(title)
    local window = Instance.new("Frame")
    window.Name = title
    window.Size = UDim2.new(0, 400, 0, 300)
    window.BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Main
    window.Parent = Orion

    local titleBar = Instance.new("TextLabel")
    titleBar.Size = UDim2.new(1, 0, 0, 30)
    titleBar.BackgroundColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Second
    titleBar.Text = title
    titleBar.TextColor3 = OrionLib.Themes[OrionLib.SelectedTheme].Text
    titleBar.Parent = window

    AddDraggingFunctionality(titleBar, window)
    table.insert(OrionLib.ThemeObjects.Main, window)
    table.insert(OrionLib.ThemeObjects.Second, titleBar)

    return window
end)

-- Aplicar el tema inicial
ApplyTheme()
