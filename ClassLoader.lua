-- Made by CPU_Accelerator and Roblaxin Pro.
-- This script is open source so feel free to learn off of it!

local GUI = Instance.new("ScreenGui")
repeat task.wait() until game:IsLoaded()
local ClassDetectorFrame = Instance.new("Frame")
local UICorner_41 = Instance.new("UICorner")
local classDetectedText1 = Instance.new("TextLabel")
local classDetectedText2 = Instance.new("TextLabel")
local bugFindText1 = Instance.new("TextLabel")
local copyDiscordLoaderText1 = Instance.new("TextButton")
local loadGuiBTN = Instance.new("TextButton")
local UICorner_42 = Instance.new("UICorner")

local UserInputService = game["UserInputService"]
local runService = game["Run Service"]

if gethui then
	GUI.Parent = gethui()
elseif syn and syn.protect_gui then
	syn.protect_gui(GUI)
else
	GUI.Parent = game.CoreGui
end


GUI.Name = "Loader"
GUI.Parent = game.CoreGui
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUI.ResetOnSpawn = false


ClassDetectorFrame.Name = "ClassDetectorFrame"
ClassDetectorFrame.Parent = GUI
ClassDetectorFrame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
ClassDetectorFrame.BorderSizePixel = 0
ClassDetectorFrame.Position = UDim2.new(0, 370, 0, 264)
ClassDetectorFrame.Size = UDim2.new(0, 477, 0, 222)

UICorner_41.Parent = ClassDetectorFrame

classDetectedText1.Name = "classDetectedText1"
classDetectedText1.Parent = ClassDetectorFrame
classDetectedText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
classDetectedText1.BackgroundTransparency = 1.000
classDetectedText1.BorderSizePixel = 0
classDetectedText1.Position = UDim2.new(0, 87, 0, 0)
classDetectedText1.Size = UDim2.new(0, 247, 0, 50)
classDetectedText1.Font = Enum.Font.SourceSans
classDetectedText1.Text = "Class Detected - "
classDetectedText1.TextColor3 = Color3.fromRGB(255, 255, 255)
classDetectedText1.TextSize = 44.000

classDetectedText2.Name = "classDetectedText2"
classDetectedText2.Parent = ClassDetectorFrame
classDetectedText2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
classDetectedText2.BackgroundTransparency = 1.000
classDetectedText2.BorderSizePixel = 0
classDetectedText2.Position = UDim2.new(0, 327, 0, 0)
classDetectedText2.Size = UDim2.new(0, 63, 0, 50)
classDetectedText2.Font = Enum.Font.SourceSans
classDetectedText2.Text = "N/A"
classDetectedText2.TextColor3 = Color3.fromRGB(255, 255, 255)
classDetectedText2.TextSize = 44.000

bugFindText1.Name = "bugFindText1"
bugFindText1.Parent = ClassDetectorFrame
bugFindText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bugFindText1.BackgroundTransparency = 1.000
bugFindText1.BorderSizePixel = 0
bugFindText1.Position = UDim2.new(0, 49, 0, 206)
bugFindText1.Size = UDim2.new(0, 307, 0, 13)
bugFindText1.Font = Enum.Font.SourceSans
bugFindText1.Text = "If you find any bugs in our script, please report them in our "
bugFindText1.TextColor3 = Color3.fromRGB(255, 255, 255)
bugFindText1.TextSize = 14.000

copyDiscordLoaderText1.Name = "copyDiscordLoaderText1"
copyDiscordLoaderText1.Parent = ClassDetectorFrame
copyDiscordLoaderText1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
copyDiscordLoaderText1.BackgroundTransparency = 1.000
copyDiscordLoaderText1.BorderSizePixel = 0
copyDiscordLoaderText1.Position = UDim2.new(0, 349, 0, 206)
copyDiscordLoaderText1.Size = UDim2.new(0, 78, 0, 12)
copyDiscordLoaderText1.Font = Enum.Font.SourceSans
copyDiscordLoaderText1.Text = "Discord server."
copyDiscordLoaderText1.TextColor3 = Color3.fromRGB(30, 64, 255)
copyDiscordLoaderText1.TextSize = 14.000

loadGuiBTN.Name = "loadGuiBTN"
loadGuiBTN.Parent = ClassDetectorFrame
loadGuiBTN.Active = false
loadGuiBTN.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
loadGuiBTN.BorderSizePixel = 0
loadGuiBTN.Position = UDim2.new(0, 138, 0, 99)
loadGuiBTN.Size = UDim2.new(0, 200, 0, 50)
loadGuiBTN.Font = Enum.Font.SourceSans
loadGuiBTN.Text = "Load"
loadGuiBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
loadGuiBTN.TextSize = 41.000

UICorner_42.Parent = loadGuiBTN

if game.PlaceId == "3738115442" then
	classDetectedText2.Text = "Class C"
end

ClassDetectorFrame.Visible = true

copyDiscordLoaderText1.MouseButton1Click:Connect(function() 
	setclipboard("https://discord.gg/PPFYacGb2b")
end)

loadGuiBTN.MouseButton1Click:Connect(function()
	if game.PlaceId == "3738115442" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CPU-Accelerator/Boxing-League/main/Boxing-Classes/ClassC.lua"))
		task.wait(0.4)
		GUI:Destroy()
	elseif game.PlaceId == "4574912733" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CPU-Accelerator/Boxing-League/main/Boxing-Classes/ClassB.lua"))
	end
end)

local gui = ClassDetectorFrame

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (10); -- // The speed of the UI darg.
function Update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - UserInputService:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
end;

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		lastMousePos = UserInputService:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

runService.Heartbeat:Connect(Update)
