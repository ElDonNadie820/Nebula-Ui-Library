local MountainExecutor = Instance.new("ScreenGui")
local MountainX = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local X = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local Inject = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Message = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local SkibidiText = Instance.new("TextLabel")

--Properties:

MountainExecutor.Name = "Mountain Executor"
MountainExecutor.Parent = game.Players.LocalPlayer.PlayerGui
MountainExecutor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MountainX.Name = "Mountain X"
MountainX.Parent = MountainExecutor
MountainX.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MountainX.BorderColor3 = Color3.fromRGB(0, 0, 0)
MountainX.BorderSizePixel = 0
MountainX.Position = UDim2.new(0.223992497, 0, 0.203557312, 0)
MountainX.Size = UDim2.new(0.562324286, 0, 0.590909064, 0)
MountainX.Visible = false

TopBar.Name = "TopBar"
TopBar.Parent = MountainX
TopBar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0.163879603, 0)

X.Name = "X"
X.Parent = TopBar
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.BackgroundTransparency = 1.000
X.BorderColor3 = Color3.fromRGB(0, 0, 0)
X.BorderSizePixel = 0
X.Position = UDim2.new(0.956666648, 0, 0.224489793, 0)
X.Size = UDim2.new(0.0416666679, 0, 0.510204077, 0)
X.Font = Enum.Font.Gotham
X.Text = "X"
X.TextColor3 = Color3.fromRGB(85, 255, 255)
X.TextScaled = true
X.TextSize = 14.000
X.TextWrapped = true

TextButton.Name = "-"
TextButton.Parent = TopBar
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.916666687, 0, 0.224489793, 0)
TextButton.Size = UDim2.new(0.0416666679, 0, 0.510204077, 0)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "-"
TextButton.TextColor3 = Color3.fromRGB(85, 255, 255)
TextButton.TextSize = 40.000
TextButton.TextWrapped = true

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0.25, 0, 1.02040815, 0)
TextLabel.Font = Enum.Font.Jura
TextLabel.Text = "Mountain X"
TextLabel.TextColor3 = Color3.fromRGB(85, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = TopBar

Frame.Parent = TopBar
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.714285731, 0)
Frame.Size = UDim2.new(1, 0, 0.265306115, 0)
Frame.ZIndex = 0

TextLabel_2.Parent = TopBar
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.25, 0, 0.285714298, 0)
TextLabel_2.Size = UDim2.new(0.0399999991, 0, 0.46938777, 0)
TextLabel_2.Font = Enum.Font.Jura
TextLabel_2.Text = "V1"
TextLabel_2.TextColor3 = Color3.fromRGB(85, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = MountainX

TextBox.Parent = MountainX
TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Position = UDim2.new(0.00833333377, 0, 0.163879603, 0)
TextBox.Size = UDim2.new(0.978333354, 0, 0.665551841, 0)
TextBox.Font = Enum.Font.SciFi
TextBox.PlaceholderColor3 = Color3.fromRGB(85, 255, 255)
TextBox.PlaceholderText = "--Made By @veon2v50 On TikTok"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(85, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

Execute.Name = "Execute"
Execute.Parent = MountainX
Execute.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
Execute.Position = UDim2.new(0.689999998, 0, 0.85953176, 0)
Execute.Size = UDim2.new(0.13333334, 0, 0.113712378, 0)
Execute.Font = Enum.Font.Gotham
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(85, 255, 255)
Execute.TextScaled = true
Execute.TextSize = 14.000
Execute.TextWrapped = true

Clear.Name = "Clear"
Clear.Parent = MountainX
Clear.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Clear.Position = UDim2.new(0.523333311, 0, 0.85953176, 0)
Clear.Size = UDim2.new(0.13333334, 0, 0.113712378, 0)
Clear.Font = Enum.Font.Gotham
Clear.Text = "ClearText"
Clear.TextColor3 = Color3.fromRGB(85, 255, 255)
Clear.TextScaled = true
Clear.TextSize = 14.000
Clear.TextWrapped = true

Inject.Name = "Inject"
Inject.Parent = MountainX
Inject.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Inject.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inject.Position = UDim2.new(0.855000019, 0, 0.85953176, 0)
Inject.Size = UDim2.new(0.13333334, 0, 0.113712378, 0)
Inject.Font = Enum.Font.Gotham
Inject.Text = "Inject"
Inject.TextColor3 = Color3.fromRGB(85, 255, 255)
Inject.TextScaled = true
Inject.TextSize = 14.000
Inject.TextWrapped = true

Open.Name = "Open"
Open.Parent = MountainExecutor
Open.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.446640313, 0)
Open.Size = UDim2.new(0.140581071, 0, 0.0968379453, 0)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(85, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = Open

Message.Name = "Message"
Message.Parent = MountainExecutor
Message.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Message.BorderColor3 = Color3.fromRGB(0, 0, 0)
Message.BorderSizePixel = 0
Message.Position = UDim2.new(0.812558591, 0, 0.762845874, 0)
Message.Size = UDim2.new(0.168697283, 0, 0.197628453, 0)
Message.Visible = false

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = Message

SkibidiText.Name = "SkibidiText"
SkibidiText.Parent = Message
SkibidiText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SkibidiText.BackgroundTransparency = 1.000
SkibidiText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkibidiText.BorderSizePixel = 0
SkibidiText.Position = UDim2.new(0, 0, 0.129999995, 0)
SkibidiText.Size = UDim2.new(1, 0, 0.74000001, 0)
SkibidiText.Font = Enum.Font.Gotham
SkibidiText.Text = "Injected Now You Can Execute"
SkibidiText.TextColor3 = Color3.fromRGB(85, 255, 255)
SkibidiText.TextSize = 25.000
SkibidiText.TextWrapped = true

-- Scripts:

local function VTRNI_fake_script() -- X.DisableNebulaExecutorOnClick 
	local script = Instance.new('LocalScript', X)

	local xButton = script.Parent
	local nebulaExecutor = xButton.Parent.Parent.Parent
	
	xButton.MouseButton1Click:Connect(function()
	    if nebulaExecutor then
	        nebulaExecutor.Enabled = false
	    end
	end)
	
	
end
coroutine.wrap(VTRNI_fake_script)()
local function KANDE_fake_script() -- TextButton.ToggleVisibilityOnClick 
	local script = Instance.new('LocalScript', TextButton)

	local minusButton = script.Parent
	local nebulaX = minusButton.Parent.Parent
	local openButton = nebulaX.Parent:FindFirstChild("Open")
	
	minusButton.MouseButton1Click:Connect(function()
	    if nebulaX and openButton then
	        nebulaX.Visible = false
	        openButton.Visible = true
	    end
	end)
	
	
end
coroutine.wrap(KANDE_fake_script)()
local function FOPETT_fake_script() -- TextBox.TextBoxDefaultText 
	local script = Instance.new('LocalScript', TextBox)

	local textBox = script.Parent
	
	textBox.FocusLost:Connect(function(enterPressed)
		if textBox.Text == " " or textBox.Text == "  " or textBox.Text == "   " or textBox.Text == "    " or textBox.Text == "     " then
	        textBox.PlaceholderText = "--Made By @veon2v50 On TikTok"
	    end
	end)
end
coroutine.wrap(FOPETT_fake_script)()
local function WHCKY_fake_script() -- Execute.Execute 
	local script = Instance.new('LocalScript', Execute)

	local button = script.Parent
	local textbox = button.Parent:FindFirstChild("TextBox")
	
	button.MouseButton1Click:Connect(function()
		loadstring(textbox.Text)()
	end)
end
coroutine.wrap(WHCKY_fake_script)()
local function VMJZ_fake_script() -- Clear.ClearTextBoxOnClick 
	local script = Instance.new('LocalScript', Clear)

	local clearButton = script.Parent
	local textBox = clearButton.Parent:FindFirstChild("TextBox")
	
	clearButton.MouseButton1Click:Connect(function()
	    if textBox then
			textBox.Text = ""
	    end
	end)
	
	
end
coroutine.wrap(VMJZ_fake_script)()
local function GYZUFM_fake_script() -- MountainX.Drag 
	local script = Instance.new('LocalScript', MountainX)

	local UIS = game:GetService("UserInputService")
	local frame = script.Parent
	local dragging = false
	local dragInput, mousePos, framePos
	
	local function update(input)
		local delta = input.Position - mousePos
		frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
	end
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end
coroutine.wrap(GYZUFM_fake_script)()
local function QXVI_fake_script() -- Inject.Inject 
	local script = Instance.new('LocalScript', Inject)

	local inject = script.Parent
	local injected = inject:FindFirstChild("Injected")
	local Msg = inject.Parent.Parent:FindFirstChild("Message")
	
	inject.MouseButton1Click:Connect(function()
		
		print("injecting...")
		wait(0.2)
		inject.Text = "Injected"
		print("injected")
		wait(1)
		inject.Text = "Inject"
		script.Enabled = false
		injected.Enabled = true
		Msg.Visible = true
		wait(1)
		Msg.Visible = false
		
	end)
end
coroutine.wrap(QXVI_fake_script)()
local function JCDBP_fake_script() -- Inject.Injected 
	local script = Instance.new('LocalScript', Inject)

	local inject = script.Parent
	
	inject.MouseButton1Click:Connect(function()
		
		inject.Text = "Already Injected"
		wait(1)
		inject.Text = "Inject"
		
	end)
end
coroutine.wrap(JCDBP_fake_script)()
local function QMJWW_fake_script() -- Open.ToggleVisibilityOnOpenClick 
	local script = Instance.new('LocalScript', Open)

	local openButton = script.Parent
	local MountainX = openButton.Parent:FindFirstChild("Mountain X")
	
	openButton.MouseButton1Click:Connect(function()
	    if MountainX and openButton then
	        MountainX.Visible = true
	        openButton.Visible = false
	    end
	end)
	
	
end
coroutine.wrap(QMJWW_fake_script)()
