local CoreGui = game:GetService("CoreGui")

local PlayerService = game:GetService("Players")

local RunService = game:GetService("RunService")

local UserInput = game:GetService("UserInputService")


local ScreenHandler = Instance.new("ScreenGui")

if syn then
	syn.protect_gui(ScreenHandler)
	ScreenHandler.Parent = CoreGui
else
	ScreenHandler.Name = math.random(800, 10000).."�@?])/HGn\!=g?bVFC"..math.random(100, 5000).."?NJ&K$$@!Gnj~6�"..math.random(1, 500)
	ScreenHandler.Parent = CoreGui
end

ScreenHandler.DisplayOrder = 999999999
ScreenHandler.ResetOnSpawn = false
ScreenHandler.IgnoreGuiInset = true


local FrameBase = Instance.new("Frame")
FrameBase.Name = "FrameBase"
FrameBase.Parent = ScreenHandler
FrameBase.Position = UDim2.new(0.342, 0,0.302, 0)
FrameBase.Size = UDim2.new(0, 431,0, 262)
FrameBase.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
Instance.new("UICorner", FrameBase).CornerRadius = UDim.new(0, 6)


local HubName = Instance.new("TextLabel")
HubName.Name = "HubName"
HubName.Parent = FrameBase
HubName.Position = UDim2.new(0.448, 0,0.073, 0)
HubName.Size = UDim2.new(0, 45,0, 21)
HubName.BackgroundTransparency = 1
HubName.Text = "Potato"
HubName.TextColor3 = Color3.fromRGB(201, 203, 201)
HubName.Font = "Gotham"
HubName.TextSize = 15


local SubBase = Instance.new("Frame")
SubBase.Name = "SubBase"
SubBase.Parent = FrameBase
SubBase.Position = UDim2.new(0.028, 0,0.18, 0)
SubBase.Size = UDim2.new(0, 406,0, 200)
SubBase.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Instance.new("UICorner", SubBase).CornerRadius = UDim.new(0, 5)


local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Name = "ScrollFrame"
ScrollFrame.Parent = SubBase
ScrollFrame.Position = UDim2.new(0, 0,0.077, 0)
ScrollFrame.Size = UDim2.new(0, 406,0, 184)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
ScrollFrame.ScrollBarThickness = 2


local ListLayout = Instance.new("UIListLayout")
ListLayout.Name = "ListLayout"
ListLayout.Parent = ScrollFrame
ListLayout.Padding = UDim.new(0, 5)
ListLayout.HorizontalAlignment = "Center"
ListLayout.SortOrder = "Name"



function MakeButtonTab(Title, AtTurnOFF, AtTurnON)
	local Tab = Instance.new("Frame")
	Tab.Name = tostring(Title)
	Tab.Parent = ScrollFrame
	Tab.Size = UDim2.new(0, 387,0, 30)
	Tab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Instance.new("UICorner", Tab).CornerRadius = UDim.new(0, 4)
	
	local ActionTitle = Instance.new("TextLabel")
	ActionTitle.Name = "ActionTitle"
	ActionTitle.Parent = Tab
	ActionTitle.Position = UDim2.new(0.021, 0,0.233, 0)
	ActionTitle.Size = UDim2.new(0, 148,0, 15)
	ActionTitle.BackgroundTransparency = 1
	ActionTitle.Font = "Gotham"
	ActionTitle.TextColor3 = Color3.fromRGB(213, 213, 213)
	ActionTitle.TextSize = 13
	ActionTitle.TextXAlignment = "Left"
	ActionTitle.Text = tostring(Title)
	
	local ExecuteButton = Instance.new("TextButton")
	local ButtonPressed = false
	ExecuteButton.Name = "ExecuteButton"
	ExecuteButton.Parent = Tab
	ExecuteButton.Position = UDim2.new(0.936, 0,0.233, 0)
	ExecuteButton.Size = UDim2.new(0, 15,0, 15)
	ExecuteButton.Text = " "
	ExecuteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 20)
	Instance.new("UICorner", ExecuteButton).CornerRadius = UDim.new(0, 2)
	
	local function ExecuteScript()
		if ButtonPressed == false then
			loadstring(tostring(AtTurnOFF))()
		elseif ButtonPressed == true then
			loadstring(tostring(AtTurnON))()
		end
	end
	
	ExecuteButton.MouseButton1Click:Connect(function()
		if ButtonPressed == false then
			ButtonPressed = true
			ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
			wait()
			ExecuteScript()
		else
			ButtonPressed = false
			ExecuteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 20)
			wait()
			ExecuteScript()
		end
	end)
end

function MakeInputTab(Title)
	local Tab = Instance.new("Frame")
	Tab.Name = tostring(Title)
	Tab.Parent = ScrollFrame
	Tab.Size = UDim2.new(0, 387,0, 30)
	Tab.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Instance.new("UICorner", Tab).CornerRadius = UDim.new(0, 4)

	local ActionTitle = Instance.new("TextLabel")
	ActionTitle.Name = "ActionTitle"
	ActionTitle.Parent = Tab
	ActionTitle.Position = UDim2.new(0.021, 0,0.233, 0)
	ActionTitle.Size = UDim2.new(0, 148,0, 15)
	ActionTitle.BackgroundTransparency = 1
	ActionTitle.Font = "Gotham"
	ActionTitle.TextColor3 = Color3.fromRGB(213, 213, 213)
	ActionTitle.TextSize = 13
	ActionTitle.TextXAlignment = "Left"
	ActionTitle.Text = tostring(Title)
	
	TextInput = Instance.new("TextBox")
	TextInput.Name = "TextInput"
	TextInput.Parent = Tab
	TextInput.Position = UDim2.new(0.829, 0,0.233, 0)
	TextInput.Size = UDim2.new(0, 56,0, 15)
	TextInput.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	TextInput.Font = "GothamMedium"
	TextInput.TextColor3 = Color3.fromRGB(163, 163, 163)
	TextInput.TextSize = 14
	TextInput.TextWrapped = true
	TextInput.ClearTextOnFocus = false
	TextInput.Text = " "
	wait()	
	TextInput.Text = ""
	Instance.new("UICorner", TextInput).CornerRadius = UDim.new(0, 2)
end

MakeButtonTab("Civilians ESP", "for i,v in pairs(workspace.Citizens:GetChildren()) do if v.Highlight then v.Highlight:Destroy() end end", "for i,v in pairs(workspace.Citizens:GetChildren()) do local a = Instance.new('Highlight') a.OutlineColor = Color3.fromRGB(0, 255, 100) a.FillTransparency = 1 a.Parent = v end")

MakeButtonTab("Guards ESP", "for i,v in pairs(workspace.Police:GetChildren()) do if v.Highlight then v.Highlight:Destroy() end end", "for i,v in pairs(workspace.Police:GetChildren()) do local a = Instance.new('Highlight') a.OutlineColor = Color3.fromRGB(255, 0, 50) a.FillTransparency = 1 a.Parent = v end")

MakeButtonTab("Cameras ESP", "for i,v in pairs(workspace.Cameras:GetChildren()) do if v.Highlight then v.Highlight:Destroy() end end", "for i,v in pairs(workspace.Cameras:GetChildren()) do local a = Instance.new('Highlight') a.OutlineColor = Color3.fromRGB(225, 179, 0) a.FillTransparency = 1 a.Parent = v end")

MakeButtonTab("Infinite Stamina", "workspace:WaitForChild('Criminals'):WaitForChild(PlayerService.LocalPlayer.Name).Stamina.Value = 20", "workspace:WaitForChild('Criminals'):WaitForChild(PlayerService.LocalPlayer.Name).Stamina.Value = 99999999")

MakeInputTab("Speed")
TextInput:GetPropertyChangedSignal("Text"):Connect(function()
	workspace:WaitForChild("Criminals"):WaitForChild(PlayerService.LocalPlayer.Name).BaseSpeed.Value = tonumber(TextInput.Text)
end)


local dragging;
local dragInput;
local dragStart;
local startPos;

function Lerp(a, b, m)
	return a + (b - a) * m;
end

local lastMousePos;
local lastGoalPos;
local DRAG_SPEED = (8);
function Update(dt)
	if not (startPos) then return end
	if not (dragging) and (lastGoalPos) then
		FrameBase.Position = UDim2.new(startPos.X.Scale, Lerp(FrameBase.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(FrameBase.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED));
		return;
	end;

	local delta = (lastMousePos - UserInput:GetMouseLocation());
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal);
	FrameBase.Position = UDim2.new(startPos.X.Scale, Lerp(FrameBase.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(FrameBase.Position.Y.Offset, yGoal, dt * DRAG_SPEED));
end;

FrameBase.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true;
		dragStart = input.Position;
		startPos = FrameBase.Position;
		lastMousePos = UserInput:GetMouseLocation();

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false;
			end
		end)
	end
end)

FrameBase.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input;
	end
end)

RunService.Heartbeat:Connect(Update);