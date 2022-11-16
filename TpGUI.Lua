
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Username = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local TPBtn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui
main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
main.Position = UDim2.new(0.289028138, 0, 0.24899599, 0)
main.Size = UDim2.new(0, 380, 0, 249)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = main

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.Size = UDim2.new(0, 380, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "TP GUI Made By DINO#1390"
Title.TextColor3 = Color3.fromRGB(0, 0, 255)
Title.TextSize = 20.000

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Title

Username.Name = "Username"
Username.Parent = main
Username.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Username.Position = UDim2.new(0.236842111, 0, 0.341365457, 0)
Username.Size = UDim2.new(0, 200, 0, 50)
Username.Font = Enum.Font.SourceSans
Username.Text = "Input Players Full Username"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextSize = 20.000

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = Username

TPBtn.Name = "TPBtn"
TPBtn.Parent = main
TPBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TPBtn.Position = UDim2.new(0, 106, 0, 156)
TPBtn.Size = UDim2.new(0, 167, 0, 45)
TPBtn.Font = Enum.Font.SourceSans
TPBtn.Text = "GoTo Player"
TPBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
TPBtn.TextSize = 20.000

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = TPBtn

-- Scripts:

local function LELGJHH_fake_script() -- TPBtn.LocalScript 
	local script = Instance.new('LocalScript', TPBtn)

	script.Parent.MouseButton1Click:connect(function()
		local username = string.lower(Username.Text)
		local foundChild = false
		local child
		for i,v in pairs(game.Players:GetChildren()) do
			if string.lower(v.Name) == username then
				foundChild = true
				child = v
			end
		end
		if foundChild == true then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.Character.HumanoidRootPart.CFrame
		end
	end)
	
end
coroutine.wrap(LELGJHH_fake_script)()
