local AllowedUsers = {"adrianfelipa"}

local CurrentGame

local CoreGui = game:GetService("CoreGui")

local PlayerService = game:GetService("Players")

local RunService = game:GetService("RunService")


for Index, AccountAllowed in pairs(AllowedUsers) do
	if not PlayerService.LocalPlayer.Name == AccountAllowed then
		rconsoleclear()
		
		rconsolename("Potato Hub Key")
		
		rconsoleprint("___________________\n".."Potato Softwares LLC\n".."___________________")
		
		rconsolewarn("Your account was not recognized, enter your PIN")
		
		if rconsoleinput() == "7037" then
			
			local ScreenHandler = Instance.new("ScreenGui")
			
			if syn then
				syn.protect_gui(ScreenHandler)
				ScreenHandler.Parent = CoreGui
			else
				ScreenHandler.Name = math.random(800, 10000).."?@?])/HGn\!=g?bVFC"..math.random(100, 5000).."?NJ&K$$@!Gnj~6?"..math.random(1, 500)
				ScreenHandler.Parent = CoreGui
			end
			
			ScreenHandler.DisplayOrder = 99999999
			ScreenHandler.ResetOnSpawn = false
			ScreenHandler.IgnoreGuiInset = true
			
			
			local FrameBase = Instance.new("Frame")
			FrameBase.Name = "FrameBase"
			FrameBase.Parent = ScreenHandler
			FrameBase.Position = UDim2.new(0.395, 0,0.361, 0)
			FrameBase.Size = UDim2.new(0, 287,0, 183)
			FrameBase.BackgroundTransparency = 1
			FrameBase.BackgroundColor3 = Color3.fromRGB(7, 7, 7)
			Instance.new("UICorner", FrameBase).CornerRadius = UDim.new(0, 5)
			
			
			local ProgressBar = Instance.new("Frame")
			ProgressBar.Name = "FrameBase"
			ProgressBar.Parent = FrameBase
			ProgressBar.Position = UDim2.new(0.265, 0,0.503, 0)
			ProgressBar.Size = UDim2.new(0, 0,0, 0)
			ProgressBar.BorderColor3 = Color3.fromRGB(216, 216, 216)
			
			
			local StatusText = Instance.new("TextLabel")
			StatusText.Name = "StatusText"
			StatusText.Parent = FrameBase
			StatusText.Position = UDim2.new(0.362, 0,0.35, 0)
			StatusText.Size = UDim2.new(0, 79,0, 17)
			StatusText.Font = "Gotham"
			StatusText.TextSize = 13
			StatusText.TextColor3 = Color3.fromRGB(216, 216, 216)
			StatusText.Text = " "
			
			function LoadLibrary()
				
				if game.GameId == 1 then
					CurrentGame = "Notoriety"
					ScreenHandler.Destroying:Connect(function()
						wait(2.7)
						loadstring(game:HttpGet('rawlink'))()
					end)
				end
				
				if game.GameId == 3 then
					ScreenHandler.Destroying:Connect(function()
						wait(2.7)
						loadstring(game:HttpGet('rawlink'))()
					end)
				end
				
			end
			
			function Launch()
				RunService.RenderStepped:Connect(function()
					FrameBase.BackgroundTransparency = FrameBase.BackgroundTransparency - 0.1
				end)
				
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
				
				StatusText.Text = CurrentGame
				ProgressBar:TweenSize(
					UDim2.new(0, 135,0, 0),
					"Out",
					"Quart",
					.7
				)
				wait(2.5)

				StatusText.Text = "Potato Hub"
				LoadLibrary()
				wait(2)
				ScreenHandler:Destroy()
				
			end
			
		else
			rconsoleerr("Wrong PIN, Execute again to a new try")
		end
	end
end

