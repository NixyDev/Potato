local AllowedUsers = {"adrianfelipa"}

local CurrentClient = game:GetService("Players").LocalPlayer

local CoreGui = game:GetService("CoreGui")

function Launch()
	local ScreenHandler = Instance.new("ScreenGui")
	ScreenHandler.Name = math.random(800, 10000).."?@?])/HGn\!=g?bVFC"..math.random(100, 5000).."?NJ&K$$@!Gnj~6?"..math.random(1, 500)
	ScreenHandler.Parent = CoreGui
	ScreenHandler.DisplayOrder = 99999999
    ScreenHandler.ResetOnSpawn = false
    ScreenHandler.IgnoreGuiInset = true


	local FrameBase = Instance.new("Frame")
    FrameBase.Name = "FrameBase"
    FrameBase.Parent = ScreenHandler
    FrameBase.Position = UDim2.new(0.395, 0,0.361, 0)
    FrameBase.Size = UDim2.new(0, 287,0, 183)
    FrameBase.Visible = false
    FrameBase.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
    Instance.new("UICorner", FrameBase).CornerRadius = UDim.new(0, 5)


	local ProgressBar = Instance.new("Frame")
    ProgressBar.Name = "ProgressBar"
    ProgressBar.Parent = FrameBase
    ProgressBar.Position = UDim2.new(0.265, 0,0.503, 0)
    ProgressBar.Size = UDim2.new(0, 0,0, 0)
    ProgressBar.BorderColor3 = Color3.fromRGB(216, 216, 216)


	local StatusText = Instance.new("TextLabel")
    StatusText.Name = "StatusText"
    StatusText.Parent = FrameBase
    StatusText.Position = UDim2.new(0.362, 0,0.35, 0)
    StatusText.Size = UDim2.new(0, 79,0, 17)
	StatusText.BackgroundTransparency = 1
    StatusText.Font = "Gotham"
    StatusText.TextSize = 13
    StatusText.TextColor3 = Color3.fromRGB(216, 216, 216)
    StatusText.Text = " "

    wait(2)
	FrameBase.Visible = true
	StatusText.Text = "Updating"
	ProgressBar:TweenSize(
		UDim2.new(0, 43,0, 0),
		"Out",
		"Quart",
		.7
	)
	wait(1)
		
	StatusText.Text = "Getting Libs Ready"
	ProgressBar:TweenSize(
		UDim2.new(0, 89,0, 0),
		"Out",
		"Quart",
		.7
	)
	wait(1)
		
	StatusText.Text = "Ready"
	ProgressBar:TweenSize(
		UDim2.new(0, 135,0, 0),
		"Out",
		"Quart",
		.7
	)
	wait(2.5)
	ScreenHandler:Destroy()
	wait(1)
		
		
	if game.GameId == 16680835 then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NixyDev/Potato/main/Notoriety.lua"))()
	end
end

for Index, AccountAllowed in pairs(AllowedUsers) do
	if CurrentClient.Name == AccountAllowed then
		Launch()
	else
		rconsoleclear()

		rconsolename("Potato Softwares LLC")

		rconsoleprint("__________________\nPotato Password\n__________________\n\n")

		rconsolewarn("Your account was not recognized, type your Access Key\n")

		if rconsoleinput() == "7037" then
			rconsoleerr("\n\nCorrect PIN, loading assets")
			Launch()
		else
			rconsoleerr("\n\nIncorrect Key, execute again for a new attempt.")
		end
	end
end
