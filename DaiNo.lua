if not game:IsLoaded() then game.Loaded:Wait() end
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")
wait(5)
getgenv().team = "Marine"
pcall(function()
    if getgenv().team == "Pirate" then
        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
            v.Function()
        end
    elseif getgenv().team == "Marine" then
        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do
            v.Function()
        end
    else
        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
            v.Function()
        end
    end
end)

if game.CoreGui:FindFirstChild("ToggleUI") then
    game.CoreGui:FindFirstChild("ToggleUI"):Destroy()
end
local ToggleUI = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local ToggleButtonHUI = Instance.new("UICorner")
local imb = Instance.new("ImageButton")
ToggleUI.Name = "ToggleUI"
ToggleUI.Parent = game.CoreGui
ToggleUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ToggleUI
ToggleButton.BackgroundColor3 = Color3.fromRGB(30,20,20)
ToggleButton.BackgroundTransparency = 0.1
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = ""
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.TextSize = 14.000
ToggleButton.Draggable = true
ToggleButton.MouseButton1Click:Connect(function()
    game.CoreGui:FindFirstChild("StrikeHub").Enabled = not game.CoreGui:FindFirstChild("StrikeHub").Enabled
end)

ToggleButtonHUI.CornerRadius = UDim.new(20,20)
ToggleButtonHUI.Name = "UiCornner"
ToggleButtonHUI.Parent = ToggleButton


imb.Name = "ToggleButton"
imb.Parent = ToggleButton
imb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imb.BackgroundTransparency = 1.000
imb.BorderSizePixel = 0
imb.Position = UDim2.new(0.234619886, 0, 0.239034846, 0)
imb.Size = UDim2.new(0, 25, 0, 25)
imb.Image = "http://www.roblox.com/asset/?id=7251993295"
imb.MouseButton1Click:Connect(function()
    game.CoreGui:FindFirstChild("StrikeHub").Enabled = not game.CoreGui:FindFirstChild("StrikeHub").Enabled
end)




do local ui = game:GetService("CoreGui"):FindFirstChild("StrikeHub")  if ui then ui:Destroy() end end
do local ui = game:GetService("CoreGui"):FindFirstChild("StrikeHubRightFrame")  if ui then ui:Destroy() end end

local pfp
local user
local tag
local userinfo = {}


pfp = userinfo["pfp"] or "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
user = userinfo["user"] or game.Players.LocalPlayer.DisplayName
tag = userinfo["tag"] or tostring(math.random(0001, 0001))


local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tween = game:GetService("TweenService")
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}

local Discord_Invite_Code = "HmvVw52Thw"
getgenv().Color = Color3.fromRGB(140, 255, 56)
getgenv().Color1 = Color3.fromRGB(255,255,255)



coroutine.wrap(function()
   while wait() do
      Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
      Red.HueSelectionPosition = Red.HueSelectionPosition + 1

      if Red.RainbowColorValue >= 1 then
            Red.RainbowColorValue = 0
      end

      if Red.HueSelectionPosition == 160 then
            Red.HueSelectionPosition = 0
      end
   end
end)()

local STRIKECourseScreen = Instance.new("ScreenGui")
STRIKECourseScreen.Parent = game:GetService("CoreGui")
STRIKECourseScreen.Name = "StrikeHub"
STRIKECourseScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local STRIKEHubRightFrame = Instance.new("ScreenGui")
STRIKEHubRightFrame.Parent = game:GetService("CoreGui")
STRIKEHubRightFrame.Name = "StrikeHubRightFrame"
STRIKEHubRightFrame.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
STRIKEHubRightFrame.Enabled = false

local UiToggle = Instance.new("Frame")

UiToggle.Name = "UI_TOGGLE"
UiToggle.Parent = STRIKEHubRightFrame
UiToggle.AnchorPoint = Vector2.new(0.5, 0.5)
UiToggle.BackgroundColor3 = Color3.fromRGB(32,32,32)
UiToggle.BackgroundTransparency = 0
UiToggle.BorderColor3 = getgenv().Color
UiToggle.BorderSizePixel = 0
UiToggle.ClipsDescendants = true
UiToggle.Position = UDim2.new(0.95, 0, 0.3, 0)
UiToggle.Size = UDim2.new(0, 170, 0, 50)

local UiToggle_UiConner1 = Instance.new("UICorner")

UiToggle_UiConner1.CornerRadius = UDim.new(0, 3)
UiToggle_UiConner1.Name = "UiToggle_UiConner1"
UiToggle_UiConner1.Parent = UiToggle

local UiToggle_UiStroke1 = Instance.new("UIStroke")

UiToggle_UiStroke1.Color = Color3.fromRGB(153, 204, 255)
UiToggle_UiStroke1.Thickness = 2
UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke1.Parent = UiToggle

local UiToggleminiFrame = Instance.new("Frame")

UiToggleminiFrame.Name = "UiToggleminiFrame"
UiToggleminiFrame.Parent = UiToggle
UiToggleminiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
UiToggleminiFrame.BackgroundColor3 = getgenv().Color
UiToggleminiFrame.BackgroundTransparency = 0
UiToggleminiFrame.BorderColor3 = getgenv().Color
UiToggleminiFrame.BorderSizePixel = 0
UiToggleminiFrame.ClipsDescendants = true
UiToggleminiFrame.Position = UDim2.new(0.01, 0, 0.5, 0)
UiToggleminiFrame.Size = UDim2.new(0, 4, 0, 60)

local UiToggleminiFrame_UiConner1 = Instance.new("UICorner")

UiToggleminiFrame_UiConner1.CornerRadius = UDim.new(0, 9)
UiToggleminiFrame_UiConner1.Name = "UiToggleminiFrame_UiConner1"
UiToggleminiFrame_UiConner1.Parent = UiToggleminiFrame

local TitleUiToggle = Instance.new("TextLabel")

TitleUiToggle.Parent = UiToggle
TitleUiToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleUiToggle.BackgroundTransparency = 1
TitleUiToggle.BorderSizePixel = 0
TitleUiToggle.Position = UDim2.new(0.6, 0, 0.5, 0)
TitleUiToggle.AnchorPoint = Vector2.new(0.5, 0.5)
TitleUiToggle.Size = UDim2.new(0, 30,0, 23)
TitleUiToggle.Font = Enum.Font.GothamBold
TitleUiToggle.Text = "Ui Toggle :\nDelete"
TitleUiToggle.TextColor3 = getgenv().Color1
TitleUiToggle.TextSize = 11.000
TitleUiToggle.TextXAlignment = Enum.TextXAlignment.Center

local UiToggleImage = Instance.new("ImageLabel")
UiToggleImage.Parent = UiToggle
UiToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UiToggleImage.BackgroundTransparency = 1
UiToggleImage.Position = UDim2.new(0.101, 0, 0.15, 0)
UiToggleImage.Size = UDim2.new(0, 35, 0, 35)
UiToggleImage.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=9338936570&width=0&height=0&format=png"

local lib = {toggledui = false;}
game:GetService("UserInputService").InputBegan:Connect(function(input)
    pcall(function()
        if input.KeyCode == Enum.KeyCode.RightControl then
            if lib.toggledui == false then
               lib.toggledui = true
               wait(.5)
               tween:Create(UiToggle,TweenInfo.new(0.5,Enum.EasingStyle.Back),{Size = UDim2.new(0, 170, 0, 50)}):Play()
                STRIKEHubRightFrame.Enabled = true
            else
               lib.toggledui = false
               tween:Create(UiToggle,TweenInfo.new(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
               wait(.5)
               STRIKEHubRightFrame.Enabled = false
            end
        end
    end)
end)

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local function Tween(instance, properties,style,wa)
    if style == nil or "" then
        return Back
    end
    tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local create = {}
function create:Win(text,logo)
    local fs = false

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = STRIKECourseScreen
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(32,32,32)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.ClipsDescendants = true

    local Main_UiConner = Instance.new("UICorner")

    Main_UiConner.CornerRadius = UDim.new(0, 8)
    Main_UiConner.Name = "Main_UiConner"
    Main_UiConner.Parent = MainFrame

    local Main_UiStroke = Instance.new("UIStroke")

    Main_UiStroke.Color = Color3.fromRGB(255, 255, 255)
    Main_UiStroke.Thickness = 1
    Main_UiStroke.Name = "Main_UiConner"
    Main_UiStroke.Parent = MainFrame

   local TimeGlobal = Instance.new("TextLabel")

    TimeGlobal.Name = "TimeGlobal"
    TimeGlobal.Parent = MainFrame
    TimeGlobal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TimeGlobal.Position = UDim2.new(0.84, 0, 0.95, -5)
    TimeGlobal.Size = UDim2.new(0, 95, 0, 39)
    TimeGlobal.BackgroundTransparency = 1
    TimeGlobal.ZIndex = 3
    TimeGlobal.Font = Enum.Font.GothamBold
    TimeGlobal.Text = "N/A"
    TimeGlobal.TextColor3 = Color3.fromRGB(255, 255, 255)
    TimeGlobal.TextSize = 19.000
    TimeGlobal.TextXAlignment = Enum.TextXAlignment.Left

    spawn(function()
      while wait() do
         TimeGlobal.Text = ""..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
      end
   end)

   local NameOfGame = Instance.new("TextLabel")
   local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

    NameOfGame.Name = "NameOfGame"
    NameOfGame.Parent = MainFrame
    NameOfGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameOfGame.Position = UDim2.new(0.03, 0, 0.95, -5)
    NameOfGame.Size = UDim2.new(0, 95, 0, 39)
    NameOfGame.BackgroundTransparency = 1
    NameOfGame.ZIndex = 3
    NameOfGame.Font = Enum.Font.GothamBold
    NameOfGame.Text = GameName
    NameOfGame.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameOfGame.TextSize = 14.000
    NameOfGame.TextXAlignment = Enum.TextXAlignment.Left
    


    local ClickFrame = Instance.new("Frame")
    ClickFrame.Name = "ClickFrame"
    ClickFrame.Parent = MainFrame
    ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ClickFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ClickFrame.BorderSizePixel = 0
    ClickFrame.Position = UDim2.new(0.059, 0, 0.043, 0)
    ClickFrame.Size = UDim2.new(0, 1200, 0, 50)
    ClickFrame.ClipsDescendants = true
    ClickFrame.BackgroundTransparency = 1

    local MainFrame1 = Instance.new("Frame")
    MainFrame1.Name = "MainFrame1"
    MainFrame1.Parent = MainFrame
    MainFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame1.BackgroundColor3 = Color3.fromRGB(32,32,32)
    MainFrame1.BorderSizePixel = 0
    MainFrame1.Position = UDim2.new(0.5, 0, 0.19, 5)
    MainFrame1.Size = UDim2.new(0, 0, 0, 0)
    MainFrame1.ClipsDescendants = true

    local Main_UiConner1 = Instance.new("UICorner")

    Main_UiConner1.CornerRadius = UDim.new(0, 9)
    Main_UiConner1.Name = "Main_UiConner"
    Main_UiConner1.Parent = MainFrame1

    local Main_UiStroke1 = Instance.new("UIStroke")

    Main_UiStroke1.Color = Color3.fromRGB(255, 255, 255)
    Main_UiStroke1.Thickness = 1.8
    Main_UiStroke1.Name = "Main_UiConner"
    Main_UiStroke1.Parent = MainFrame1

    local miniFrame = Instance.new("Frame")
    miniFrame.Name = "miniFrame"
    miniFrame.Parent = MainFrame1
    miniFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    miniFrame.BackgroundColor3 = getgenv().Color
    miniFrame.BorderSizePixel = 0
    miniFrame.Position = UDim2.new(0.075, 0, 0.48, 0)
    miniFrame.Size = UDim2.new(0, 5,0, 70)
    miniFrame.ClipsDescendants = true

    local miniFrame_UiConner1 = Instance.new("UICorner")

    miniFrame_UiConner1.CornerRadius = UDim.new(5, 0)
    miniFrame_UiConner1.Name = "miniFrame_UiConner"
    miniFrame_UiConner1.Parent = miniFrame

    local Welcometo = Instance.new("TextLabel")

    Welcometo.Parent = MainFrame1
    Welcometo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Welcometo.BackgroundTransparency = 1
    Welcometo.BorderSizePixel = 0
    Welcometo.Position = UDim2.new(0.19, 0, 0.2, 0)
    Welcometo.AnchorPoint = Vector2.new(0.5, 0.5)
    Welcometo.Size = UDim2.new(0, 168,0, 23)
    Welcometo.Font = Enum.Font.GothamBold
    Welcometo.Text = "                     Welcome "..user.." to"
    Welcometo.TextColor3 = Color3.fromRGB(255, 255, 255)
    Welcometo.TextSize = 17.000

    local NameReal2 = Instance.new("TextLabel")

    NameReal2.Parent = MainFrame1
    NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameReal2.BackgroundTransparency = 1
    NameReal2.BorderSizePixel = 0
    NameReal2.Position = UDim2.new(0.225, 0, 0.38, 0)
    NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
    NameReal2.Size = UDim2.new(0, 134,0, 23)
    NameReal2.Font = Enum.Font.GothamBold
    NameReal2.RichText = true
    NameReal2.Text = text.."<font color=\"rgb(".. math.floor(getgenv().Color1.R * 255) .. "," .. math.floor(getgenv().Color1.G * 255) .. ",".. math.floor(getgenv().Color1.B * 255) ..")\"> HUB</font>"
    NameReal2.TextColor3 = getgenv().Color
    NameReal2.TextSize = 35.000
    NameReal2.TextXAlignment = Enum.TextXAlignment.Left

    -- local Hub2 = Instance.new("TextLabel")

    -- Hub2.Parent = MainFrame1
    -- Hub2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    -- Hub2.BackgroundTransparency = 1
    -- Hub2.BorderSizePixel = 0
    -- Hub2.Position = UDim2.new(0.47, 0, 0.38, 0)
    -- Hub2.AnchorPoint = Vector2.new(0.5, 0.5)
    -- Hub2.Size = UDim2.new(0, 134,0, 23)
    -- Hub2.Font = Enum.Font.GothamBold
    -- Hub2.Text = "HUB"
    -- Hub2.TextColor3 = Color3.fromRGB(255, 255, 255)
    -- Hub2.TextSize = 30.000
    -- Hub2.TextXAlignment = Enum.TextXAlignment.Left

    local ImageLogo = Instance.new("ImageLabel")
    
    ImageLogo.Parent = MainFrame1
    ImageLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLogo.BackgroundTransparency = 1
    ImageLogo.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLogo.Position = UDim2.new(0.8, 0,0.5, 0)
    ImageLogo.Size = UDim2.new(0, 100,0, 100)
    ImageLogo.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="..logo.."&width=0&height=0&format=png"

    local FrameJoinDis = Instance.new("Frame")
    FrameJoinDis.Name = "FrameJoinDis"
    FrameJoinDis.Parent = MainFrame1
    FrameJoinDis.AnchorPoint = Vector2.new(0.5, 0.5)
    FrameJoinDis.BackgroundColor3 = getgenv().Color
    FrameJoinDis.BorderSizePixel = 0
    FrameJoinDis.Position = UDim2.new(0.24, 0, 0.69, 0)
    FrameJoinDis.Size = UDim2.new(0, 150,0, 30)
    FrameJoinDis.ClipsDescendants = true

    local FrameJoinDis1 = Instance.new("Frame")
    FrameJoinDis1.Name = "FrameJoinDis"
    FrameJoinDis1.Parent = MainFrame1
    FrameJoinDis1.AnchorPoint = Vector2.new(0.5, 0.5)
    FrameJoinDis1.BackgroundColor3 = Color3.fromRGB(32,32,32)
    FrameJoinDis1.BorderSizePixel = 0
    FrameJoinDis1.Position = UDim2.new(0.24, 0, 0.69, 0)
    FrameJoinDis1.Size = UDim2.new(0, 148,0, 28)
    FrameJoinDis1.ClipsDescendants = true

    local FrameJoinDis_UiConner1 = Instance.new("UICorner")
    FrameJoinDis_UiConner1.CornerRadius = UDim.new(0, 8)
    FrameJoinDis_UiConner1.Name = "FrameJoinDis_UiConner1"
    FrameJoinDis_UiConner1.Parent = FrameJoinDis

    local FrameJoinDis_UiConner2 = Instance.new("UICorner")
    FrameJoinDis_UiConner2.CornerRadius = UDim.new(0, 8)
    FrameJoinDis_UiConner2.Name = "FrameJoinDis_UiConner1"
    FrameJoinDis_UiConner2.Parent = FrameJoinDis1

   local JoinDiscord = Instance.new("TextButton")

   JoinDiscord.Parent = FrameJoinDis1
   JoinDiscord.Name = "JoinDiscord"
   JoinDiscord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   JoinDiscord.BackgroundTransparency = 1
   JoinDiscord.Position = UDim2.new(0,0.5,0,0.8)
   JoinDiscord.Size = UDim2.new(0, 148,0, 28)
   JoinDiscord.Font = Enum.Font.GothamBold
   JoinDiscord.TextColor3 = getgenv().Color
   JoinDiscord.TextSize = 16.000
   JoinDiscord.Text = "Join Discord"

JoinDiscord.MouseButton1Click:Connect(function()
local filename1 = "NoAutoJoinDiscord.txt";
syn.request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = Discord_Invite_Code
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
end)

    MakeDraggable(ClickFrame,MainFrame,MainFrame1)
    tween:Create(MainFrame1,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 530, 0, 110)}):Play()
    tween:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0.1, 425)}):Play()

    local library = {toggledui = false;}
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        pcall(function()
            if input.KeyCode == Enum.KeyCode.RightControl then
                if library.toggledui == false then
                    library.toggledui = true
                    tween:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
                    wait(.3)
                    STRIKECourseScreen.Enabled = false
                else
                    library.toggledui = false
                    tween:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0.1, 425)}):Play()
                    STRIKECourseScreen.Enabled = true
                end
            end
        end)
    end)

    local imageclickframe = Instance.new("ImageLabel")

    imageclickframe.Parent = ClickFrame
    imageclickframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageclickframe.BackgroundTransparency = 1.000
    imageclickframe.AnchorPoint = Vector2.new(0.5, 0.5)
    imageclickframe.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageclickframe.Size = UDim2.new(0, 30, 0, 30)
    imageclickframe.Image = pfp

    local NameReal = Instance.new("TextLabel")
    NameReal.Parent = MainFrame
    NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameReal.BackgroundTransparency = 1
    NameReal.BorderSizePixel = 3
    NameReal.Position = UDim2.new(0.25, 0, 0.043, 0)
    NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
    NameReal.Size = UDim2.new(0, 142, 0, 34)
    NameReal.Font = Enum.Font.GothamBold
    NameReal.RichText = true
    NameReal.Text = "" .. user
    NameReal.TextColor3 = getgenv().Color
    NameReal.TextSize = 26.000
    NameReal.TextXAlignment = Enum.TextXAlignment.Left

    local MainFrame2 = Instance.new("Frame")
    MainFrame2.Name = "MainFrame2"
    MainFrame2.Parent = MainFrame
    MainFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame2.BackgroundColor3 = Color3.fromRGB(18,18,18)
    MainFrame2.BorderSizePixel = 0
    MainFrame2.Position = UDim2.new(0.5, 0, 0.5, -5)
    MainFrame2.Size = UDim2.new(0, 0, 0, 0)
    MainFrame2.ClipsDescendants = true

    local Main_UiConner2  = Instance.new("UICorner")

    Main_UiConner2.CornerRadius = UDim.new(0, 9)
    Main_UiConner2.Name = "Main_UiConner"
    Main_UiConner2.Parent = MainFrame

    MainFrame2:TweenSizeAndPosition(UDim2.new(0, 550-20, 0, 385), UDim2.new(0.5, 0, 0.53, 95), "Out", "Back", 0.5, true)


    local ScolTapBarFrame = Instance.new("Frame")
    ScolTapBarFrame.Name = "ScolTapBarFrameMainFrame2"
    ScolTapBarFrame.Parent = MainFrame2
    ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ScolTapBarFrame.BorderSizePixel = 0
    ScolTapBarFrame.BackgroundTransparency = 1
    ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.07, 0)
    ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)
    ScolTapBarFrame.ClipsDescendants = true

    local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

    ScrollingFrame_Menubar.Parent = ScolTapBarFrame
    ScrollingFrame_Menubar.Active = true
    ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame_Menubar.BackgroundTransparency = 1
    ScrollingFrame_Menubar.BorderSizePixel = 0
    ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)
    ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
    ScrollingFrame_Menubar.ScrollBarImageColor3 = getgenv().Color
    ScrollingFrame_Menubar.ScrollBarThickness = 3


    local UIListLayout_Menubar = Instance.new("UIListLayout")

    UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
    UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_Menubar.Padding = UDim.new(0, 10)

    local UIPadding_Menubar = Instance.new("UIPadding")

    UIPadding_Menubar.Parent = ScrollingFrame_Menubar
    UIPadding_Menubar.PaddingTop = UDim.new(0, 2)


    local PageOrders = -1

    local Container_Page = Instance.new('Frame',MainFrame2)
    Container_Page.Size = UDim2.new(0, 518, 0, 268)
    Container_Page.Position = UDim2.new(0.5, 0, 0.45, 0)
    Container_Page.BackgroundTransparency = 1
    Container_Page.Name = "Page "
    Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)

    local pagesFolder = Instance.new("Folder")

    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = Container_Page


    local UIPage = Instance.new('UIPageLayout',pagesFolder)
    UIPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIPage.EasingDirection = Enum.EasingDirection.InOut
    UIPage.EasingStyle = Enum.EasingStyle.Quad
    UIPage.Padding = UDim.new(0, 10)
    UIPage.TweenTime = 0.500

    local top = {}

    local NotiFrame = Instance.new("Frame")
    NotiFrame.Name = "NotiFrame"
    NotiFrame.Parent = STRIKECourseScreen
    NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    NotiFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
    NotiFrame.BorderSizePixel = 0
    NotiFrame.Position =  UDim2.new(1, -210, 1, -340)
    NotiFrame.Size = UDim2.new(0, 400, 0, 500)
    NotiFrame.ClipsDescendants = true
    NotiFrame.BackgroundTransparency = 1


    local Notilistlayout = Instance.new("UIListLayout")
    Notilistlayout.Parent = NotiFrame
    Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    Notilistlayout.Padding = UDim.new(0, 5)


    function create:Notify(title,text,delays)
        local TitleFrame = Instance.new("Frame")
        TitleFrame.Name = "TitleFrame"
        TitleFrame.Parent = NotiFrame
        TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        TitleFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
        TitleFrame.BorderSizePixel = 0
        TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
        TitleFrame.Size = UDim2.new(0, 0, 0, 0)
        TitleFrame.ClipsDescendants = true
        TitleFrame.BackgroundTransparency = 0

        local ConnerTitile = Instance.new("UICorner")

        ConnerTitile.CornerRadius = UDim.new(0, 4)
        ConnerTitile.Name = ""
        ConnerTitile.Parent = TitleFrame

        TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)

        local imagenoti = Instance.new("ImageLabel")

        imagenoti.Parent = TitleFrame
        imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        imagenoti.BackgroundTransparency = 1.000
        imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
        imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
        imagenoti.Size = UDim2.new(0, 50, 0, 50)
        imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="..logo.."&width=0&height=0&format=png"

        local txdlid = Instance.new("TextLabel")

        txdlid.Parent = TitleFrame
        txdlid.Name = "TextLabel_Tap"
        txdlid.BackgroundColor3 = getgenv().Color
        txdlid.Size =UDim2.new(0, 160, 0,25 )
        txdlid.Font = Enum.Font.GothamBold
        txdlid.Text = title
        txdlid.TextColor3 = getgenv().Color
        txdlid.TextSize = 20.000
        txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
        txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
        -- txdlid.TextYAlignment = Enum.TextYAlignment.Top
        txdlid.TextXAlignment = Enum.TextXAlignment.Left
        txdlid.BackgroundTransparency = 1

        local LableFrame = Instance.new("Frame")
        LableFrame.Name = "LableFrame"
        LableFrame.Parent = TitleFrame
        LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        LableFrame.BackgroundColor3 = getgenv().Color
        LableFrame.BorderSizePixel = 0
        LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
        LableFrame.Size = UDim2.new(0, 260, 0,25 )
        LableFrame.ClipsDescendants = true
        LableFrame.BackgroundTransparency = 1

        local TextNoti = Instance.new("TextLabel")

        TextNoti.Parent = LableFrame
        TextNoti.Name = "TextLabel_Tap"
        TextNoti.BackgroundColor3 = getgenv().Color
        TextNoti.Size =UDim2.new(0, 260, 0,25 )
        TextNoti.Font = Enum.Font.GothamBold
        TextNoti.Text = text
        TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextNoti.TextSize = 13.000
        TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
        TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)
        -- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
        TextNoti.TextXAlignment = Enum.TextXAlignment.Left
        TextNoti.BackgroundTransparency = 1

        repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)

        local Time = Instance.new("Frame")
        Time.Name = "Time"
        Time.Parent = TitleFrame
--Time.AnchorPoint = Vector2.new(0.5, 0.5)
        Time.BackgroundColor3 =  getgenv().Color
        Time.BorderSizePixel = 0
        Time.Position =  UDim2.new(0, 0, 0.,0)
        Time.Size = UDim2.new(0, 0,0,0)
        Time.ClipsDescendants = false
        Time.BackgroundTransparency = 0

        local ConnerTitile_Time = Instance.new("UICorner")

        ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
        ConnerTitile_Time.Name = ""
        ConnerTitile_Time.Parent = Time


        Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0., 0, 0.,0), "Out", "Quad", 0.3, true)
        repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)

        TweenService:Create(
            Time,
            TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        delay(tonumber(delays),function()
            TweenService:Create(
                TitleFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.3)
            TitleFrame:Destroy()
        end
    )
    end


    function top:Taps(text)
        PageOrders = PageOrders + 1
        local name = tostring(text) or tostring(math.random(1,5000))

        local Frame_Tap = Instance.new("Frame")
        Frame_Tap.Parent = ScrollingFrame_Menubar
        Frame_Tap.Name = text.."Server"
        Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame_Tap.BackgroundTransparency = 1
        Frame_Tap.Position = UDim2.new(0.0, 0, 0.0, 0)
        Frame_Tap.Size = UDim2.new(0, 100, 0, 25)
        Frame_Tap.Visible = true

        local TextLabel_Tap = Instance.new("TextLabel")

        TextLabel_Tap.Parent = Frame_Tap
        TextLabel_Tap.Name = "TextLabel_Tap"
        TextLabel_Tap.BackgroundColor3 = getgenv().Color
        TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.8, 0)
        TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
        TextLabel_Tap.Font = Enum.Font.SourceSans
        TextLabel_Tap.Text = " "
        TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_Tap.TextSize = 14.000
        TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)

        local TextButton_Tap = Instance.new("TextButton")

        TextButton_Tap.Parent = Frame_Tap
        TextButton_Tap.Name = "TextButton_Tap"
        TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Tap.BackgroundTransparency = 1.000
        TextButton_Tap.Position = UDim2.new(0.114491031, 0, -0.0216345787, 0)
        TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
        TextButton_Tap.Font = Enum.Font.GothamBold
        TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextButton_Tap.TextSize = 13.000
        TextButton_Tap.Text = tostring(text)

        local MainPage = Instance.new("Frame")

        MainPage.Name = name.."_MainPage"
        MainPage.Parent = pagesFolder
        MainPage.BackgroundColor3 = Color3.fromRGB(255,255, 255)
        MainPage.BorderSizePixel = 0
        MainPage.Position = UDim2.new(0.5, 0, 0.5, 0) -- UDim2.new(0.0149812736, 0, 0.13, 0)
        MainPage.Size = UDim2.new(0, 518, 0, 265)
        MainPage.BackgroundTransparency = 1
        MainPage.ClipsDescendants = true
        MainPage.Visible = true
        MainPage.LayoutOrder = PageOrders




        TextButton_Tap.MouseButton1Click:connect(function()
            if MainPage.Name == text.."_MainPage" then
                UIPage:JumpToIndex(MainPage.LayoutOrder)

            end
            for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
                if v:IsA("Frame") then
                    TweenService:Create(
                        v.TextButton_Tap,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)}
                    ):Play()
                end

                TweenService:Create(
                    TextButton_Tap,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = getgenv().Color}
                ):Play()
            end
        end)

        if fs == false then
            -- TweenService:Create(
            --     TextLabel_Tap,
            --     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            --     {Size = UDim2.new(0, 70, 0, 2)}
            -- ):Play()
            TweenService:Create(
                TextButton_Tap,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = getgenv().Color}
            ):Play()

            MainPage.Visible = true
            Frame_Tap.Name  = text .. "Server"
            fs  = true
        end
        local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")

        ScrollingFrame_Pagefrist.Parent = MainPage
        ScrollingFrame_Pagefrist.Active = true
        ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(23, 23, 23) -- 0, 128, 255
        ScrollingFrame_Pagefrist.BorderSizePixel = 0
        ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 275)
        ScrollingFrame_Pagefrist.ScrollBarThickness = 4
        ScrollingFrame_Pagefrist.ScrollBarImageColor3 = getgenv().Color -- 0, 128, 255

        local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
        local UIPadding_Pagefrist = Instance.new("UIPadding")

        UIGridLayout_Pagefrist.Archivable = false
        UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
        UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
        UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 370)

        UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
        UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
        UIPadding_Pagefrist.PaddingTop = UDim.new(0, 20)

        local page = {}

        function page:newpage()

            local Pageframe = Instance.new("Frame")


            Pageframe.Parent = ScrollingFrame_Pagefrist
            Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Pageframe.BorderSizePixel = 0
            Pageframe.Position = UDim2.new(0.028957529, 0, 0.0496277921, 0)
            Pageframe.Size = UDim2.new(0, 240, 0, 279)


            local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")


            ScrollingFrame_Pageframe.Parent = Pageframe
            ScrollingFrame_Pageframe.Active = true
            ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            ScrollingFrame_Pageframe.BorderSizePixel = 0
            ScrollingFrame_Pageframe.Position = UDim2.new(0, 0, -0.0101253344, 0)
            ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 379)
            ScrollingFrame_Pageframe.ScrollBarThickness = 4
            ScrollingFrame_Pageframe.ScrollBarImageColor3 = Color3.fromRGB(222, 222, 222)



            local UIPadding_Pageframe = Instance.new("UIPadding")
            local UIListLayout_Pageframe = Instance.new("UIListLayout")


            UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
            UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
            UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)


            UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
            UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_Pageframe.Padding = UDim.new(0, 7)

            UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
            end)

            UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
            end)

            game:GetService("RunService").Stepped:Connect(function ()
                pcall(function ()
                    ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
                    ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
                    ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 40)
                end)
            end)
        local Main1s = {}

        function Main1s:Toggle(text,config,callback)
            local Toggle = Instance.new("Frame")

            Toggle.Parent = ScrollingFrame_Pageframe
            Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            Toggle.Size = UDim2.new(0, 213, 0, 35)
            Toggle.BackgroundTransparency = 1
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

            local TextButton_Toggle = Instance.new("TextButton")

            TextButton_Toggle.Parent = Toggle
            TextButton_Toggle.BackgroundTransparency = 1
            TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(60,60,60)
            TextButton_Toggle.BorderSizePixel = 0
            TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
            TextButton_Toggle.AutoButtonColor = false
            TextButton_Toggle.Font = Enum.Font.SourceSans
            TextButton_Toggle.Text = " "
            TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle.TextSize = 12.000

            local TextButton_2_Toggle = Instance.new("TextButton")

            TextButton_2_Toggle.Parent = TextButton_Toggle
            TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    --        TextButton_2_Toggle.BorderColor3 = getgenv().Color
            TextButton_2_Toggle.BorderSizePixel = 0
            TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_2_Toggle.Position = UDim2.new(0.9, 0, 0.5, 0)
            TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
            TextButton_2_Toggle.Font = Enum.Font.SourceSans
            TextButton_2_Toggle.Text = " "
            TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_2_Toggle.TextSize = 12.000
            TextButton_2_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner.Name = ""
            TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

            local TextButton_3_Toggle = Instance.new("TextButton")

            TextButton_3_Toggle.Parent = TextButton_2_Toggle
            TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
    --        TextButton_3_Toggle.BorderColor3 = getgenv().Color
            TextButton_3_Toggle.BorderSizePixel = 0
            TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
            TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
            TextButton_3_Toggle.Font = Enum.Font.SourceSans
            TextButton_3_Toggle.Text = " "
            TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_3_Toggle.TextSize = 12.000
            TextButton_3_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

            local TextButton_4_Toggle = Instance.new("TextButton")

            TextButton_4_Toggle.Parent = TextButton_3_Toggle
            TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
    --        TextButton_3_Toggle.BorderColor3 = getgenv().Color
            TextButton_4_Toggle.BorderSizePixel = 0
            TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
            TextButton_4_Toggle.Font = Enum.Font.SourceSans
            TextButton_4_Toggle.Text = " "
            TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_4_Toggle.TextSize = 12.000
            TextButton_4_Toggle.AutoButtonColor = false
            TextButton_4_Toggle.BackgroundTransparency = 1
            TextButton_4_Toggle.Visible = true

            local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner4.Name = ""
            TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

            local TextLabel_Toggle = Instance.new("TextLabel")

            TextLabel_Toggle.Parent = Toggle
            TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_Toggle.BackgroundTransparency = 1
            TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel_Toggle.Position = UDim2.new(0.4, 0, 0.5, 0)
            TextLabel_Toggle.BorderSizePixel = 0
            TextLabel_Toggle.Size = UDim2.new(0, 130, 0, 25)
            TextLabel_Toggle.Font = Enum.Font.GothamBold
            TextLabel_Toggle.Text = text
            TextLabel_Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
            TextLabel_Toggle.TextSize = 11.000
            TextLabel_Toggle.ClipsDescendants = true
            TextLabel_Toggle.TextWrapped = true
            TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

            local TextButton_Toggle2 = Instance.new("TextButton")

            TextButton_Toggle2.Parent = TextButton_Toggle
            TextButton_Toggle2.BackgroundTransparency =1
            TextButton_Toggle2.BackgroundColor3 = Color3.fromRGB(60,60,60)
            TextButton_Toggle2.BorderSizePixel = 0
            TextButton_Toggle2.Size = UDim2.new(0, 213, 0, 35)
            TextButton_Toggle2.AutoButtonColor = false
            TextButton_Toggle2.Font = Enum.Font.SourceSans
            TextButton_Toggle2.Text = " "
            TextButton_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle2.TextSize = 12.000

            TextButton_Toggle2.MouseEnter:Connect(function()
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        TextButton_Toggle2.MouseLeave:Connect(function()
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(200, 200, 200)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        local check = {toogle = false ; loacker = true ; togfunction = {

        };
    }
    TextButton_Toggle2.MouseButton1Click:Connect(function()
            if check.toogle == false and check.loacker == true  then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            elseif  check.loacker ==  true then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            end
            if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
            end
        end
    )

        if config == true then
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextButton_3_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextButton_2_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            check.toogle = true
            callback(check.toogle)
        end

        local lockerframe = Instance.new("Frame")

        lockerframe.Name = "lockerframe"
        lockerframe.Parent = Toggle
        lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        lockerframe.BackgroundTransparency = 1
        lockerframe.Size = UDim2.new(0, 320, 0, 35)
        lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
        lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

        local LockerImageLabel = Instance.new("ImageButton")
        LockerImageLabel.Parent = lockerframe
        LockerImageLabel.BackgroundTransparency = 1.000
        LockerImageLabel.BorderSizePixel = 0
        LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
        LockerImageLabel.Image = "rbxassetid://3926305904"
        LockerImageLabel.ZIndex = 10
        LockerImageLabel.ImageRectOffset = Vector2.new(4, 684)
        LockerImageLabel.ImageRectSize = Vector2.new(36, 36)


        function check.togfunction:lock()
            TweenService:Create(
                lockerframe,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 0.7}
            ):Play()
            TweenService:Create(
                LockerImageLabel,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 30, 0, 30)}
            ):Play()

            check.loacker  = false
        --    pcall(callback,locker)
        end
        function check.togfunction:unlock()
            TweenService:Create(
                lockerframe,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 1}
            ):Play()
            TweenService:Create(
                LockerImageLabel,
                TweenInfo.new(.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            check.loacker  = true
        --   pcall(callback,locker)
        end

            return  check.togfunction
        end

        function Main1s:Button(text,callback)

            local ButtonFrame = Instance.new("Frame")

            ButtonFrame.Name = "ButtonFrame"
            ButtonFrame.Parent = ScrollingFrame_Pageframe
            ButtonFrame.BackgroundColor3 = getgenv().Color
            ButtonFrame.BorderSizePixel = 0
            ButtonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonFrame.Size = UDim2.new(0, 213, 0, 25) -- UDim2.new(0, 213, 0, 35)
            ButtonFrame.BackgroundTransparency  = 1
            ButtonFrame.ClipsDescendants = true



            local MheeFrameStroke = Instance.new("UIStroke")

            MheeFrameStroke.Thickness = 0
            MheeFrameStroke.Name = ""
            MheeFrameStroke.Parent = ButtonFrame
            MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            MheeFrameStroke.Color = getgenv().Color
            MheeFrameStroke.Transparency = 0.7

            local Button = Instance.new("TextButton")

            Button.Parent = ButtonFrame
            Button.Name = "Button"
            Button.BackgroundColor3 = getgenv().Color
            Button.Size = UDim2.new(0,150, 0, 25)
            Button.Font = Enum.Font.GothamBold
            Button.Text = tostring(text)
            Button.TextColor3 = Color3.fromRGB(155, 155, 155)
            Button.TextSize = 11.000
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.Position = UDim2.new(0.5, 0, 0.5, 0)
            Button.TextXAlignment = Enum.TextXAlignment.Center
            Button.BackgroundTransparency = 0.6
            Button.TextWrapped = true
            Button.AutoButtonColor = false
            Button.ClipsDescendants = true

            local ConnerPageMhee = Instance.new("UICorner")

            ConnerPageMhee.CornerRadius = UDim.new(0, 4)
            ConnerPageMhee.Name = ""
            ConnerPageMhee.Parent = Button

            Button.MouseEnter:Connect(function()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size =  UDim2.new(0, 213, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )
            Button.MouseLeave:Connect(function()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size =  UDim2.new(0, 150, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        Button.MouseButton1Click:Connect(function()
        --    Ripple(Button)
            callback()
            TweenService:Create(
                Button,
                TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {TextSize =  16} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
                Button,
                TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {TextSize =  13} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

        end

        function Main1s:Slider(text,check,floor,min,max,de,lol,tog,callback,logoslide)

         if logoslide == nil then
            logoslide = logo
        end
         
        if check then

            local SliderFrame = Instance.new("Frame")

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = ScrollingFrame_Pageframe
            SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- getgenv().Color
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
            SliderFrame.BackgroundTransparency  = 0
            SliderFrame.ClipsDescendants = true

            local SliderFrameConner = Instance.new("UICorner")

            SliderFrameConner.CornerRadius = UDim.new(0, 4)
            SliderFrameConner.Name = ""
            SliderFrameConner.Parent = SliderFrame

            local SliderFrameStroke = Instance.new("UIStroke")

            SliderFrameStroke.Thickness = 1
            SliderFrameStroke.Name = ""
            SliderFrameStroke.Parent = SliderFrame
            SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderFrameStroke.Color = getgenv().Color
            SliderFrameStroke.Transparency = 0.7


            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )


            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = SliderFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.TextSize = 26.000
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


            local ShowValueFarm = Instance.new("Frame")

            ShowValueFarm.Name = "ShowValueFarm"
            ShowValueFarm.Parent = SliderFrame
            ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
            ShowValueFarm.BackgroundTransparency = 0
            ShowValueFarm.BorderSizePixel = 0
            ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
            ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
            ShowValueFarm.ClipsDescendants = false

            local CustomValue = Instance.new("TextBox")

            CustomValue.Parent = ShowValueFarm
            CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
            CustomValue.BorderSizePixel = 0
            CustomValue.ClipsDescendants = true
            CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
            CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            CustomValue.Size = UDim2.new(0, 158, 0, 26)
            CustomValue.Font = Enum.Font.GothamBold
            CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
            CustomValue.PlaceholderText =  ""
            if floor == true then
                CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
            else
                CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
            end
            CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            CustomValue.TextSize = 10.000
            CustomValue.BackgroundTransparency = 1

            local ValueFrame = Instance.new("Frame")

            ValueFrame.Name = "ValueFrame"
            ValueFrame.Parent = SliderFrame
            ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ValueFrame.Size = UDim2.new(0, 140, 0, 5)
            ValueFrame.BackgroundTransparency = 0
            ValueFrame.BorderSizePixel = 0
            ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueFrame.Position = UDim2.new(0.4, 0, 0.8, 0)
            ValueFrame.ClipsDescendants = false


            local PartValue = Instance.new("Frame")

            PartValue.Name = "PartValue"
            PartValue.Parent = ValueFrame
            PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
            PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            PartValue.Size = UDim2.new(0, 140, 0, 5)
            PartValue.BackgroundTransparency = 1
            PartValue.BorderSizePixel = 0
            PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
            PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            PartValue.ClipsDescendants = false

            local MainValue = Instance.new("Frame")

            MainValue.Name = "MainValue"
            MainValue.Parent = PartValue
            MainValue.BackgroundColor3 = getgenv().Color
            MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
            MainValue.BackgroundTransparency = 0
            MainValue.BorderSizePixel = 0
            -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
            MainValue.Position = UDim2.new(0., 0, 0.0, 0)
            MainValue.ClipsDescendants = false

            local Conner_S1 = Instance.new("UICorner")

            Conner_S1.CornerRadius = UDim.new(0, 8)
            Conner_S1.Name = ""
            Conner_S1.Parent = MainValue

            local Conner_S2 = Instance.new("UICorner")

            Conner_S2.CornerRadius = UDim.new(0, 8)
            Conner_S2.Name = ""
            Conner_S2.Parent = ValueFrame

            local ConneValue = Instance.new("Frame")

            ConneValue.Name = "ConneValue"
            ConneValue.Parent = PartValue
            ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ConneValue.Size = UDim2.new(0, 13, 0,13)
            ConneValue.BackgroundTransparency = 0
            ConneValue.BorderSizePixel = 0
            ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
            ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
            ConneValue.ClipsDescendants = false


            local Conner_Conne = Instance.new("UICorner")

            Conner_Conne.CornerRadius = UDim.new(0, 300)
            Conner_Conne.Name = ""
            Conner_Conne.Parent = ConneValue

            local Addvalue = Instance.new("ImageButton")

            Addvalue.Name = "Imatog"
            Addvalue.Parent = SliderFrame
            Addvalue.BackgroundTransparency = 1.000
            Addvalue.BorderSizePixel = 0
            Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
            Addvalue.Size = UDim2.new(0, 15, 0, 15)
            Addvalue.Image = "http://www.roblox.com/asset/?id=8188583292"
            Addvalue.ImageColor3 =  getgenv().Color

            local Deletevalue = Instance.new("ImageButton")

            Deletevalue.Name = "Imatog"
            Deletevalue.Parent = SliderFrame
            Deletevalue.BackgroundTransparency = 1.000
            Deletevalue.BorderSizePixel = 0
            Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
            Deletevalue.Size = UDim2.new(0, 15, 0, 15)
            Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
            Deletevalue.ImageColor3 =  getgenv().Color


            local TextButton_2_Toggle = Instance.new("TextButton")

            TextButton_2_Toggle.Parent = ValueFrame
            TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    --        TextButton_2_Toggle.BorderColor3 = getgenv().Color
            TextButton_2_Toggle.BorderSizePixel = 0
            TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_2_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
            TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
            TextButton_2_Toggle.Font = Enum.Font.SourceSans
            TextButton_2_Toggle.Text = " "
            TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_2_Toggle.TextSize = 12.000
            TextButton_2_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner.Name = ""
            TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

            local TextButton_3_Toggle = Instance.new("TextButton")

            TextButton_3_Toggle.Parent = TextButton_2_Toggle
            TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
    --        TextButton_3_Toggle.BorderColor3 = getgenv().Color
            TextButton_3_Toggle.BorderSizePixel = 0
            TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
            TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
            TextButton_3_Toggle.Font = Enum.Font.SourceSans
            TextButton_3_Toggle.Text = " "
            TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_3_Toggle.TextSize = 12.000
            TextButton_3_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

            local TextButton_4_Toggle = Instance.new("TextButton")

            TextButton_4_Toggle.Parent = TextButton_3_Toggle
            TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
    --        TextButton_3_Toggle.BorderColor3 = getgenv().Color
            TextButton_4_Toggle.BorderSizePixel = 0
            TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
            TextButton_4_Toggle.Font = Enum.Font.SourceSans
            TextButton_4_Toggle.Text = " "
            TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_4_Toggle.TextSize = 12.000
            TextButton_4_Toggle.AutoButtonColor = false
            TextButton_4_Toggle.BackgroundTransparency = 1
            TextButton_4_Toggle.Visible = true

            local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner4.Name = ""
            TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


            local TextButton_Toggle = Instance.new("TextButton")

            TextButton_Toggle.Parent = ValueFrame
            TextButton_Toggle.BackgroundTransparency =1
            TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_Toggle.BorderSizePixel = 0
            TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
            TextButton_Toggle.AutoButtonColor = false
            TextButton_Toggle.Font = Enum.Font.SourceSans
            TextButton_Toggle.Text = " "
            TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle.TextSize = 12.000
            TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)



        -- local value = de
        local check2 = {toogle2 = false;}
            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0.3,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        5
                    )

                    MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

                    ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    if floor == true then
                        local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                    --   callback[2] = value
                    callback({
                        ["s"] = value;
                        ["t"] = check2.toogle2
                    })
                    --callback({value,check2.toogle2})
                        --callback(value)
                    else
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback({
                            ["s"] = value;
                            ["t"] = check2.toogle2
                        })
                --       callback({value,check2.toogle2})

                    end



                end

                local dragging = false
                ConneValue.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )


                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )

                game:GetService("UserInputService").InputChanged:Connect(
                    function(input)
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            move(input)
                        end
                    end
                    )

                    CustomValue.FocusLost:Connect(function()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) <= min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2;
                        })
                --       callback({ tonumber(CustomValue.Text),check2.toogle2})
                --  pcall(callback, CustomValue.Text)
                    end)


                    Addvalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        pcall(function()
                            CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                        end)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2
                        })
                    --   callback({ tonumber(CustomValue.Text),check2.toogle2})
                    --  pcall(callback, CustomValue.Text)
                    end)

                    Deletevalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        pcall(function()
                            CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                        end)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2;
                        })
            --callback({ tonumber(CustomValue.Text),check2.toogle2})
                    --  pcall(callback, CustomValue.Text)
                    end)




            ---
                    TextButton_Toggle.MouseEnter:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )

                TextButton_Toggle.MouseLeave:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )



            TextButton_Toggle.MouseButton1Click:Connect(function()
                if check2.toogle2 == false   then
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_3_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_2_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                else
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_3_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_2_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                end
                    check2.toogle2 = not check2.toogle2
                    callback({
                        ["t"] = check2.toogle2;

                    })
                --   callback({value,check2.toogle2})
                    --callback(check2.toogle2)
            end
        )

            if tog == true then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                check2.toogle2 = true
                callback({
                    ["t"] = check2.toogle2;
                })
        --        callback({value,check2.toogle2})
            --  callback(check2.toogle2)
            end


        else
            tog = nil
            local SliderFrame = Instance.new("Frame")

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = ScrollingFrame_Pageframe
            SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- getgenv().Color
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
            SliderFrame.BackgroundTransparency  = 0
            SliderFrame.ClipsDescendants = true

            local SliderFrameStroke = Instance.new("UIStroke")

            SliderFrameStroke.Thickness = 1
            SliderFrameStroke.Name = ""
            SliderFrameStroke.Parent = SliderFrame
            SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderFrameStroke.Color = getgenv().Color
            SliderFrameStroke.Transparency = 0.7

            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = SliderFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.TextSize = 11.000
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


            local ShowValueFarm = Instance.new("Frame")

            ShowValueFarm.Name = "ShowValueFarm"
            ShowValueFarm.Parent = SliderFrame
            ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
            ShowValueFarm.BackgroundTransparency = 0
            ShowValueFarm.BorderSizePixel = 0
            ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
            ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
            ShowValueFarm.ClipsDescendants = false

            local CustomValue = Instance.new("TextBox")

            CustomValue.Parent = ShowValueFarm
            CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
            CustomValue.BorderSizePixel = 0
            CustomValue.ClipsDescendants = true
            CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
            CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            CustomValue.Size = UDim2.new(0, 158, 0, 26)
            CustomValue.Font = Enum.Font.GothamBold
            CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
            CustomValue.PlaceholderText =  ""
            if floor == true then
                CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
            else
                CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
            end
            CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            CustomValue.TextSize = 8.000
            CustomValue.BackgroundTransparency = 1

            local ValueFrame = Instance.new("Frame")

            ValueFrame.Name = "ValueFrame"
            ValueFrame.Parent = SliderFrame
            ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ValueFrame.Size = UDim2.new(0, 190, 0, 5)
            ValueFrame.BackgroundTransparency = 0
            ValueFrame.BorderSizePixel = 0
            ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
            ValueFrame.ClipsDescendants = false


            local PartValue = Instance.new("Frame")

            PartValue.Name = "PartValue"
            PartValue.Parent = ValueFrame
            PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
            PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            PartValue.Size = UDim2.new(0, 190, 0, 5)
            PartValue.BackgroundTransparency = 1
            PartValue.BorderSizePixel = 0
            PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
            PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            PartValue.ClipsDescendants = false

            local MainValue = Instance.new("Frame")

            MainValue.Name = "MainValue"
            MainValue.Parent = PartValue
            MainValue.BackgroundColor3 = getgenv().Color
            MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
            MainValue.BackgroundTransparency = 0
            MainValue.BorderSizePixel = 0
            -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
            MainValue.Position = UDim2.new(0., 0, 0.0, 0)
            MainValue.ClipsDescendants = false

            local Conner_S1 = Instance.new("UICorner")

            Conner_S1.CornerRadius = UDim.new(0, 8)
            Conner_S1.Name = ""
            Conner_S1.Parent = MainValue

            local Conner_S2 = Instance.new("UICorner")

            Conner_S2.CornerRadius = UDim.new(0, 8)
            Conner_S2.Name = ""
            Conner_S2.Parent = ValueFrame
            local ConneValue = Instance.new("ImageLabel")
    
            ConneValue.Name = "ConneValue"
            ConneValue.Parent = PartValue
            ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ConneValue.Size = UDim2.new(0, 20, 0,20)
            ConneValue.BackgroundTransparency = 1
            ConneValue.BorderSizePixel = 0
            ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
            ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
            ConneValue.ClipsDescendants = false
            ConneValue.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="..logoslide.."&width=0&height=0&format=png"

            local Addvalue = Instance.new("ImageButton")

            Addvalue.Name = "Imatog"
            Addvalue.Parent = SliderFrame
            Addvalue.BackgroundTransparency = 1.000
            Addvalue.BorderSizePixel = 0
            Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
            Addvalue.Size = UDim2.new(0, 15, 0, 15)
            Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
            Addvalue.ImageColor3 =  getgenv().Color

            local Deletevalue = Instance.new("ImageButton")

            Deletevalue.Name = "Imatog"
            Deletevalue.Parent = SliderFrame
            Deletevalue.BackgroundTransparency = 1.000
            Deletevalue.BorderSizePixel = 0
            Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
            Deletevalue.Size = UDim2.new(0, 15, 0, 15)
            Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
            Deletevalue.ImageColor3 =  getgenv().Color

            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0.3,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        5
                    )

                    MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

                    ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    if floor == true then
                        local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    else
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    end



                end

                local dragging = false
                ConneValue.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )


                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )

                game:GetService("UserInputService").InputChanged:Connect(
                    function(input)
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            move(input)
                        end
                    end
                    )

                    CustomValue.FocusLost:Connect(function()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        pcall(callback, CustomValue.Text)
                    end)


            Addvalue.MouseButton1Click:Connect(function ()
                if CustomValue.Text == "" then
                    CustomValue.Text  = de
                end
                CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                if  tonumber(CustomValue.Text) > max then
                    CustomValue.Text  = max
                end
                if  tonumber(CustomValue.Text) < min then
                    CustomValue.Text  = min
                end
                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                if floor == true then
                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                else
                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                end
                pcall(callback, CustomValue.Text)
            end)

            Deletevalue.MouseButton1Click:Connect(function ()
                if CustomValue.Text == "" then
                    CustomValue.Text  = de
                end
                CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                if  tonumber(CustomValue.Text) > max then
                    CustomValue.Text  = max
                end
                if  tonumber(CustomValue.Text) < min then
                    CustomValue.Text  = min
                end
                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                if floor == true then
                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                else
                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                end
                pcall(callback, CustomValue.Text)
            end)

        end

        end

        function Main1s:Drop(text,text2,use,option,callback)

        if use == false then
            local DropFrame = Instance.new("Frame")

            DropFrame.Name = "DropFrame"
            DropFrame.Parent = ScrollingFrame_Pageframe
            DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- getgenv().Color
            DropFrame.BorderSizePixel = 0
            DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
            DropFrame.BackgroundTransparency  = 0
            DropFrame.ClipsDescendants = true

            local ConnerDropFrame = Instance.new("UICorner")

            ConnerDropFrame.CornerRadius = UDim.new(0, 4)
            ConnerDropFrame.Name = ""
            ConnerDropFrame.Parent = DropFrame

            local DropFrameStroke = Instance.new("UIStroke")

            DropFrameStroke.Thickness = 1
            DropFrameStroke.Name = ""
            DropFrameStroke.Parent = DropFrame
            DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            DropFrameStroke.Color = getgenv().Color
            DropFrameStroke.Transparency = 0.7





            local LabelFrameDrop = Instance.new("TextLabel")

            LabelFrameDrop.Parent = DropFrame
            LabelFrameDrop.Name = "LabelFrameDrop"
            LabelFrameDrop.BackgroundColor3 = getgenv().Color
            LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
            LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
            LabelFrameDrop.Font = Enum.Font.GothamBold
            LabelFrameDrop.Text = ""
            LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelFrameDrop.TextSize = 14.000
        --   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelFrameDrop.BackgroundTransparency = 1
            LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


            local TextLabel_TapDrop = Instance.new("TextLabel")

            TextLabel_TapDrop.Parent = LabelFrameDrop
            TextLabel_TapDrop.Name = "TextLabel_TapDrop"
            TextLabel_TapDrop.BackgroundColor3 = getgenv().Color
            TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
            TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
            TextLabel_TapDrop.Font = Enum.Font.GothamBold
            TextLabel_TapDrop.Text = tostring(text).." : "..tostring(text2)
            TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextLabel_TapDrop.TextSize = 11.000
    --     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel_TapDrop.BackgroundTransparency = 1
            TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


            local DropArbt_listimage = Instance.new("ImageButton")

            DropArbt_listimage.Parent = LabelFrameDrop
            DropArbt_listimage.BackgroundTransparency = 1.000
            DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
            DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
            DropArbt_listimage.BorderSizePixel = 0
            DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
            DropArbt_listimage.Image = "http://www.roblox.com/asset/?id="..logo
            DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

            local ScolDown = Instance.new("ScrollingFrame")

            ScolDown.Name = "ScolDown"
            ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
            ScolDown.Parent = LabelFrameDrop
            ScolDown.Active = true
            ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScolDown.BorderSizePixel = 0
            ScolDown.Size = UDim2.new(0, 205, 0, 115)
            ScolDown.ScrollBarThickness = 3
            ScolDown.ClipsDescendants = true
            ScolDown.BackgroundTransparency = 1
            ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

            local UIListLayoutlist = Instance.new("UIListLayout")
            local UIPaddinglist = Instance.new("UIPadding")

            UIListLayoutlist.Name = "UIListLayoutlist"
            UIListLayoutlist.Parent = ScolDown
            UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayoutlist.Padding = UDim.new(0, 5)

            UIPaddinglist.Name = "UIPaddinglist"
            UIPaddinglist.Parent = ScolDown
            UIPaddinglist.PaddingTop = UDim.new(0, 5)
            UIPaddinglist.PaddingLeft = UDim.new(0, 12)

            local ButtonDrop = Instance.new("TextButton")

            ButtonDrop.Parent = DropFrame
            ButtonDrop.Name = "ButtonDrop"
            ButtonDrop.BackgroundColor3 = getgenv().Color
            ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
            ButtonDrop.Font = Enum.Font.GothamBold
            ButtonDrop.Text = ""
            ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            ButtonDrop.TextSize = 13.000
        --   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
            ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
            ButtonDrop.BackgroundTransparency = 1
            ButtonDrop.TextWrapped = true
            ButtonDrop.AutoButtonColor = false
            ButtonDrop.ClipsDescendants = true

            local dog = false

            local FrameSize = 75
            local cout = 0
            for i , v in pairs(option) do
                cout =cout + 1
                if cout == 1 then
                    FrameSize = 75
                elseif cout == 2 then
                    FrameSize = 110
                elseif cout >= 3 then
                    FrameSize = 150
                end

                local ListFrame = Instance.new("Frame")

                ListFrame.Name = "ListFrame"
                ListFrame.Parent = ScolDown
                ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- getgenv().Color
                ListFrame.BorderSizePixel = 0
                ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
                ListFrame.BackgroundTransparency  = 1
                ListFrame.ClipsDescendants = true

                local TextLabel_TapDro2p = Instance.new("TextLabel")

                TextLabel_TapDro2p.Parent = ListFrame
                TextLabel_TapDro2p.Name =  tostring(v).."Dropdown"
                TextLabel_TapDro2p.BackgroundColor3 = getgenv().Color
                TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
                TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
                TextLabel_TapDro2p.Font = Enum.Font.GothamBold
                TextLabel_TapDro2p.Text = tostring(v)
                TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
                TextLabel_TapDro2p.TextSize = 14.000
                TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
                TextLabel_TapDro2p.BackgroundTransparency = 1
                TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

                local ButtonDrop2 = Instance.new("TextButton")

                ButtonDrop2.Parent = ListFrame
                ButtonDrop2.Name = "ButtonDrop2"
                ButtonDrop2.BackgroundColor3 = getgenv().Color
                ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
                ButtonDrop2.Font = Enum.Font.GothamBold
                ButtonDrop2.Text = ""
                ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
                ButtonDrop2.TextSize = 13.000
            --   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
                ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
                ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
                ButtonDrop2.BackgroundTransparency = 1
                ButtonDrop2.TextWrapped = true
                ButtonDrop2.AutoButtonColor = false
                ButtonDrop2.ClipsDescendants = true

                ButtonDrop2.MouseEnter:Connect(function ()
                    TweenService:Create(
                        TextLabel_TapDro2p,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end)

                ButtonDrop2.MouseLeave:Connect(function ()
                    TweenService:Create(
                        TextLabel_TapDro2p,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end)

                ButtonDrop2.MouseButton1Click:Connect(function()
                    TweenService:Create(
                        DropFrame,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        DropArbt_listimage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    TextLabel_TapDrop.Text =  text.." : "..tostring(v)
                    callback(v)
                    dog = not dog
                end
            )


                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            end


            DropFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    DropFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_TapDrop,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        DropFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    DropFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_TapDrop,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )


        ButtonDrop.MouseButton1Click:Connect(function()
            if dog == false then
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = -180}
                ):Play()
                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            else
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            end
            dog = not dog
        end
    )
    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

        local dropfunc = {}

        function dropfunc:Clear()
            TextLabel_TapDrop.Text = tostring(text).." :"
            for i, v in next, ScolDown:GetChildren() do
                if v:IsA("Frame") then
                    v:Destroy()
                end
            end
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end

        function dropfunc:Add(t)
            local ListFrame = Instance.new("Frame")

            ListFrame.Name = "ListFrame"
            ListFrame.Parent = ScolDown
            ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- getgenv().Color
            ListFrame.BorderSizePixel = 0
            ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
            ListFrame.BackgroundTransparency  = 1
            ListFrame.ClipsDescendants = true

            local TextLabel_TapDro2p = Instance.new("TextLabel")

            TextLabel_TapDro2p.Parent = ListFrame
            TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
            TextLabel_TapDro2p.BackgroundColor3 = getgenv().Color
            TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
            TextLabel_TapDro2p.Font = Enum.Font.GothamBold
            TextLabel_TapDro2p.Text = tostring(t)
            TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextLabel_TapDro2p.TextSize = 14.000
            TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel_TapDro2p.BackgroundTransparency = 1
            TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

            local ButtonDrop2 = Instance.new("TextButton")

            ButtonDrop2.Parent = ListFrame
            ButtonDrop2.Name = "ButtonDrop2"
            ButtonDrop2.BackgroundColor3 = getgenv().Color
            ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
            ButtonDrop2.Font = Enum.Font.GothamBold
            ButtonDrop2.Text = ""
            ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
            ButtonDrop2.TextSize = 13.000
        --   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonDrop2.Position = UDim2.new(0., 0, 0., 0)
            ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
            ButtonDrop2.BackgroundTransparency = 1
            ButtonDrop2.TextWrapped = true
            ButtonDrop2.AutoButtonColor = false
            ButtonDrop2.ClipsDescendants = true

            ButtonDrop2.MouseEnter:Connect(function ()
                TweenService:Create(
                    TextLabel_TapDro2p,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end)

            ButtonDrop2.MouseLeave:Connect(function ()
                TweenService:Create(
                    TextLabel_TapDro2p,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end)

            ButtonDrop2.MouseButton1Click:Connect(function()
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                TextLabel_TapDrop.Text =  text.." : "..tostring(t)
                callback(t)
                dog = not dog
            end
        )

            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end
        return dropfunc

    else

        local location = option.location or self.flags
        local flag = not use and option.flag or ""
        local callback = callback or function() end
        local list = option.list or {}
        local default = list.default or list[1].Name

        if not use then
            location[flag] = default
        end


        local DropFrame = Instance.new("Frame")

        DropFrame.Name = "DropFrame"
        DropFrame.Parent = ScrollingFrame_Pageframe
        DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- getgenv().Color
        DropFrame.BorderSizePixel = 0
        DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
        DropFrame.BackgroundTransparency  = 0
        DropFrame.ClipsDescendants = true

        local ConnerDropFrame = Instance.new("UICorner")

        ConnerDropFrame.CornerRadius = UDim.new(0, 4)
        ConnerDropFrame.Name = ""
        ConnerDropFrame.Parent = DropFrame

        local DropFrameStroke = Instance.new("UIStroke")

        DropFrameStroke.Thickness = 1
        DropFrameStroke.Name = ""
        DropFrameStroke.Parent = DropFrame
        DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
        DropFrameStroke.Color = getgenv().Color
        DropFrameStroke.Transparency = 0.7





        local LabelFrameDrop = Instance.new("TextLabel")

        LabelFrameDrop.Parent = DropFrame
        LabelFrameDrop.Name = "LabelFrameDrop"
        LabelFrameDrop.BackgroundColor3 = getgenv().Color
        LabelFrameDrop.Position = UDim2.new(0., 0, 0., 0)
        LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
        LabelFrameDrop.Font = Enum.Font.GothamBold
        LabelFrameDrop.Text = ""
        LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelFrameDrop.TextSize = 14.000
    --   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelFrameDrop.BackgroundTransparency = 1
        LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


        local TextLabel_TapDrop = Instance.new("TextLabel")

        TextLabel_TapDrop.Parent = LabelFrameDrop
        TextLabel_TapDrop.Name = "TextLabel_TapDrop"
        TextLabel_TapDrop.BackgroundColor3 = getgenv().Color
        TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
        TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
        TextLabel_TapDrop.Font = Enum.Font.GothamBold
        TextLabel_TapDrop.Text = tostring(text).." :"
        TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextLabel_TapDrop.TextSize = 14.000
--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel_TapDrop.BackgroundTransparency = 1
        TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


        local DropArbt_listimage = Instance.new("ImageButton")

        DropArbt_listimage.Parent = LabelFrameDrop
        DropArbt_listimage.BackgroundTransparency = 1.000
        DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
        DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
        DropArbt_listimage.BorderSizePixel = 0
        DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
        DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
        DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

        local ScolDown = Instance.new("ScrollingFrame")

        ScolDown.Name = "ScolDown"
        ScolDown.Position = UDim2.new(0.02, 0, 1., 0)
        ScolDown.Parent = LabelFrameDrop
        ScolDown.Active = true
        ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScolDown.BorderSizePixel = 0
        ScolDown.Size = UDim2.new(0, 205, 0, 115)
        ScolDown.ScrollBarThickness = 3
        ScolDown.ClipsDescendants = true
        ScolDown.BackgroundTransparency = 1
        ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

        local UIListLayoutlist = Instance.new("UIListLayout")
        local UIPaddinglist = Instance.new("UIPadding")

        UIListLayoutlist.Name = "UIListLayoutlist"
        UIListLayoutlist.Parent = ScolDown
        UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayoutlist.Padding = UDim.new(0, 5)

        UIPaddinglist.Name = "UIPaddinglist"
        UIPaddinglist.Parent = ScolDown
        UIPaddinglist.PaddingTop = UDim.new(0, 5)
        UIPaddinglist.PaddingLeft = UDim.new(0, 12)

        local ButtonDrop = Instance.new("TextButton")

        ButtonDrop.Parent = DropFrame
        ButtonDrop.Name = "ButtonDrop"
        ButtonDrop.BackgroundColor3 = getgenv().Color
        ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
        ButtonDrop.Font = Enum.Font.GothamBold
        ButtonDrop.Text = ""
        ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        ButtonDrop.TextSize = 13.000
    --   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        ButtonDrop.Position = UDim2.new(0., 0, 0., 0)
        ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
        ButtonDrop.BackgroundTransparency = 1
        ButtonDrop.TextWrapped = true
        ButtonDrop.AutoButtonColor = false
        ButtonDrop.ClipsDescendants = true

        local dog = false

        local FrameSize = 75
        local cout = 0
        for i , v in pairs(list) do
            cout =cout + 1
            if cout == 1 then
                FrameSize = 75
            elseif cout == 2 then
                FrameSize = 110
            elseif cout >= 3 then
                FrameSize = 150
            end

            local listtog = Instance.new("Frame")

            listtog.Name = "listtog"
            listtog.Parent = ScolDown
            listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            listtog.BackgroundTransparency =1
            listtog.BorderSizePixel = 0
            listtog.ClipsDescendants = true
            listtog.AnchorPoint = Vector2.new(0.5, 0.5)
            listtog.Position = UDim2.new(0.5, 0, 0.5, 0)
            listtog.Size = UDim2.new(0, 210, 0, 33)


            local listtextbutton = Instance.new("TextButton")

            listtextbutton.Parent = listtog
            listtextbutton.BackgroundTransparency =1
            listtextbutton.BackgroundColor3 = Color3.fromRGB(60,60,60)
            listtextbutton.BorderSizePixel = 0
            listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
            listtextbutton.AutoButtonColor = false
            listtextbutton.Font = Enum.Font.SourceSans
            listtextbutton.Text = " "
            listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
            listtextbutton.TextSize = 14.000

            local farmtoglist = Instance.new("TextButton")

            farmtoglist.Parent = listtextbutton
            farmtoglist.BackgroundColor3 = getgenv().Color
            farmtoglist.BorderColor3 = getgenv().Color
            farmtoglist.BorderSizePixel = 0
            farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)
            farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)
            farmtoglist.Size = UDim2.new(0, 23, 0, 23)
            farmtoglist.Font = Enum.Font.SourceSans
            farmtoglist.Text = " "
            farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
            farmtoglist.TextSize = 14.000
            farmtoglist.AutoButtonColor = false


            local farmtoglist2 = Instance.new("TextButton")

            farmtoglist2.Parent = farmtoglist
            farmtoglist2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
            farmtoglist2.BorderColor3 = getgenv().Color
            farmtoglist2.BorderSizePixel = 0
            farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
            farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
            farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
            farmtoglist2.Font = Enum.Font.SourceSans
            farmtoglist2.Text = " "
            farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
            farmtoglist2.TextSize = 14.000
            farmtoglist2.AutoButtonColor = false


            local listimage = Instance.new("ImageButton")

            listimage.Parent = farmtoglist2
            listimage.BackgroundTransparency = 1.000
            listimage.AnchorPoint = Vector2.new(0.5, 0.5)
            listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
            listimage.BorderSizePixel = 0
            listimage.Size = UDim2.new(0, 0, 0, 0)
            listimage.Image = "http://www.roblox.com/asset/?id=5880482965"


            local textlist = Instance.new("TextLabel")


            textlist.Parent = listtextbutton
            textlist.Name = "textlist"
            textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textlist.BackgroundTransparency = 1.000
            textlist.AnchorPoint = Vector2.new(0.5, 0.5)
            textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
            textlist.BorderSizePixel = 0
            textlist.Size = UDim2.new(0, 91, 0, 25)
            textlist.Font = Enum.Font.GothamBold
            textlist.Text = tostring(v.Name)
            textlist.TextColor3 = Color3.fromRGB(255, 255, 255)
            textlist.TextSize = 13.000



            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = farmtoglist

            local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
            TextButton_Pageframe_Uiconner22.Name = ""
            TextButton_Pageframe_Uiconner22.Parent = farmtoglist2



            listtextbutton.MouseButton1Click:Connect(function()
                if not  location[v.flag] then
                    listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                    wait(0.1)
                    listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                else
                    listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                    wait(0.1)
                    listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                end
                location[v.flag] = not location[v.flag]
                callback(location[v.flag])
            end
        )

        if  location[v.flag] then
            listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

            callback(location[v.flag])
        end

            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end


        DropFrame.MouseEnter:Connect(function()
            TweenService:Create(
                DropFrameStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextLabel_TapDrop,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    DropFrame.MouseLeave:Connect(function()
            TweenService:Create(
                DropFrameStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextLabel_TapDrop,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )


    ButtonDrop.MouseButton1Click:Connect(function()
        if dog == false then
            TweenService:Create(
                DropFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        else
            TweenService:Create(
                DropFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = 0}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end
        dog = not dog
    end
)
ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )



        end



        end

        function Main1s:TextBox(text,text2,callback)
            local TextFrame = Instance.new("Frame")

            TextFrame.Name = "TextFrame"
            TextFrame.Parent = ScrollingFrame_Pageframe
            TextFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            TextFrame.BorderSizePixel = 0
            TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            TextFrame.Size = UDim2.new(0, 213, 0, 70)
            TextFrame.BackgroundTransparency  = 1
            TextFrame.ClipsDescendants = true

            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = TextFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelNameSliderxd.TextSize = 11.000
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Center

            local ConerTextBox = Instance.new("UICorner")

            ConerTextBox.CornerRadius = UDim.new(0, 4)
            ConerTextBox.Name = ""
            ConerTextBox.Parent = TextFrame

            local FrameBox = Instance.new("Frame")

            FrameBox.Name = "TextFrame"
            FrameBox.Parent = TextFrame
            FrameBox.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            FrameBox.BorderSizePixel = 0
            FrameBox.Position = UDim2.new(0.5, 0, 0.65, 0)
            FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
            FrameBox.Size = UDim2.new(0, 158, 0, 30)
            FrameBox.BackgroundTransparency  = 0.2
            FrameBox.ClipsDescendants = true
            FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)

            local TextFrame2 = Instance.new("TextBox")

            TextFrame2.Parent = FrameBox
            TextFrame2.BackgroundColor3 = getgenv().Color
            TextFrame2.BorderSizePixel = 0
            TextFrame2.ClipsDescendants = true
            TextFrame2.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
            TextFrame2.Size = UDim2.new(0, 158, 0, 35)
            TextFrame2.Font = Enum.Font.GothamBold
            TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
            TextFrame2.PlaceholderText = text2
            TextFrame2.Text = ""
            TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextFrame2.TextSize = 12.000
            TextFrame2.BackgroundTransparency = 1

            local ConerTextBox2 = Instance.new("UICorner")

            ConerTextBox2.CornerRadius = UDim.new(0, 4)
            ConerTextBox2.Name = ""
            ConerTextBox2.Parent = FrameBox

            local TextBoxStroke = Instance.new("UIStroke")

            TextBoxStroke.Thickness = 1
            TextBoxStroke.Name = ""
            TextBoxStroke.Parent = FrameBox
            TextBoxStroke.LineJoinMode = Enum.LineJoinMode.Round
            TextBoxStroke.Color = getgenv().Color
            TextBoxStroke.Transparency = 0.7


            TextFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    FrameBox,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    FrameBox,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextFrame2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextFrame2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelNameSliderxd,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextBoxStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Thickness = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        TextFrame.MouseLeave:Connect(function()
            TweenService:Create(
                FrameBox,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 158, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                FrameBox,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 = Color3.fromRGB(23, 23, 23)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextFrame2,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextBoxStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Thickness = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                LabelNameSliderxd,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextFrame2,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
        )
            TextFrame2.FocusLost:Connect(function ()
                if #TextFrame2.Text > 0 then
                    pcall(callback,TextFrame2.Text)
                end
            end)
        end

        function Main1s:Bind(text,bi,callback)
            local BindFrame = Instance.new("Frame")

            BindFrame.Name = "BindFrame"
            BindFrame.Parent = ScrollingFrame_Pageframe
            BindFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            BindFrame.BorderSizePixel = 0
            BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            BindFrame.Size = UDim2.new(0, 213, 0, 35)
            BindFrame.BackgroundTransparency  = 0
            BindFrame.ClipsDescendants = true

            local BindConner = Instance.new("UICorner")

            BindConner.CornerRadius = UDim.new(0, 4)
            BindConner.Name = ""
            BindConner.Parent = BindFrame

            local BindStroke = Instance.new("UIStroke")

            BindStroke.Thickness = 1
            BindStroke.Name = ""
            BindStroke.Parent = BindFrame
            BindStroke.LineJoinMode = Enum.LineJoinMode.Round
            BindStroke.Color = getgenv().Color
            BindStroke.Transparency = 0.7

            local LabelBind = Instance.new("TextLabel")

            LabelBind.Parent = BindFrame
            LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind.BackgroundTransparency = 1
            LabelBind.BorderSizePixel = 0
            LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
            LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelBind.Size = UDim2.new(0, 140, 0, 35)
            LabelBind.Font = Enum.Font.GothamBold
            LabelBind.Text = tostring(text)
            LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind.TextSize = 11.000
            LabelBind.TextXAlignment = Enum.TextXAlignment.Left

            local key = bi.Name
            local LabelBind2 = Instance.new("TextButton")

            LabelBind2.Parent = BindFrame
            LabelBind2.Name = "LabelBind2"
            LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind2.Size = UDim2.new(0, 100, 0, 19)
            LabelBind2.Font = Enum.Font.GothamBold
            LabelBind2.Text =  "KEY : "..key
            LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind2.TextSize = 11.000
            LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelBind2.Position = UDim2.new(0.75, 0, 0.5, 0)
            LabelBind2.TextXAlignment = Enum.TextXAlignment.Center
            LabelBind2.BackgroundTransparency = 1
            LabelBind2.TextWrapped = true

            local LabelBind22 = Instance.new("TextButton")

            LabelBind22.Parent = BindFrame
            LabelBind22.Name = "LabelBind22"
            LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind22.Size = UDim2.new(0, 213, 0, 35)
            LabelBind22.Font = Enum.Font.GothamBold
            LabelBind22.Text =  ""
            LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind22.TextSize = 11.000
            LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
            LabelBind22.BackgroundTransparency = 1
            LabelBind22.TextWrapped = true

            BindFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    BindStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind22,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )
            BindFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    BindStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind22,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            LabelBind22.MouseButton1Click:Connect(function ()


                LabelBind2.Text = "KEY : ".."..."
                local inputwait = game:GetService("UserInputService").InputBegan:wait()
                local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

                if
                fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
                then
                    LabelBind2.Text =  "KEY : "..fuckulop.Name
                    key = fuckulop.Name
                end
                -- if fuckulop.Name ~= "Unknown" then
                --     LabelBind2.Text = fuckulop.Name
                --     key = fuckulop.Name
                -- end

            end)


            game:GetService("UserInputService").InputBegan:connect(
                function(current)
                    local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

                        if fuckulop2.Name ==  key then
                            pcall(callback)

                    end
                end
                )

        end

        function Main1s:Line()
            local LineFrame = Instance.new("Frame")

            LineFrame.Name = "LineFrame"
            LineFrame.Parent = ScrollingFrame_Pageframe
            LineFrame.BackgroundColor3 =  getgenv().Color
            LineFrame.BorderSizePixel = 0
            LineFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            LineFrame.Size = UDim2.new(0, 213, 0, 1)
            LineFrame.BackgroundTransparency  = 0
            LineFrame.ClipsDescendants = true

            local LineFrame_BindConner = Instance.new("UICorner")

            LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
            LineFrame_BindConner.Name = ""
            LineFrame_BindConner.Parent = LineFrame

        end

        function Main1s:Color(text,preset,callback)
            local Pixker = Instance.new("Frame")

            Pixker.Name = "Pixker"
            Pixker.Parent = ScrollingFrame_Pageframe
            Pixker.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            Pixker.Size = UDim2.new(0, 213, 0, 33)
            Pixker.BackgroundTransparency = 0
            Pixker.BorderSizePixel = 0
            Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
            Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
            Pixker.ClipsDescendants = true


            local BoxColorCorner2 = Instance.new("UICorner")

            BoxColorCorner2.CornerRadius = UDim.new(0, 4)
            BoxColorCorner2.Name = "BoxColorCorner"
            BoxColorCorner2.Parent = Pixker

            local MheeFrameStroke = Instance.new("UIStroke")

            MheeFrameStroke.Thickness = 1
            MheeFrameStroke.Name = ""
            MheeFrameStroke.Parent = Pixker
            MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            MheeFrameStroke.Color = getgenv().Color
            MheeFrameStroke.Transparency = 0.7


            local TextFrameColor = Instance.new("TextLabel")

            TextFrameColor.Parent = Pixker
            TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextFrameColor.BorderSizePixel = 0
            TextFrameColor.Size = UDim2.new(0, 200, 0, 34)
            TextFrameColor.Font = Enum.Font.SourceSans
            TextFrameColor.Text = "  "
            TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextFrameColor.TextSize = 14.000
            TextFrameColor.BackgroundTransparency = 1
            TextFrameColor.Position = UDim2.new(0., 0, 0., 0)

            local TextReal = Instance.new("TextLabel")

            TextReal.Parent = TextFrameColor
            TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextReal.BorderSizePixel = 0
            TextReal.Size = UDim2.new(0, 140, 0, 34)
            TextReal.Font = Enum.Font.GothamBold
            TextReal.Text = text
            TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
            TextReal.TextSize = 12.000
            TextReal.BackgroundTransparency = 1
            TextReal.Position = UDim2.new(0.05, 0, 0., 0)
            TextReal.TextXAlignment = Enum.TextXAlignment.Left

            local BoxColor = Instance.new("Frame")

            BoxColor.Name = "BoxColor"
            BoxColor.Parent = TextFrameColor
            BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BoxColor.Position = UDim2.new(0.85, 0, 0.5, 0)
            BoxColor.Size = UDim2.new(0, 35, 0, 19)
            BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

            local BoxColorCorner = Instance.new("UICorner")

            BoxColorCorner.CornerRadius = UDim.new(0, 4)
            BoxColorCorner.Name = "BoxColorCorner"
            BoxColorCorner.Parent = BoxColor

            local TextButton_Dropdown = Instance.new("TextButton")


            TextButton_Dropdown.Parent = TextFrameColor
            TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            TextButton_Dropdown.BorderSizePixel = 0
            TextButton_Dropdown.Position = UDim2.new(0., 0, 0.14705883, 0)
            TextButton_Dropdown.Size = UDim2.new(0, 200, 0, 33)
            TextButton_Dropdown.Font = Enum.Font.SourceSans
            TextButton_Dropdown.Text = "  "
            TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Dropdown.TextSize = 14.000
            TextButton_Dropdown.AutoButtonColor = false
            --TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
            TextButton_Dropdown.BackgroundTransparency = 1



            Pixker.MouseEnter:Connect(function()
                TweenService:Create(
                    MheeFrameStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.}
                ):Play()
                TweenService:Create(
                    TextReal,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255,255, 255)}
                ):Play()

            end)
            Pixker.MouseLeave:Connect(function()
                TweenService:Create(
                    MheeFrameStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7}
                ):Play()
                TweenService:Create(
                    TextReal,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155,155, 155)}
                ):Play()
            end)
        -- Rainbow Toggle


        local TextButton_2_Toggle = Instance.new("TextButton")

        TextButton_2_Toggle.Parent = TextFrameColor
        TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
--        TextButton_2_Toggle.BorderColor3 = getgenv().Color
        TextButton_2_Toggle.BorderSizePixel = 0
        TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_2_Toggle.Position = UDim2.new(0.2, 0, 1.87, 0)
        TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
        TextButton_2_Toggle.Font = Enum.Font.SourceSans
        TextButton_2_Toggle.Text = " "
        TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle.TextSize = 12.000
        TextButton_2_Toggle.AutoButtonColor = false

        local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner.Name = ""
        TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

        local TextButton_3_Toggle = Instance.new("TextButton")

        TextButton_3_Toggle.Parent = TextButton_2_Toggle
        TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
--        TextButton_3_Toggle.BorderColor3 = getgenv().Color
        TextButton_3_Toggle.BorderSizePixel = 0
        TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
        TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
        TextButton_3_Toggle.Font = Enum.Font.SourceSans
        TextButton_3_Toggle.Text = " "
        TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_3_Toggle.TextSize = 12.000
        TextButton_3_Toggle.AutoButtonColor = false

        local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner2.Name = ""
        TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

        local TextButton_4_Toggle = Instance.new("TextButton")

        TextButton_4_Toggle.Parent = TextButton_3_Toggle
        TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
--        TextButton_3_Toggle.BorderColor3 = getgenv().Color
        TextButton_4_Toggle.BorderSizePixel = 0
        TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
        TextButton_4_Toggle.Font = Enum.Font.SourceSans
        TextButton_4_Toggle.Text = " "
        TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_4_Toggle.TextSize = 12.000
        TextButton_4_Toggle.AutoButtonColor = false
        TextButton_4_Toggle.BackgroundTransparency = 1
        TextButton_4_Toggle.Visible = true

        local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner4.Name = ""
        TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


        local TextButton_Toggle = Instance.new("TextButton")

        TextButton_Toggle.Parent = ValueFrame
        TextButton_Toggle.BackgroundTransparency =1
        TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Toggle.BorderSizePixel = 0
        TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
        TextButton_Toggle.AutoButtonColor = false
        TextButton_Toggle.Font = Enum.Font.SourceSans
        TextButton_Toggle.Text = " "
        TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_Toggle.TextSize = 12.000
        TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

        local TextButton_3_Toggle2 = Instance.new("TextLabel")

        TextButton_3_Toggle2.Parent = TextButton_2_Toggle
        TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
        TextButton_3_Toggle2.BorderColor3 = getgenv().Color
        TextButton_3_Toggle2.BorderSizePixel = 0
        TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_3_Toggle2.Position = UDim2.new(1.9, 0, 0.5, 0)
        TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
        TextButton_3_Toggle2.Font = Enum.Font.SourceSansBold
        TextButton_3_Toggle2.Text = "Rainbow"
        TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3_Toggle2.TextSize = 13.000
        TextButton_3_Toggle2.BackgroundTransparency = 1

        local OMF = Instance.new("TextButton")

        OMF.Parent = TextButton_2_Toggle
        OMF.BackgroundTransparency =1
        OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OMF.BorderSizePixel = 0
        OMF.Size = UDim2.new(0, 100, 0, 20)
        OMF.AutoButtonColor = false
        OMF.Font = Enum.Font.SourceSans
        OMF.Text = " "
        OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
        OMF.TextSize = 12.000
        OMF.AnchorPoint = Vector2.new(0.5, 0.5)
        OMF.Position = UDim2.new(1.3, 0, 0.5, 0)

        local Color =  Instance.new("ImageLabel")

        Color.Name = "Color"
        Color.Parent = TextFrameColor
        Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
        Color.Position = UDim2.new(0.05,0,4,0)
        Color.Size = UDim2.new(0, 195, 0, 40)
        Color.ZIndex = 0
        Color.BorderSizePixel = 0
        Color.Image = "rbxassetid://4155801252"

        local ColorFucj = Instance.new("UICorner")

        ColorFucj.CornerRadius = UDim.new(0, 4)
        ColorFucj.Name = ""
        ColorFucj.Parent = Color

        local ColorSelection =  Instance.new("ImageLabel")

        ColorSelection.Name = "ColorSelection"
        ColorSelection.Parent = Color
        ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
        ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ColorSelection.BackgroundTransparency = 1.000
        ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        ColorSelection.Size = UDim2.new(0, 18, 0, 18)
        ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        ColorSelection.ScaleType = Enum.ScaleType.Fit
        ColorSelection.Visible = true

        local Hue =  Instance.new("ImageLabel")

        Hue.Name = "Hue2"
        Hue.Parent = TextFrameColor
        Hue.Position = UDim2.new(0.14,0,3,0)
        Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hue.Size = UDim2.new(0, 160, 0, 25)
        Hue.ZIndex = 0
        Hue.BorderSizePixel = 0

        local ColorFucj2 = Instance.new("UICorner")

        ColorFucj2.CornerRadius = UDim.new(0, 4)
        ColorFucj2.Name = ""
        ColorFucj2.Parent = Hue

        local HueGradient = Instance.new("UIGradient")

        HueGradient.Color = ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
            ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
            ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
            ColorSequenceKeypoint.new(0.60, getgenv().Color),
            ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
            ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
        }
        HueGradient.Rotation = 0
        HueGradient.Name = "HueGradient"
        HueGradient.Parent = Hue

        local HueSelection =  Instance.new("ImageLabel")

        HueSelection.Name = "HueSelection"
        HueSelection.Parent = Hue
        HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
        HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        HueSelection.BackgroundTransparency = 1.000
        HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        HueSelection.Size = UDim2.new(0, 18, 0, 18)
        HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        HueSelection.ScaleType = Enum.ScaleType.Fit
        HueSelection.Visible = true


        local BTN_XD = Instance.new("TextButton")

        BTN_XD.Parent = TextFrameColor
        BTN_XD.BackgroundColor3 = getgenv().Color
        BTN_XD.BorderColor3 = getgenv().Color
        BTN_XD.BorderSizePixel = 0
        BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
        BTN_XD.Position = UDim2.new(0.8, 0, 1.9, 0)
        BTN_XD.Size = UDim2.new(0, 50, 0, 25)
        BTN_XD.Font = Enum.Font.GothamBold
        BTN_XD.Text = "Confirm"
        BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
        BTN_XD.TextSize = 11.000
        BTN_XD.AutoButtonColor = false

        local BTN_XD_COnner = Instance.new("UICorner")

        BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
        BTN_XD_COnner.Name = ""
        BTN_XD_COnner.Parent = BTN_XD



        local MheeFrameStroke = Instance.new("UIStroke")

        MheeFrameStroke.Thickness = 1
        MheeFrameStroke.Name = ""
        MheeFrameStroke.Parent = BTN_XD
        MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
        MheeFrameStroke.Color = getgenv().Color
        MheeFrameStroke.Transparency = 0.7


        local UwU = false


        OMF.MouseButton1Click:Connect(function()
            if       UwU == false  then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  getgenv().Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            else
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            end
            UwU = not UwU
        end
    )


    OMF.MouseEnter:Connect(function()
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    OMF.MouseLeave:Connect(function()
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    OMF.MouseButton1Down:Connect(
            function()
                RainbowColorPicker = not RainbowColorPicker

                if ColorInput then
                    ColorInput:Disconnect()
                end

                if HueInput then
                    HueInput:Disconnect()
                end

                if RainbowColorPicker then


                    OldToggleColor = BoxColor.BackgroundColor3
                    OldColor = Color.BackgroundColor3
                    OldColorSelectionPosition = ColorSelection.Position
                    OldHueSelectionPosition = HueSelection.Position

                    while RainbowColorPicker do
                        BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                        Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

                        ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                        HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

                        pcall(callback, BoxColor.BackgroundColor3)
                        wait()
                    end
                elseif not RainbowColorPicker then

                    BoxColor.BackgroundColor3 = OldToggleColor
                    Color.BackgroundColor3 = OldColor

                    ColorSelection.Position = OldColorSelectionPosition
                    HueSelection.Position = OldHueSelectionPosition

                    pcall(callback, BoxColor.BackgroundColor3)
                end
            end
        )
        TextButton_3_Toggle.MouseButton1Down:Connect(
            function()
                RainbowColorPicker = not RainbowColorPicker

                if ColorInput then
                    ColorInput:Disconnect()
                end

                if HueInput then
                    HueInput:Disconnect()
                end

                if RainbowColorPicker then


                    OldToggleColor = BoxColor.BackgroundColor3
                    OldColor = Color.BackgroundColor3
                    OldColorSelectionPosition = ColorSelection.Position
                    OldHueSelectionPosition = HueSelection.Position

                    while RainbowColorPicker do
                        BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                        Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

                        ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                        HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

                        pcall(callback, BoxColor.BackgroundColor3)
                        wait()
                    end
                elseif not RainbowColorPicker then

                    BoxColor.BackgroundColor3 = OldToggleColor
                    Color.BackgroundColor3 = OldColor

                    ColorSelection.Position = OldColorSelectionPosition
                    HueSelection.Position = OldHueSelectionPosition

                    pcall(callback, BoxColor.BackgroundColor3)
                end
            end
        )


        local function UpdateColorPicker(nope)
            BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
            Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

            pcall(callback, BoxColor.BackgroundColor3)
        end
        ColorH =
        1 -
        (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
            Hue.AbsoluteSize.Y)
        ColorS =
            (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                Color.AbsoluteSize.X)
        ColorV =
            1 -
            (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                Color.AbsoluteSize.Y)

        BoxColor.BackgroundColor3 = preset
        Color.BackgroundColor3 = preset
        pcall(callback, BoxColor.BackgroundColor3)

        local RainbowColorPicker = false

        Color.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    if RainbowColorPicker then
                        return
                    end

                    if ColorInput then
                        ColorInput:Disconnect()
                    end

                    ColorInput =
                        RunService.RenderStepped:Connect(
                            function()
                            local ColorX =
                                (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                    Color.AbsoluteSize.X)
                            local ColorY =
                                (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                    Color.AbsoluteSize.Y)

                            ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                            ColorS = ColorX
                            ColorV = 1 - ColorY

                            UpdateColorPicker(true)
                        end
                        )
                end
            end
        )


            Color.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
                    end
                end
            )

            Hue.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if HueInput then
                            HueInput:Disconnect()
                        end

                        HueInput =
                            RunService.RenderStepped:Connect(
                                function()
                                local HueY =
                                    (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                        Hue.AbsoluteSize.Y)
                                local HueX =
                                    (math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
                                        Hue.AbsoluteSize.X)

                                HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
                                ColorH = 1 - HueY

                                UpdateColorPicker(true)
                            end
                            )
                    end
                end
            )

            Hue.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if HueInput then
                            HueInput:Disconnect()
                        end
                    end
                end
            )
            local sk = false
            TextButton_Dropdown.MouseButton1Click:Connect(function()
                if sk == false then
                TweenService:Create(
                    Pixker,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 180)}
                ):Play()
            else
                TweenService:Create(
                    Pixker,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 33)}
                ):Play()
            end
            sk = not sk
            end
        )
            BTN_XD.MouseButton1Click:Connect(
                function()
                    TweenService:Create(
                        Pixker,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, 33)}
                    ):Play()
                    sk = not sk
                end
            )


        end
        function Main1s:Label(text,image)
            if image == nil then
                image = logo
            end
            local labaelchange = {}
            local LabelFrame = Instance.new("Frame")


            LabelFrame.Name = "Mainframenoti"
            LabelFrame.Parent = ScrollingFrame_Pageframe
            LabelFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            LabelFrame.BackgroundTransparency = 0
            LabelFrame.BorderSizePixel = 0
            LabelFrame.ClipsDescendants = false
            LabelFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
            LabelFrame.Size = UDim2.new(0, 213, 0, 28)

            local LabelFarm2 = Instance.new("TextLabel")

            LabelFarm2.Parent = LabelFrame
            LabelFarm2.Name = "TextLabel_Tap"
            LabelFarm2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            LabelFarm2.Size =UDim2.new(0, 130, 0,24 )
            LabelFarm2.Font = Enum.Font.GothamBold
            LabelFarm2.Text = text
            LabelFarm2.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelFarm2.TextSize = 12.000
            LabelFarm2.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelFarm2.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelFarm2.TextXAlignment = Enum.TextXAlignment.Center
            LabelFarm2.BackgroundTransparency = 1
            LabelFarm2.TextWrapped = true

            local ImageLabel_gx = Instance.new("ImageLabel")

            ImageLabel_gx.Parent = LabelFrame
            ImageLabel_gx.BackgroundTransparency = 1.000
            ImageLabel_gx.BorderSizePixel = 0
            ImageLabel_gx.Size = UDim2.new(0, 18, 0, 18)
            ImageLabel_gx.AnchorPoint = Vector2.new(0.5, 0.5)
            ImageLabel_gx.Position = UDim2.new(0.06, 0, 0.48, 0)
            ImageLabel_gx.Image = "http://www.roblox.com/asset/?id="..tostring(image)
            ImageLabel_gx.BackgroundTransparency = 1

            local noticore55 = Instance.new("UICorner")

            noticore55.CornerRadius = UDim.new(0, 4)
            noticore55.Name = ""
            noticore55.Parent = LabelFarm2

            local noticore2777 = Instance.new("UICorner")

            noticore2777.CornerRadius = UDim.new(0, 4)
            noticore2777.Name = ""
            noticore2777.Parent = LabelFrame

            local LabelStroke = Instance.new("UIStroke")

            LabelStroke.Thickness = 1
            LabelStroke.Name = ""
            LabelStroke.Parent = LabelFrame
            LabelStroke.LineJoinMode = Enum.LineJoinMode.Round
            LabelStroke.Color = getgenv().Color
            LabelStroke.Transparency = 0.7

            LabelFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    LabelStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency =0}
                ):Play()
            end
        )
            LabelFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    LabelStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency =0.7}
                ):Play()
            end
        )
            local funclabel = {}

            function funclabel:Set(newtext)
                LabelFarm2.Text = newtext
            end
            return  funclabel
        end
        return  Main1s
        end
    return  page
    end
return top
end


    if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end
    
    function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit [Lv. 5]"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey [Lv. 14]"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla [Lv. 20]"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 30 or MyLevel <= 39 then
                Mon = "Pirate [Lv. 35]"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute [Lv. 45]"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit [Lv. 60]"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer [Lv. 70]"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit [Lv. 90]"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman [Lv. 100]"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer [Lv. 120]"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit [Lv. 150]"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master [Lv. 175]"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner [Lv. 190]"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5311.1884765625, 11.345396041870117, 482.6448059082031)
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner [Lv. 210]"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5311.1884765625, 11.345396041870117, 482.6448059082031)
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior [Lv. 250]"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator [Lv. 275]"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier [Lv. 300]"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy [Lv. 325]"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior [Lv. 375]"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando [Lv. 400]"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard [Lv. 450]"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda [Lv. 475]"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad [Lv. 525]"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier [Lv. 550]"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate [Lv. 625]"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain [Lv. 650]"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider [Lv. 700]"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary [Lv. 725]"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate [Lv. 775]"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff [Lv. 800]"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant [Lv. 875]"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain [Lv. 900]"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie [Lv. 950]"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire [Lv. 975]"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper [Lv. 1000]"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior [Lv. 1050]"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate [Lv. 1100]"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior [Lv. 1125]"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja [Lv. 1175]"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate [Lv. 1200]"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand [Lv. 1250]"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer [Lv. 1275]"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward [Lv. 1300]"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer [Lv. 1325]"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior [Lv. 1350]"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker [Lv. 1375]"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier [Lv. 1425]"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter [Lv. 1450]"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire [Lv. 1500]"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire [Lv. 1525]"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior [Lv. 1575]"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer [Lv. 1600]"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander [Lv. 1625]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander [Lv. 1650]"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore [Lv. 1700]"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral [Lv. 1725]"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider [Lv. 1775]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain [Lv. 1800]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate [Lv. 1825]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate [Lv. 1850]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate [Lv. 1900]"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate [Lv. 1925]"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton [Lv. 1975]"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie [Lv. 2000]"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul [Lv. 2025]"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                Mon = "Posessed Mummy [Lv. 2050]"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout [Lv. 2075]"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President [Lv. 2100]"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef [Lv. 2125]"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander [Lv. 2150]"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter [Lv. 2200]"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard [Lv. 2225]"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff [Lv. 2250]"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker [Lv. 2275]"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior [Lv. 2300]" 
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler [Lv. 2325]"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief [Lv. 2350]"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
            elseif MyLevel >= 2375 then
                Mon = "Candy Rebel [Lv. 2375]"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
            end
        end
    end
    
    function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait(tonumber(Num))
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end                   
    
    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function UpdateEspPlayer()
        if ESPPlayer then
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if not isnil(v.Character) then
                    if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                        local BillboardGui = Instance.new("BillboardGui")
                        local ESP = Instance.new("TextLabel")
                        local HealthESP = Instance.new("TextLabel")
                        BillboardGui.Parent = v.Character.Head
                        BillboardGui.Name = 'NameEsp'..v.Name
                        BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        BillboardGui.Size = UDim2.new(1,200,1,30)
                        BillboardGui.Adornee = v.Character.Head
                        BillboardGui.AlwaysOnTop = true
                        ESP.Name = "ESP"
                        ESP.Parent = BillboardGui
                        ESP.TextTransparency = 0
                        ESP.BackgroundTransparency = 1
                        ESP.Size = UDim2.new(0, 200, 0, 30)
                        ESP.Position = UDim2.new(0,25,0,0)
                        ESP.Font = Enum.Font.Gotham
                        ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
                        if v.Team == game:GetService("Players").LocalPlayer.Team then
                            ESP.TextColor3 = Color3.new(0, 255, 255)
                        else
                            ESP.TextColor3 = Color3.new(0,255,255)
                        end
                        ESP.TextSize = 14
                        ESP.TextStrokeTransparency = 0.500
                        ESP.TextWrapped = true
                        HealthESP.Name = "HealthESP"
                        HealthESP.Parent = ESP
                        HealthESP.TextTransparency = 0
                        HealthESP.BackgroundTransparency = 1
                        HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
                        HealthESP.Size = UDim2.new(0, 200, 0, 30)
                        HealthESP.Font = Enum.Font.Gotham
                        HealthESP.TextColor3 = Color3.fromRGB(0,255,255)
                        HealthESP.TextSize = 14
                        HealthESP.TextStrokeTransparency = 0.500
                        HealthESP.TextWrapped = true
                        HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                    else
                        v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                        v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
                    end
                end
            end
        else
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
                end
            end
        end     
    end
    
    function UpdateIslandESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if IslandESP then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function UpdateChestEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if string.find(v.Name,"Chest") then
                    if ChestESP then
                        if string.find(v.Name,"Chest") then
                            if not v:FindFirstChild('NameEsp'..Number) then
                                local bill = Instance.new('BillboardGui',v)
                                bill.Name = 'NameEsp'..Number
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "GothamBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                name.TextColor3 = Color3.fromRGB(0, 255, 250)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        if v.Name == "Chest3" then
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        else
                            v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
                end
            end)
        end
    end
    
    function UpdateBfEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if DevilFruitESP then
                    if string.find(v.Name, "Fruit") then   
                        if not v.Handle:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v.Handle)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(0,255,255)
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        else
                            v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp'..Number) then
                        v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                end
            end)
        end
    end
    
    function UpdateFlowerEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if FlowerESP then 
                        if not v:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(80,80,80)(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(0,255,255)
                        if v.Name == "Flower1" then 
                            name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(0,255,255)
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                    else
                        if v:FindFirstChild('NameEsp'..Number) then
                            v:FindFirstChild('NameEsp'..Number):Destroy()
                        end
                    end
                end   
            end)
        end
    end
    
    function InfAb()
        if InfAbility then
            if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                local inf = Instance.new("ParticleEmitter")
                inf.Acceleration = Vector3.new(0,0,0)
                inf.Archivable = true
                inf.Drag = 20
                inf.EmissionDirection = Enum.NormalId.Top
                inf.Enabled = true
                inf.Lifetime = NumberRange.new(0.2,0.2)
                inf.LightInfluence = 0
                inf.LockedToPart = true
                inf.Name = "Agility"
                inf.Rate = 500
                local numberKeypoints2 = {
                    NumberSequenceKeypoint.new(0, 0);
                    NumberSequenceKeypoint.new(1, 4); 
                }
                inf.Size = NumberSequence.new(numberKeypoints2)
                inf.RotSpeed = NumberRange.new(999, 9999)
                inf.Rotation = NumberRange.new(0, 0)
                inf.Speed = NumberRange.new(30, 30)
                inf.SpreadAngle = Vector2.new(360,360)
                inf.Texture = "rbxassetid://7157487174"
                inf.VelocityInheritance = 0
                inf.ZOffset = 2
                inf.Transparency = NumberSequence.new(0)
                inf.Color = ColorSequence.new(Color3.fromRGB(80,245,245),Color3.fromRGB(80,245,245))
                inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            end
        else
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
            end
        end
    end
    
    local LocalPlayer = game:GetService'Players'.LocalPlayer
    local originalstam = LocalPlayer.Character.Energy.Value
    function infinitestam()
        LocalPlayer.Character.Energy.Changed:connect(function()
            if InfiniteEnergy then
                LocalPlayer.Character.Energy.Value = originalstam
            end 
        end)
    end
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if InfiniteEnergy then
                    wait(0.3)
                    originalstam = LocalPlayer.Character.Energy.Value
                    infinitestam()
                end
            end
        end)
    end)
    
    function NoDodgeCool()
        if nododgecool then
            for i,v in next, getgc() do
                if game:GetService("Players").LocalPlayer.Character.Dodge then
                    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                        for i2,v2 in next, getupvalues(v) do
                            if tostring(v2) == "0.4" then
                            repeat wait(.1)
                                setupvalue(v,i2,0)
                            until not nododgecool
                            end
                        end
                    end
                end
            end
        end
    end
    
    function fly()
        local mouse=game:GetService("Players").LocalPlayer:GetMouse''
        localplayer=game:GetService("Players").LocalPlayer
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        local speedSET=25
        local keys={a=false,d=false,w=false,s=false}
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition",torso)
            local gyro = Instance.new("BodyGyro",torso)
            pos.Name="EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.CFrame = torso.CFrame
            repeat
                    wait()
                    localplayer.Character.Humanoid.PlatformStand=true
                    local new=gyro.CFrame - gyro.CFrame.p + pos.position
                    if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed=1
                    end
                    if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed=speed+speedSET
                    end
                    if keys.d then
                    new = new * CFrame.new(speed,0,0)
                    speed=speed+speedSET
                    end
                    if keys.a then
                    new = new * CFrame.new(-speed,0,0)
                    speed=speed+speedSET
                    end
                    if speed>speedSET then
                    speed=speedSET
                    end
                    pos.position=new.p
                    if keys.w then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                    elseif keys.s then
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                    else
                    gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                    end
            until not Fly
            if gyro then 
                    gyro:Destroy() 
            end
            if pos then 
                    pos:Destroy() 
            end
            flying=false
            localplayer.Character.Humanoid.PlatformStand=false
            speed=0
        end
        e1=mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then 
                    flying=false e1:disconnect() e2:disconnect() return 
            end
            if key=="w" then
                keys.w=true
            elseif key=="s" then
                keys.s=true
            elseif key=="a" then
                keys.a=true
            elseif key=="d" then
                keys.d=true
            end
        end)
        e2=mouse.KeyUp:connect(function(key)
            if key=="w" then
                keys.w=false
            elseif key=="s" then
                keys.s=false
            elseif key=="a" then
                keys.a=false
            elseif key=="d" then
                keys.d=false
            end
        end)
        start()
    end
    
    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    
    spawn(function()
        RunService.RenderStepped:Connect(function()
            if getgenv().Click then
                pcall(function()
                    game:GetService'VirtualUser':CaptureController()
                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                end)
            end
        end)
    end)

    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            getgenv().NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            getgenv().NotAutoEquip = false
        end
    end
    
    function EquipWeapon(ToolSe)
        if not getgenv().NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end

    function topos(Pos)
        local xTweenPosition = {}
        local Tween_Service = game:service"TweenService"
        local TweenPosition = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Magnitude=TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position-Pos.Position).Magnitude/365,Enum.EasingStyle.Linear)
        function xTweenPosition:Stop()
                tween:Cancel()
                return tween
        end
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        if TweenPosition <=  350 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        local tween,error= pcall(function()
              tween=Tween_Service:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"],Magnitude,{CFrame=Pos})
              tween:Play() 
        end)
        if not tween then return error end
        return xTweenPosition
        end

    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function TP(Pos)
        Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 150 then
            Speed = 300
        elseif Distance < 250 then
            Speed = 150
        elseif Distance >= 1000 then
            Speed = 150
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Quad),
            {CFrame = Pos}
        ):Play()
        getgenv().Clip = true
        wait(Distance/Speed)
        getgenv().Clip = false
    end
    
    spawn(function()
        while wait() do     
            pcall(function()           
                if getgenv().AutoAdvanceDungeon or getgenv().AutoDoughtBoss or getgenv().Auto_DungeonMobAura or getgenv().AutoFarmChest or getgenv().AutoFarmBossHallow or getgenv().AutoFarmSwanGlasses or getgenv().AutoLongSword or getgenv().AutoBlackSpikeycoat or getgenv().AutoElectricClaw or getgenv().AutoFarmGunMastery or getgenv().AutoHolyTorch or getgenv().AutoLawRaid or getgenv().AutoFarmBoss or getgenv().AutoTwinHooks or getgenv().AutoOpenSwanDoor or getgenv().AutoDragon_Trident or getgenv().AutoSaber or getgenv().AutoFarmFruitMastery or getgenv().AutoFarmGunMastery or getgenv().TeleportIsland or getgenv().Auto_EvoRace or getgenv().AutoFarmAllMsBypassType or getgenv().AutoObservationv2 or getgenv().AutoMusketeerHat or getgenv().AutoEctoplasm or getgenv().AutoRengoku or getgenv().Auto_Rainbow_Haki or getgenv().AutoObservation or getgenv().AutoDarkDagger or getgenv().Safe_Mode or getgenv().MasteryFruit or getgenv().AutoBudySword or getgenv().AutoBounty or getgenv().AutoAllBoss or getgenv().Auto_Bounty or getgenv().AutoSharkman or getgenv().Auto_Mastery_Fruit or getgenv().Auto_Mastery_Gun or getgenv().Auto_Dungeon or getgenv().Auto_Cavender or getgenv().Auto_Pole or getgenv().Auto_Kill_Ply or getgenv().Auto_Factory or getgenv().AutoSecondSea or getgenv().TeleportPly or getgenv().AutoBartilo or getgenv().Auto_DarkBoss or getgenv().GrabChest or getgenv().AutoFarmBounty or getgenv().Holy_Torch or getgenv().AutoFarm or getgenv().Clip or FarmBoss or getgenv().AutoElitehunter or getgenv().AutoThirdSea or getgenv().Auto_Bone or getgenv().Auto_Cocoa or getgenv().CavenF or getgenv().Chanee or getgenv().Law or getgenv().DarkDagger == true then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                        workspace.Gravity = 0
                    end
                else
                    workspace.Gravity = 240                       
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.BodyClip:Destroy()
                end
            end)
        end
    end)
    
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if getgenv().AutoAdvanceDungeon or getgenv().AutoDoughtBoss or getgenv().Auto_DungeonMobAura or getgenv().AutoFarmChest or getgenv().AutoFarmBossHallow or getgenv().AutoFarmSwanGlasses or getgenv().AutoLongSword or getgenv().AutoBlackSpikeycoat or getgenv().AutoElectricClaw or getgenv().AutoFarmGunMastery or getgenv().AutoHolyTorch or getgenv().AutoLawRaid or getgenv().AutoFarmBoss or getgenv().AutoTwinHooks or getgenv().AutoOpenSwanDoor or getgenv().AutoDragon_Trident or getgenv().AutoSaber or getgenv().NOCLIP or getgenv().AutoFarmFruitMastery or getgenv().AutoFarmGunMastery or getgenv().TeleportIsland or getgenv().Auto_EvoRace or getgenv().AutoFarmAllMsBypassType or getgenv().AutoObservationv2 or getgenv().AutoMusketeerHat or getgenv().AutoEctoplasm or getgenv().AutoRengoku or getgenv().Auto_Rainbow_Haki or getgenv().AutoObservation or getgenv().AutoDarkDagger or getgenv().Safe_Mode or getgenv().MasteryFruit or getgenv().AutoBudySword or getgenv().AutoBounty or getgenv().AutoAllBoss or getgenv().Auto_Bounty or getgenv().AutoSharkman or getgenv().Auto_Mastery_Fruit or getgenv().Auto_Mastery_Gun or getgenv().Auto_Dungeon or getgenv().Auto_Cavender or getgenv().Auto_Pole or getgenv().Auto_Kill_Ply or getgenv().Auto_Factory or getgenv().AutoSecondSea or getgenv().TeleportPly or getgenv().AutoBartilo or getgenv().Auto_DarkBoss or getgenv().GrabChest or getgenv().AutoFarmBounty or getgenv().Holy_Torch or getgenv().AutoFarm or getgenv().Clip or getgenv().AutoElitehunter or getgenv().AutoThirdSea or getgenv().Auto_Bone or getgenv().Auto_Cocoa or getgenv().Chanee or getgenv().CavenF or getgenv().Law or getgenv().DarkDagger == true then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)
    
    spawn(function()
        while wait() do
            if getgenv().AutoDoughtBoss or getgenv().Auto_DungeonMobAura or getgenv().AutoFarmChest or getgenv().AutoFarmBossHallow or getgenv().AutoFarmSwanGlasses or getgenv().AutoLongSword or getgenv().AutoBlackSpikeycoat or getgenv().AutoElectricClaw or getgenv().AutoFarmGunMastery or getgenv().AutoHolyTorch or getgenv().AutoLawRaid or getgenv().AutoFarmBoss or getgenv().AutoTwinHooks or getgenv().AutoOpenSwanDoor or getgenv().AutoDragon_Trident or getgenv().AutoSaber or getgenv().NOCLIP or getgenv().AutoFarmFruitMastery or getgenv().AutoFarmGunMastery or getgenv().TeleportIsland or getgenv().Auto_EvoRace or getgenv().AutoFarmAllMsBypassType or getgenv().AutoObservationv2 or getgenv().AutoMusketeerHat or getgenv().AutoEctoplasm or getgenv().AutoRengoku or getgenv().Auto_Rainbow_Haki or getgenv().AutoObservation or getgenv().AutoDarkDagger or getgenv().Safe_Mode or getgenv().MasteryFruit or getgenv().AutoBudySword or getgenv().AutoAllBoss or getgenv().Auto_Bounty or getgenv().AutoSharkman or getgenv().Auto_Mastery_Fruit or getgenv().Auto_Mastery_Gun or getgenv().Auto_Dungeon or getgenv().Auto_Cavender or getgenv().Auto_Pole or getgenv().Auto_Kill_Ply or getgenv().Auto_Factory or getgenv().AutoSecondSea or getgenv().TeleportPly or getgenv().AutoBartilo or getgenv().Auto_DarkBoss or getgenv().AutoFarm or getgenv().Clip or getgenv().AutoElitehunter or getgenv().AutoThirdSea or getgenv().Auto_Bone or getgenv().Auto_Cocoa or getgenv().CavenF or getgenv().Chanee or getgenv().Law or getgenv().DarkDagger == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
        end
    end)
    
    function StopTween(target)
        if not target then
            getgenv().StopTween = true
            wait()
            topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            getgenv().StopTween = false
            getgenv().Clip = false
        end
    end
    
    spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    
local Window = create:Win("DaiNo ",10947338011)
local Main = Window:Taps("Main/Items")
local Misc = Window:Taps("Misc/Setting")
local Raids = Window:Taps("Raids/DevilFruits")
local tp = Window:Taps("Bounty/Tp")
local Ma = Window:Taps("Materials")

local mi1 = Misc:newpage()
local mi2 = Misc:newpage()

local Main1 = Main:newpage()
local Main2 = Main:newpage()

local Raid1 = Raids:newpage()
local Raid2 = Raids:newpage()

local tp1 = tp:newpage()
local tp2 = tp:newpage()

local m1 = Ma:newpage()
local m2 = Ma:newpage()

Main1:Line()
Main1:Label("AutoFarm",10947338011)
Main1:Toggle("Auto Farm",getgenv().AutoFarm,function(v)
    getgenv().AutoFarm = v
end)
spawn(function()
    while wait() do
        if getgenv().AutoFarm then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    or not getgenv().AutoFarm
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat wait()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CanCollide = true
                                            v.Humanoid.WalkSpeed = 20
                                            v.Head.CanCollide = true
                                            v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                            StartMagnet = true
                                            AutoHaki()
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        until not getgenv().AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        getgenv().Use = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        StartMagnet = false
                        getgenv().Use = false
                        if World1 then
                            Dis = 300
                            if MyLevel == 1 or MyLevel <= 9 then -- Bandit
                                magbring = 400
                                -- = "Bandit [Lv. 5]"
                                -- = "BanditQuest1"
                                -- = 1
                                -- = "Bandit"
                                -- = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859))
                                topos(CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331))
                            elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
                                magbring = 400
                                -- = "Monkey [Lv. 14]"
                                -- = "JungleQuest"
                                -- = 1
                                -- = "Monkey"
                                -- = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374))
                                topos(CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978))
                            elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
                                magbring = 240
                                -- = "Gorilla [Lv. 20]"
                                -- = "JungleQuest"
                                -- = 2
                                -- = "Gorilla"
                                -- = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374))
                                topos(CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147))
                            elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
                                Dis = 150
                                -- = "Pirate [Lv. 35]"
                                -- = "BuggyQuest1"
                                -- = 1
                                -- = "Pirate"
                                -- = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506))
                                topos(CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832))
                            elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
                                Dis = 150
                                -- = "Brute [Lv. 45]"
                                -- = "BuggyQuest1"
                                -- = 2
                                -- = "Brute"
                                -- = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506))
                                topos(CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163))
                            elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
                                -- = "Desert Bandit [Lv. 60]"
                                -- = "DesertQuest"
                                -- = 1
                                -- = "Desert Bandit"
                                -- = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724))
                                topos(CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934))
                            elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
                                -- = "Desert Officer [Lv. 70]"
                                -- = "DesertQuest"
                                -- = 2
                                -- = "Desert Officer"
                                -- = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724))
                                topos(CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005))
                            elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
                                -- = "Snow Bandit [Lv. 90]"
                                -- = "SnowQuest"
                                -- = 1
                                -- = "Snow Bandits"
                                -- = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952))
                                topos(CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439))
                            elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
                                -- = "Snowman [Lv. 100]"
                                -- = "SnowQuest"
                                -- = 2
                                -- = "Snowman"
                                -- = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952))
                                topos(CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439))
                            elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
                                -- = "Chief Petty Officer [Lv. 120]"
                                -- = "MarineQuest2"
                                -- = 1
                                -- = "Chief Petty Officer"
                                -- = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395))
                                topos(CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946))
                            elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
                                -- = "Sky Bandit [Lv. 150]"
                                -- = "SkyQuest"
                                -- = 1
                                -- = "Sky Bandit"
                                -- = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111))
                                topos(CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597))
                            elseif MyLevel == 175 or MyLevel <= 189 then




                                topos(CFrame.new(-4839.53027, 716.368591, -2619.44165))
                            elseif MyLevel == 190 or MyLevel <= 209 then




                                topos(CFrame.new(5311.1884765625, 11.345396041870117, 482.6448059082031))
                            elseif MyLevel == 210 or MyLevel <= 249 then




                                topos(CFrame.new(5311.1884765625, 11.345396041870117, 482.6448059082031))
                            elseif MyLevel == 175 or MyLevel <= 249 then -- Dark Master
                                -- = "Dark Master [Lv. 175]"
                                -- = "SkyQuest"
                                -- = 2
                                -- = "Dark Master"
                                -- = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111))
                                topos(CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521))
                            elseif MyLevel == 250 or MyLevel <= 274 then -- Toga Warrior
                                -- = "Toga Warrior [Lv. 250]"
                                -- = "ColosseumQuest"
                                -- = 1
                                -- = "Toga Warrior"
                                -- = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345))
                                topos(CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346))
                            elseif MyLevel == 275 or MyLevel <= 299 then -- Gladiato
                                -- = "Gladiator [Lv. 275]"
                                -- = "ColosseumQuest"
                                -- = 2
                                -- = "Gladiato"
                                -- = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345))
                                topos(CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.21005611e-08, 0.885560572, -4.80449414e-09, 1, -6.76054768e-08, -0.885560572, 2.71497012e-08, 0.464524001))
                            elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
                                -- = "Military Soldier [Lv. 300]"
                                -- = "MagmaQuest"
                                -- = 1
                                -- = "Military Soldier"
                                -- = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557))
                                topos(CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.29503091e-10, 0.815856814, 9.11209668e-08, 1, 6.498761e-08, -0.815856814, 1.11920997e-07, -0.578253984))
                            elseif MyLevel == 300 or MyLevel <= 374 then -- Military Spy
                                FM = false
                                -- = "Military Spy [Lv. 330]"
                                -- = "MagmaQuest"
                                -- = 2
                                -- = "Military Spy"
                                -- = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557))
                                topos(CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.84706277e-08, 0.982100308, -1.23782129e-07, 1, -4.93306951e-09, -0.982100308, -1.22495649e-07, -0.188358366))
                            elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
                                FM = true
                                -- = "Fishman Warrior [Lv. 375]"
                                -- = "FishmanQuest"
                                -- = 1
                                -- = "Fishman Warrior"
                                -- = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468))
                                topos(CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185))
                            elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
                                FM = true
                                -- = "Fishman Commando [Lv. 400]"
                                -- = "FishmanQuest"
                                -- = 2
                                -- = "Fishman Commando"
                                -- = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468))
                                topos(CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489))
                            elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
                                FM = false
                                -- = "God's Guard [Lv. 450]"
                                -- = "SkyExp1Quest"
                                -- = 1
                                -- = "God's Guards"
                                -- = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651))
                                topos(CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087))
                            elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
                                sky = false
                                -- = "Shanda [Lv. 475]"
                                -- = "SkyExp1Quest"
                                -- = 2
                                -- = "Shandas"
                                -- = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807))
                                topos(CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243))
                            elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
                                sky = true
                                -- = "Royal Squad [Lv. 525]"
                                -- = "SkyExp2Quest"
                                -- = 1
                                -- = "Royal Squad"
                                -- = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959))
                                topos(CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823))
                            elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
                                Dis = 240
                                sky = true
                                -- = "Royal Soldier [Lv. 550]"
                                -- = "SkyExp2Quest"
                                -- = 2
                                -- = "Royal Soldier"
                                -- = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959))
                                topos(CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959))
                            elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
                                Dis = 240
                                sky = false
                                -- = "Galley Pirate [Lv. 625]"
                                -- = "FountainQuest"
                                -- = 1
                                -- = "Galley Pirate"
                                -- = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425))
                                topos(CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803))
                            elseif MyLevel >= 650 then -- Galley Captain
                                Dis = 240
                                -- = "Galley Captain [Lv. 650]"
                                -- = "FountainQuest"
                                -- = 2
                                -- = "Galley Captain"
                                -- = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425))
                                topos(CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081))
                            end
                        elseif World2 then
                            Dis = 240
                            if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
                                -- = "Raider [Lv. 700]"
                                -- = "Area1Quest"
                                -- = 1
                                -- = "Raider"
                                -- = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956))
                                topos(CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761))
                            elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
                                -- = "Mercenary [Lv. 725]"
                                -- = "Area1Quest"
                                -- = 2
                                -- = "Mercenary"
                                -- = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956))
                                topos(CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971))
                            elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
                                -- = "Swan Pirate [Lv. 775]"
                                -- = "Area2Quest"
                                -- = 1
                                -- = "Swan Pirate"
                                -- = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369))
                                topos(CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468))
                            elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
                                -- = "Factory Staff [Lv. 800]"
                                -- = "Area2Quest"
                                -- = 2
                                -- = "Factory Staff"
                                -- = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369))
                                topos(CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002))
                            elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
                                -- = "Marine Lieutenant [Lv. 875]"
                                -- = "MarineQuest3"
                                -- = 1
                                -- = "Marine Lieutenant"
                                -- = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044))
                                topos(CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619))
                            elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
                                -- = "Marine Captain [Lv. 900]"
                                -- = "MarineQuest3"
                                -- = 2
                                -- = "Marine Captain"
                                -- = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044))
                                topos(CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287))
                            elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
                                -- = "Zombie [Lv. 950]"
                                -- = "ZombieQuest"
                                -- = 1
                                -- = "Zombie"
                                -- = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292))
                                topos(CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672))
                            elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
                                -- = "Vampire [Lv. 975]"
                                -- = "ZombieQuest"
                                -- = 2
                                -- = "Vampire"
                                -- = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292))
                                topos(CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423))
                            elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
                                -- = "Snow Trooper [Lv. 1000]"
                                -- = "SnowMountainQuest"
                                -- = 1
                                -- = "Snow Trooper"
                                -- = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971))
                                topos(CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176))
                            elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
                                -- = "Winter Warrior [Lv. 1050]"
                                -- = "SnowMountainQuest"
                                -- = 2
                                -- = "Winter Warrior"
                                -- = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971))
                                topos(CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818))
                            elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
                                -- = "Lab Subordinate [Lv. 1100]"
                                -- = "IceSideQuest"
                                -- = 1
                                -- = "Lab Subordinate"
                                -- = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341))
                                topos(CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742))
                            elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
                                -- = "Horned Warrior [Lv. 1125]"
                                -- = "IceSideQuest"
                                -- = 2
                                -- = "Horned Warrior"
                                -- = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341))
                                topos(CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479))
                            elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
                                -- = "Magma Ninja [Lv. 1175]"
                                -- = "FireSideQuest"
                                -- = 1
                                -- = "Magma Ninja"
                                -- = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765))
                                topos(CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781))
                            elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
                                -- = "Lava Pirate [Lv. 1200]"
                                -- = "FireSideQuest"
                                -- = 2
                                -- = "Lava Pirate"
                                -- = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765))
                                topos(CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294))
                            elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
                                -- = "Ship Deckhand [Lv. 1250]"
                                -- = "ShipQuest1"
                                -- = 1
                                -- = "Ship Deckhand"
                                -- = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136))
                                topos(CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813))
                            elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
                                -- = "Ship Engineer [Lv. 1275]"
                                -- = "ShipQuest1"
                                -- = 2
                                -- = "Ship Engineer"
                                -- = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136))
                                topos(CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871))
                            elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
                                -- = "Ship Steward [Lv. 1300]"
                                -- = "ShipQuest2"
                                -- = 1
                                -- = "Ship Steward"
                                -- = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242))
                                topos(CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814))
                            elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
                                -- = "Ship Officer [Lv. 1325]"
                                -- = "ShipQuest2"
                                -- = 2
                                -- = "Ship Officer"
                                -- = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242))
                                topos(CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698))
                            elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
                                -- = "Arctic Warrior [Lv. 1350]"
                                -- = "FrostQuest"
                                -- = 1
                                -- = "Arctic Warrior"
                                -- = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756))
                                topos(CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107))
                            elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
                                -- = "Snow Lurker [Lv. 1375]"
                                -- = "FrostQuest"
                                -- = 2
                                -- = "Snow Lurker"
                                -- = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756))
                                topos(CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393))
                            elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
                                -- = "Sea Soldier [Lv. 1425]"
                                -- = "ForgottenQuest"
                                -- = 1
                                -- = "Sea Soldier"
                                -- = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751))
                                topos(CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859))
                            elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
                                -- = "Water Fighter [Lv. 1450]"
                                -- = "ForgottenQuest"
                                -- = 2
                                -- = "Water Fighter"
                                -- = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751))
                                topos(CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.57538185e-08, 0.972339869, -5.80986068e-08, 1, 3.30992194e-08, -0.972339869, -4.87605725e-08, -0.233570755))
                            end
                        elseif World3 then
                            Dis = 240
                            if MyLevel == 1500 or MyLevel <= 1524 then
                                -- = "Pirate Millionaire [Lv. 1500]"
                                -- = "PiratePortQuest"
                                -- = 1
                                -- = "Pirate Millionaire"
                                -- = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627))
                                topos(CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375))
                            elseif MyLevel == 1525 or MyLevel <= 1574 then
                                -- = "Pistol Billionaire [Lv. 1525]"
                                -- = "PiratePortQuest"
                                -- = 2
                                -- = "Pistol Billionaire"
                                -- = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627))
                                topos(CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375))
                            elseif MyLevel == 1575 or MyLevel <= 1599 then
                                -- = "Dragon Crew Warrior [Lv. 1575]"
                                -- = "AmazonQuest"
                                -- = 1
                                -- = "Dragon Crew Warrior"
                                -- = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359))
                                topos(CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516))
                            elseif MyLevel == 1600 or MyLevel <= 1624 then
                                -- = "Dragon Crew Archer [Lv. 1600]"
                                -- = "AmazonQuest"
                                -- = 2
                                -- = "Dragon Crew Archer"
                                -- = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359))
                                topos(CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715))
                            elseif MyLevel == 1625 or MyLevel <= 1649 then
                                -- = "Female Islander [Lv. 1625]"
                                -- = "AmazonQuest2"
                                -- = 1
                                -- = "Female Islander"
                                -- = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                                topos(CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922))
                            elseif MyLevel == 1650 or MyLevel <= 1699 then
                                -- = "Giant Islander [Lv. 1650]"
                                -- = "AmazonQuest2"
                                -- = 2
                                -- = "Giant Islander"
                                -- = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            elseif MyLevel == 1700 or MyLevel <= 1724 then
                                -- = "Marine Commodore [Lv. 1700]"
                                -- = "MarineTreeIsland"
                                -- = 1
                                -- = "Marine Commodore"
                                -- = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747))
                                topos(CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688))
                            elseif MyLevel == 1725 or MyLevel <= 1774 then
                                -- = "Marine Rear Admiral [Lv. 1725]"
                                -- = "MarineTreeIsland"
                                -- = 2
                                -- = "Marine Rear Admiral"
                                -- = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747))
                                topos(CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625))
                            elseif MyLevel == 1775 or MyLevel <= 1799 then
                                -- = "Fishman Raider [Lv. 1775]"
                                -- = "DeepForestIsland3"
                                -- = 1
                                -- = "Fishman Raider"
                                -- = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213))
                                topos(CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125))
                            elseif MyLevel == 1800 or MyLevel <= 1824 then
                                -- = "Fishman Captain [Lv. 1800]"
                                -- = "DeepForestIsland3"
                                -- = 2
                                -- = "Fishman Captain"
                                -- = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213))
                                topos(CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625))
                            elseif MyLevel == 1825 or MyLevel <= 1849 then
                                -- = "Forest Pirate [Lv. 1825]"
                                -- = "DeepForestIsland"
                                -- = 1
                                -- = "Forest Pirate"
                                -- = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247))
                                topos(CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188))
                            elseif MyLevel == 1850 or MyLevel <= 1899 then
                                -- = "Mythological Pirate [Lv. 1850]"
                                -- = "DeepForestIsland"
                                -- = 2
                                -- = "Mythological Pirate"
                                -- = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247))
                                topos(CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188))
                            elseif MyLevel == 1900 or MyLevel <= 1924 then
                                -- = "Jungle Pirate [Lv. 1900]"
                                -- = "DeepForestIsland2"
                                -- = 1
                                -- = "Jungle Pirate"
                                -- = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002))
                                topos(CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063))
                            elseif MyLevel == 1925 or MyLevel <= 1974 then
                                -- = "Musketeer Pirate [Lv. 1925]"
                                -- = "DeepForestIsland2"
                                -- = 2
                                -- = "Musketeer Pirate"
                                -- = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002))
                                topos(CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625))
                            elseif MyLevel == 1975 or MyLevel <= 1999 then
                                -- = "Reborn Skeleton [Lv. 1975]"
                                -- = "HauntedQuest1"
                                -- = 1
                                -- = "Reborn Skeleton"
                                -- = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                                topos(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
                            elseif MyLevel == 2000 or MyLevel <= 2024 then
                                -- = "Living Zombie [Lv. 2000]"
                                -- = "HauntedQuest1"
                                -- = 2
                                -- = "Living Zombie"
                                -- = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0))
                                topos(CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875))
                            elseif MyLevel == 2025 or MyLevel <= 2049 then
                                -- = "Demonic Soul [Lv. 2025]"
                                -- = "HauntedQuest2"
                                -- = 1
                                -- = "Demonic Soul"
                                -- = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149))
                                topos(CFrame.new(-9466.72949, 171.162918, 6132.01514))
                            elseif MyLevel == 2050 or MyLevel <= 2074 then
                                -- = "Posessed Mummy [Lv. 2050]" 
                                -- = "HauntedQuest2"
                                -- = 2
                                -- = "Posessed Mummy"
                                -- = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149))
                                topos(CFrame.new(-9589.93848, 4.85058546, 6190.27197))
                            elseif MyLevel == 2075 or MyLevel <= 2099 then
                                -- = "Peanut Scout [Lv. 2075]"
                                -- = "NutsIslandQuest"
                                -- = 1
                                -- = "Peanut Scout"
                                topos(CFrame.new(-2124, 123, -10435))
                                -- = CFrame.new(-2104, 38, -10192))
                            elseif MyLevel == 2100 or MyLevel <= 2124 then
                                -- = "Peanut President [Lv. 2100]"
                                -- = "NutsIslandQuest"
                                -- = 2
                                -- = "Peanut President"
                                topos(CFrame.new(-2124, 123, -10435))
                                -- = CFrame.new(-2104, 38, -10192))
                            elseif MyLevel == 2125 or MyLevel <= 2149 then
                                -- = "Ice Cream Chef [Lv. 2125]"
                                -- = "IceCreamIslandQuest"
                                -- = 1
                                -- = "Ice Cream Chef"
                                topos(CFrame.new(-641, 127, -11062))
                                -- = CFrame.new(-822, 66, -10965))
                            elseif MyLevel == 2150 or MyLevel <= 2199 then
                                -- = "Ice Cream Commander [Lv. 2150]"
                                -- = "IceCreamIslandQuest"
                                -- = 2
                                -- = "Ice Cream Commander"
                                topos(CFrame.new(-641, 127, -11062))
                                -- = CFrame.new(-822, 66, -10965))
                            elseif MyLevel == 2200 or MyLevel <= 2224 then
                                -- = "Cookie Crafter [Lv. 2200]"
                                -- = "CakeQuest1"
                                -- = 1
                                -- = "Cookie Crafter"
                                topos(CFrame.new(-2166, 70, -12125))
                                -- = CFrame.new(-2022, 38, -12034))
                            elseif MyLevel == 2225 or MyLevel <= 2299 then
                                -- = "Cake Guard [Lv. 2225]"
                                -- = "CakeQuest1"
                                -- = 2
                                -- = "Cake Guard"
                                topos(CFrame.new(-2166, 70, -12125))
                                -- = CFrame.new(-2022, 38, -12034))
                            elseif MyLevel == 2300 or MyLevel <= 2324 then
                                -- = "Cocoa Warrior [Lv. 2300]"
                                -- = "ChocQuest1"
                                -- = 1
                                -- = "Cocoa Warrior"
                                topos(CFrame.new(233.131, 24.7342, -12198.4))
                                -- = CFrame.new(233.131, 24.7342, -12198.4))
                            elseif MyLevel == 2325 or MyLevel <= 2349 then
                                -- = "Chocolate Bar Battler [Lv. 2325]"
                                -- = "ChocQuest1"
                                -- = 2
                                -- = "Chocolate Bar Battler"
                                topos(CFrame.new(233.131, 24.7342, -12198.4))
                                -- = CFrame.new(233.131, 24.7342, -12198.4))
                            elseif MyLevel == 2350 or MyLevel <= 2374 then
                                -- = "Sweet Thief [Lv. 2350]"
                                -- = "ChocQuest2"
                                -- = 1
                                -- = "Sweet Thief"
                                topos(CFrame.new(107.011, 89.222, -12473.6))
                                -- = CFrame.new(233.131, 24.7342, -12198.4))
                            elseif MyLevel <= 2400 then
                                -- = "Candy Rebel [Lv. 2300]"
                                -- = 2
                                -- = "ChocQuest2"
                                -- = "Candy Rebel"
                                topos(CFrame.new(107.011, 89.222, -12473.6))
                                -- = CFrame.new(233.131, 24.7342, -12198.4))
                            end
                        end
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                            StopTween()
                            wait(.3)
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else
                            if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
                                if PosMon ~= nil then
                                    topos(PosMon * CFrame.new(0,10,0))
                                else
                                    if OldPos ~= nil then
                                        topos(OldPos.Position)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)


Main1:Line()

local Melee = {
    "SuperHuman",
    "SharkmanKarate",
    "DeathStep",
    "ElectricClaw",
    "DragonTalon",
}

local dropdown = Main1:Drop("Make Melee","Select ",false,Melee,function(v)
    getgenv().Select = v
    if v == "SuperHuman" then
                create:Notify("Kenei","Selected SuperHuman",3)
            elseif v == "DeathStep" then
                create:Notify("Kenei","Selected DeathStep",3)
            elseif v == "SharkmanKarate" then
                create:Notify("Kenei","Selected SharkmanKarate",3)
            elseif v == "DragonTalon" then
                create:Notify("Kenei","Selected DragonTalon",3)
            elseif v == "ElectricClaw" then
                create:Notify("Kenei","Selected ElectricClaw",3)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if getgenv().Select == "SuperHuman" then
                Do_Superhuman()
            elseif getgenv().Select == "DeathStep" then
                Do_DeathStep()
            elseif getgenv().Select == "SharkmanKarate" then
                Do_SharkmanKarate()
            elseif getgenv().Select == "ElectricClaw" then
                DO_ElectricClaw()
            elseif getgenv().Select == "DragonTalon" then
                Do_DragonTalon()
            end
        end)
    end
end)
 


Main1:Line()
Main1:Label("Items")

Main1:Toggle("Auto Farm Pole",false,function(value)
    getgenv().Pole = value
end)
spawn(function()
        while wait() do
            if getgenv().Pole then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God [Lv. 575] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki() Click()
                                        
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,-50,-30))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if getgenv().CanHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    

Main1:Toggle("Auto Farm Saber",false,function(value)
    getgenv().Saber = value
end)

Main1:Toggle("Auto Farm Shark Sword",false,function(value)
    getgenv().SharkSword = value
end)

Main1:Toggle("Auto Farm Dragon Trident",false,function(value)
    getgenv().DragonTrident = value
end)


-----------------------------------[ World2 ]-----------------------------------

Main1:Toggle("Auto Farm True Triple Katana",false,function(value)
    getgenv().Truetriple = value
end)

Main1:Toggle("Auto Farm LongSword",false,function(value)
    getgenv().LongSword = value
end)
    spawn(function()
        while wait() do
            if getgenv().LongSword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Diamond [Lv. 725] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Diamond [Lv. 725] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki() Click()
                                        
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,-50,-30))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().LongSword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diamond [Lv. 725] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diamond [Lv. 725] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if getgenv().CanHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
Main1:Toggle("Auto Farm Jitte",false,function(value)
    getgenv().Jitte = value
end)

Main1:Toggle("Auto Farm Rengoku",getgenv().AutoRengoku,function(value)
    getgenv().AutoRengoku = value
end)

spawn(function()
        pcall(function()
            while wait() do
                if getgenv().AutoRengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    
                                                            
                                    AutoHaki() Click()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    RengokuMon = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    StartRengokuMagnet = true
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or getgenv().AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                StartRengokuMagnet = false
                            end
                        end
                    else
                        StartRengokuMagnet = false
                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)


Main1:Toggle("Auto Farm Bizare Sword",false,function(value)
    getgenv().BizareSword = value
end)

-----------------------------------[ World3 ]-----------------------------------

Main1:Toggle("Auto Yama",false,function(value)
    getgenv().Yama = value
end)

Main1:Toggle("Auto Tushita",false,function(value)
    getgenv().Tushita = value
end)

Main1:Toggle("Auto Cavender",getgenv().CavenF,function(value)
    getgenv().CavenF = value
end)

spawn(function()
        while wait() do
            if getgenv().CavenF then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki() Click()
                                                            
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().CavenF or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if getgenv().CanHop then
                                Hop(getgenv().TTH)
                            end
                        end
                    end
                end)
            end
        end
    end)

    Main2:Button("Auto Crusted Dual Katana",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))

    end)

                        
        Main1:Toggle("Auto Hallow Scythe",getgenv().AutoFarmBossHallow,function(value)
    getgenv().AutoFarmBossHallow = value 
end)

    spawn(function()
        while wait() do
            if getgenv().AutoFarmBossHallow then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                getgenv().Auto_Cocoa = false
                                repeat task.wait()
                                    
                                    AutoHaki() Click()
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame*CFrame.new(5,-50,-29))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or getgenv().AutoFarmBossHallow == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipWeapon("Hallow Essence")
                        
                    elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, "Posessed Mummy") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",2)
                    end
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Domenic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:WaitForChild("Humanoid").Health > 0 then
                                BoneMagnet = true
								repeat task.wait()
								    AutoHaki() Click()                 
									v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
									topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
									v.HumanoidRootPart.CanCollide = false
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
									PosMonBone = v.HumanoidRootPart.CFrame
									StartMagnetBoneMon = true
								until getgenv().Auto_Cocoa == false or not v.Parent or v.Humanoid.Health <= 0
							    end
					    	end
					    end
				    else
					    BoneMagnet = false
					    topos(CFrame.new(-9501.64453, 582.052612, 6034.20117))
				end
                        getgenv().Auto_Random_Bone = true
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            getgenv().Auto_Cocoa = false
                            getgenv().Auto_Random_Bone = false
                            wait(1)
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,-50,-29))
                        else
                            if getgenv().CanHop then
                                Hop(getgenv().TTH)
                            end
                        end
                    end
                end)
            end
        end
    end)

local Big = Main1:Label("Boss Status : N/A")
Main1:Toggle("Auto Buddy Sword",AutoBudySword,function(value)
    getgenv().AutoBudySword = value
end)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                Big:Set("Boss Status : Spawning")
            else
                if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                Big:Set("Boss Status : Not Spawning")
                end
            end
        end)
    end
end)
spawn(function()
        while wait() do
            if getgenv().AutoBudySword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if getgenv().CanHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)


local MobKilled = Main1:Label("")

Main1:Toggle("Auto Spikey Trident",getgenv().AutoDoughtBoss,function(value)
    getgenv().AutoDoughtBoss = value
end)

spawn(function()
        while wait() do
            pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    MobKilled:Set("Boss Is Spawning")
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().AutoDoughtBoss then
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            if getgenv().AutoDoughtBoss then
                pcall(function()
                    local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki() Click()
                                        
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(200,200,200)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(10,-50,-29))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,-30,10))
                        else
                            if KillMob == 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
                            end                    
                            if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    AutoHaki() Click()
                                                    
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 16
                                                    v.Head.CanCollide = false 
                                                    v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                                    MagnetDought = true
                                                    PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                until not getgenv().AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                            end
                                        end
                                    end
                                else
                                    topos(CFrame.new(-2166, 70, -12125))
                                    MagnetDought = false
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(5,10,7)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(5,10,7)) 
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                end
                                            end
                                        end
                                    end                       
                                end
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                    topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)


Main1:Toggle("Auto DarkDagger",getgenv().DarkDagger,function(value)
    getgenv().DarkDagger = value
end)

spawn(function()
    while wait() do
        pcall(function()if getgenv().DarkDagger then
            if not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice") then
                -- finding God's Chalice
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until getgenv().DarkDagger == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                else
                                    if getgenv().CanHop then
                                        Hop()
                                    else
                                        topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                    end
                                end
                            end                    
                        end
                    end
            else -- Press Haki Pad
                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    repeat wait()
                        repeat wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
                            topos(CFrame.new(-5419.56641, 1090.33752, -2665.78589, 0.971406102, 1.70427565e-08, 0.237423971, -2.01854462e-08, 1, 1.08056044e-08, -0.237423971, -1.52891388e-08, 0.971406102))
                        until (Vector3.new(-5419.56641, 1090.33752, -2665.78589, 0.971406102, 1.70427565e-08, 0.237423971, -2.01854462e-08, 1, 1.08056044e-08, -0.237423971, -1.52891388e-08, 0.971406102)) or getgenv().DarkDagger == false
                        repeat wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                            topos(CFrame.new(-5414.27979, 314.837671, -2212.57007, -0.984678745, -4.57075764e-08, 0.174378246, -4.24506084e-08, 1, 2.24074217e-08, -0.174378246, 1.46616497e-08, -0.984678745))
                        until (Vector3.new(-5414.27979, 314.837671, -2212.57007, -0.984678745, -4.57075764e-08, 0.174378246, -4.24506084e-08, 1, 2.24074217e-08, -0.174378246, 1.46616497e-08, -0.984678745)) or getgenv().DarkDagger == false
                        repeat wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")
                            topos(CFrame.new(-4972.89502, 336.937714, -3720.4707, -0.738323092, -2.82306036e-08, 0.674447179, 5.20171852e-08, 1, 9.88010598e-08, -0.674447179, 1.08029944e-07, -0.738323092))
                        until (Vector3.new(-4972.89502, 336.937714, -3720.4707, -0.738323092, -2.82306036e-08, 0.674447179, 5.20171852e-08, 1, 9.88010598e-08, -0.674447179, 1.08029944e-07, -0.738323092)) or getgenv().DarkDagger == false
                        topos(CFrame.new(-5560.27295, 313.915466, -2663.89795))
                    until game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]")
                end
                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                            repeat task.wait()
                                pcall(function()
                                    AutoHaki()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,-20,0))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                end)
                            until getgenv().DarkDagger == false or v.Humanoid.Health <= 0
                        end
                        end
                    end
                end
            end
        end)
    end
end)

Main1:Button("Press Haki Pad",function()
                        topos(CFrame.new(-5419.56641, 1090.33752, -2665.78589, 0.971406102, 1.70427565e-08, 0.237423971, -2.01854462e-08, 1, 1.08056044e-08, -0.237423971, -1.52891388e-08, 0.971406102))
                        
                        local args ={
                            [1] = "activateColor",
                            [2] = "Winter Sky"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

                        wait(14)
                        topos(CFrame.new(-5414.27979, 314.837671, -2212.57007, -0.984678745, -4.57075764e-08, 0.174378246, -4.24506084e-08, 1, 2.24074217e-08, -0.174378246, 1.46616497e-08, -0.984678745))
                        local args = {
                            [1] = "activateColor",
                            [2] = "Pure Red"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        
                        wait(17)
                        topos(CFrame.new(-4972.89502, 336.937714, -3720.4707, -0.738323092, -2.82306036e-08, 0.674447179, 5.20171852e-08, 1, 9.88010598e-08, -0.674447179, 1.08029944e-07, -0.738323092))
                        local args = {
                            [1] = "activateColor",
                            [2] = "Snow White"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                			wait(0.5)
                			EquipWeapon("God's Chalice")
                			wait(0.5)
    				topos(CFrame.new(-5560.27295, 313.915466, -2663.89795))
end)
				
Main1:Toggle("Auto Twin Hook",false,function(value)
    getgenv().Hook = value
end)

Main2:Line()
Main2:Label("Stats")

Main2:Toggle("Melee",getgenv().Auto_Melee,function(v)
    getgenv().Auto_Melee = v
end)
Main2:Toggle("Defense",getgenv().Auto_Defense,function(v)
    getgenv().Auto_Defense = v
end)
Main2:Toggle("Sword",getgenv().Auto_Sword,function(v)
    getgenv().Auto_Sword = v
end)
Main2:Toggle("Gun",getgenv().Auto_Gun,function(v)
    getgenv().Auto_Gun = v
end)
Main2:Toggle("Devil Fruit",getgenv().Auto_DevilFruit,function(v)
    getgenv().Auto_DevilFruit = v
end)

Main2:Line()
Main2:Label("Equips")

local Weapons = {
    "None",
    "Melee",
    "Swords",
    "Blox Fruit",
    "Gun"
}

local Eq = Main2:Drop("Equip","Weapon",false,Weapons,function(v)
    getgenv().Eq = v
    if getgenv().Eq == "Melee" then
        create:Notify("Daino","Equiped Melee",5)
    elseif getgenv().Eq == "Swords" then
        create:Notify("Daino","Equiped Swords",5)
    elseif getgenv().Eq == "DevilFruit" then
        create:Notify("Daino","Equiped DevilFruits",5)
    elseif getgenv().Eq == "Gun" then
        create:Notify("Daino","Equiped Gun",5)
    elseif getgenv().Eq == "None" then
        create:Notify("Daino","UnEquiped Weapon",5)
    end
end)



spawn(function()
    while wait() do
        pcall(function()
            if getgenv().Eq == "Melee" then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                       if v.ToolTip == "Melee" then
                      if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                          local ToolSe = tostring(v.Name)
                         local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                         wait()
                         game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                        end
                    end
            	end
            elseif getgenv().Eq == "Swords" then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                   if v.ToolTip == "Sword" then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                      local ToolSe = tostring(v.Name)
                     local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                     wait()
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                        end
                    end
                end
            elseif getgenv().Eq == "Blox Fruit" then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                   if v.ToolTip == "Blox Fruit" then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                      local ToolSe = tostring(v.Name)
                     local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                     wait()
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                       end
                    end
                end
            elseif getgenv().Eq == "Gun" then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                   if v.ToolTip == "Gun" then
                  if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                      local ToolSe = tostring(v.Name)
                     local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                     wait()
                     game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                       end
                    end
                end
            end
        end)
    end
end)

Main2:Line()
Main2:Label("Combat")
	Main2:Button("Black Leg",function()
		local args = {
			[1] = "BuyBlackLeg"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Electro",function()
		local args = {
			[1] = "BuyElectro"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Fishman Karate",function()
		local args = {
			[1] = "BuyFishmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Dragon Claw",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "DragonClaw",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Superhuman",function()
		local args = {
			[1] = "BuySuperhuman"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Death Step",function()
		local args = {
			[1] = "BuyDeathStep"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Sharkman Karate",function()
		local args = {
			[1] = "BuySharkmanKarate",
			[2] = true
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Electric Claw",function()
		local string_1 = "BuyElectricClaw";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);
	end)
	Main2:Button("Dragon Talon",function()
		local string_1 = "BuyDragonTalon";
		local bool_1 = true;
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1, bool_1);
		local string_1 = "BuyDragonTalon";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);
	end)
		Main2:Button("Random Race (Use 3K Fragments)",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Reroll",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Reset Stats (Use 2.5K Fragments)",function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Refund",
			[3] = "2"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

    local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
	local Table_DevilFruitSniper = {}
	local ShopDevilSell = {}
	for i,v in next,Remote_GetFruits do
		table.insert(Table_DevilFruitSniper,v.Name)
		if v.OnSale then 
			table.insert(ShopDevilSell,v.Name)
		end
	end
	
	Main2:Label("Fruits")
	local SelectedShopDevilSell = ""
	local RefreshDevilFruitShop = Main2:Drop("Shop Devil Sell Now","Select",false,ShopDevilSell,function(v)
		getgenv().SelectedShopDevilSell = v
	end)
	Main2:Button("Buy Devil Fruit",function()
		local string_1 = "PurchaseRawFruit";
		local string_2 = getgenv().SelectedShopDevilSell;
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1, string_2);
	end)
	
	local string_1 = "getInventoryFruits";
	local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
	local TabelDevilFruitStore = {}
	for i,v in pairs(Target:InvokeServer(string_1)) do
		for i1,v1 in pairs(v) do
			if i1 == "Name" then 
				table.insert(TabelDevilFruitStore,v1)
			end
		end
	end


Main2:Line()
Main2:Label("Level Lock")
    local LockLevelValue = 2300
	local OldLevel = game.Players.localPlayer.Data.Level.Value
	
	local Odl = {}
	table.insert(Odl, OldLevel)
	local Level = Main2:Slider("Select Level Lock",false,false,1,LockLevelValue,LockLevelValue,10,nil,function(value)
		LockLevelValue = value
	end)
	Main2:Toggle("Lock Level",locklevel,function(value)
		LockLevel = value
	end)
	spawn(function()
		while wait(.1) do
			if LockLevel then
				if game.Players.localPlayer.Data.Level.Value >= LockLevelValue then
				    for i, v in pairs(Old) do
					game.Players.localPlayer:Kick("\n Auto Farm Completed Level : "..game.Players.localPlayer.Data.Level.Value.."\n Old Level : "..tonumber(i).."\nUsername : "..game.Players.LocalPlayer.Name)
					end
				end
			end
		end
	end)

Main2:Line()
Main2:Button("Frist Sea",function()
local args = {
			[1] = "TravelMain" -- OLD WORLD to NEW WORLD
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
	Main2:Button("Second Sea" ,function()
		local args = {
			[1] = "TravelDressrosa" -- NEW WORLD to OLD WORLD
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)
	Main2:Button("Third Sea" ,function()
		local args = {
			[1] = "TravelZou" -- OLD WORLD to NEW WORLD
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end)

Main2:Line()
Main2:Label("Settings")
Main2:Toggle("White Screen",getgenv().W,function(value)
    getgenv().W = value
end)

Main2:Toggle("Auto Rejoin",getgenv().Re,function(v)
    getgenv().Re = v
end)


Main2:Toggle("Accept All Hop",getgenv().CanHop,function(v)
    getgenv().CanHop = v
    if v == true then
    create:Notify("Kenei","Acceped all hop",3)
    else
    create:Notify("Kenei","Blocked all hop",3)
    end
end)

local slider = Main2:Slider("Time To Hop",false,false,60, 500, 10, 60,false,function(value)
   getgenv().TTP = value
end)

Main2:Toggle("VerFastAttack (Kick Risk)",getgenv().UltraFastAttack,function(v)
    getgenv().UltraFastAttack = v
end)


spawn(function()
    while cac() do
        pcall(function()
            if getgenv().UltraFastAttack then
                ServerHits()
            end
        end)
    end
end)

Main2:Toggle("Super Fast Attack (Afk Avalibla)",getgenv().Click,function(v)
    getgenv().Click = v
end)

Main2:Toggle("FastAttack",true,function(v)
    getgenv().Sfat = v
end)

mi1:Line()
mi1:Label("Codes")
mi1:Button("Redeem All Codes",function()
    function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
    UseCode("TantaiGaming")
    UseCode("Axiore")
    UseCode("Sub2Daigrock")
    UseCode("SUB2NOOBMASTER123")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("THEGREATACE")
    UseCode("BIGNEWS")
    UseCode("FUDD10")
    UseCode("fudd10_v2")
    UseCode("Bluxxy")
    UseCode("Starcodeheo")
    UseCode("JCWK")
    UseCode("Magicbus")
    UseCode("Enyu_is_Pro")
    UseCode("Sub2Fer999")
    UseCode("kittgaming")
end)
local A9K203Ra = {
    "Sub2UncleKizaru",
    "SUB2GAMERROBOT_RESET1",
}

local Exp = mi1:Drop("Reset Stats Code","Select",false,A9K203Ra,function(v)
    getgenve().Exp = v
end)

mi1:Button("Redeen",function()
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(getgenv().Exp)
end)
mi1:Line()
mi1:Label("Graphfic")

mi1:Line()


Raid1:Label("Auto Raids")

Raid1:Toggle("Auto Select Raid",getgenv().Atsr,function(v)
    getgenv().Astr = v
end)
	local RaidsSelected = selectraids or ""
	local Raidslist = {
        "None";
    }
	local RaidsModule = require(game.ReplicatedStorage.Raids)
	for i,v in pairs(RaidsModule.raids) do
		table.insert(Raidslist,v)
	end
	for i,v in pairs(RaidsModule.advancedRaids) do
		table.insert(Raidslist,v)
	end 
    local SR = Raid2:Drop("Select ","Raid ",false,Raidslist,function(v)
        RaidsModule = v
    end)
    Raid1:Button("Clear Dropdown",function()
         SR:Clear()
    end)

    local TimeRaid = Raid2:Label("Wait For Raid")
    
    spawn(function()
        pcall(function()
            while wait() do
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                    TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
                else
                    TimeRaid:Set("Wait For Dungeon")
                end
            end
        end)
    end)
    
    Raid2:Toggle("Auto Farm Dungeon",getgenv().Auto_Dungeon,function(value)
        getgenv().Auto_Dungeon = value
        StopTween(getgenv().Auto_Dungeon)
    end)
    
    spawn(function()
        pcall(function() 
            while wait() do
                if getgenv().Auto_Dungeon then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                pcall(function()
                                    repeat wait()
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        v.Humanoid.Health = 0
                                        v.HumanoidRootPart.CanCollide = false
                                    until not getgenv().Auto_Dungeon or not v.Parent or v.Humanoid.Health <= 0
                                end)
                            end
                        end
                    end
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if getgenv().Auto_Dungeon then

                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,80,100))
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,80,100))

                    end
                end
            end
        end)
    end)
    
    Raid2:Toggle("Kill Aura",getgenv().KillAura,function(value)
        getgenv().KillAura = value
    end)
     
spawn(function()
  pcall(function() 
  while wait() do
       if getgenv().KillAura then
           for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                   pcall(function()
                       repeat wait()
                           sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                           v.Humanoid.Health = 0
                           v.HumanoidRootPart.CanCollide = false
                           v.HumanoidRootPart.Size = Vector3.new(200,200,200)
                           v.HumanoidRootPart.Transparency = 1
                       until not getgenv().KillAura or not v.Parent or v.Humanoid.Health <= 0
                   end)
               end
           end
       end
   end
  end)
end)

    Raid2:Toggle("Auto Awakener",getgenv().Auto_Awakener,function(value)
        getgenv().Auto_Awakener = value
    end)
    
    spawn(function()
        pcall(function()
            while wait(.1) do
                if getgenv().Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)
    
    Raid2:Line()
    
    local I2N811NA = Raid2:Drop("Select Chips","Select",false,Raidslist,function(value)
        getgenv().SelectChip = value
    end)
    
    Raid2:Toggle("Auto Select Dungeon",getgenv().AutoSelectDungeon,function(value)
        getgenv().AutoSelectDungeon = value
    end)
    
    spawn(function()
        while wait() do
            if getgenv().AutoSelectDungeon then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame") then
                        getgenv().SelectChip = "Flame"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice") then
                        getgenv().SelectChip = "Ice"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake") then
                        getgenv().SelectChip = "Quake"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light") then
                        getgenv().SelectChip = "Light"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark") then
                        getgenv().SelectChip = "Dark"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String") then
                        getgenv().SelectChip = "String"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble") then
                        getgenv().SelectChip = "Rumble"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma") then
                        getgenv().SelectChip = "Magma"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        getgenv().SelectChip = "Human: Buddha"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand") then
                        getgenv().SelectChip = "Sand"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix") then
                        getgenv().SelectChip = "Bird: Phoenix"
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dought-Dought") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dought-Dought") then
                        getgenv().SelectChip = "Dought"
                    else
                        getgenv().SelectChip = "Flame"
                    end
                end)
            end
        end
    end)
    
    Raid2:Toggle("Auto Buy Chip",getgenv().AutoBuyChip,function(value)
        getgenv().AutoBuyChip = value
    end)
    
    spawn(function()
        pcall(function()
            while wait() do
                if getgenv().AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", getgenv().SelectChip)
                        end
                    end
                end
            end
        end)
    end)
    
    Raid2:Button("Buy Chip Select",function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",getgenv().SelectChip)
    end)
    
    Raid2:Toggle("Auto Start Raid",getgenv().Auto_StartRaid,function(value)
        getgenv().Auto_StartRaid = value
    end)
    
    spawn(function()
        while wait(.1) do
            pcall(function()
                if getgenv().Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    Raid2:Button("Start Raid",function()
        if World2 then
            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
    end)
    
    Raid2:Line()
    
    Raid2:Button("Next Island",function()
        pcall(function()
            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
            end
        end)
    end)
    
    if World2 then
        Raid2:Button("Teleport to Lab",function()
            topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
            end)
    elseif World3 then
        Raid2:Button("Teleport to Lab",function()
            topos(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end)
    end
    
    if World2 then
        Raid2:Button("Awakening Room",function()
            topos(CFrame.new(266.227783, 1.39509034, 1857.00732))
        end)
    elseif World3 then
        Raid2:Button("Awakening Room",function()
            topos(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
        end)
    end

local plr = {}
	for i,v in pairs(game.Players:GetChildren()) do  
		table.insert(plr ,v.Name)
	end
local plr = tp1:Drop("Select","players",false,plr,function(v)
   getgenv().SelectPlr = v
end)
tp1:Button("refresh plr",function()
	for i,v in pairs(game.Players:GetChildren()) do  
		table.insert(plr ,v.Name)
	end
end)

tp1:Toggle("Tp to plr",getgenv().tp,function(v)
    getgenv().tp = v 
end)
spawn(function()
		while wait() do
			pcall(function()
				if getgenv().tp then
					for i, v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
							repeat game:GetService('RunService').Stepped:wait()
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
										spawn(function()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 75 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												wait()
												game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
											end
										end)
										NameKill = v.Name
										KillHealt = v.Humanoid.Health
										MaxKillHealt = v.Humanoid.MaxHealth
										killandhopsize = true
										topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,0))
							until not v.Parent or not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or BountyHop == false or v.Humanoid.Health <= 0 or NextPlayer == true or getgenv().HopServerOn == true
							NextPlayer = false
							killandhopsize = false
							end
					end
						
			end)
		end
end)

tp2:Label("Teleports")

if Waorld1 then
    tp2:Button("Start Island",function()
        topos(CFrame.new(1071.2832, 16.3085976, 1426.86792))
    end)
    tp2:Button("Marine Start",function()
        topos(CFrame.new(-2573.3374, 6.88881969, 2046.99817))
    end)
    tp2:Button("Middle Town",function()
        topos(CFrame.new(-655.824158, 7.88708115, 1436.67908))
    end)
    tp2:Button("Jungle",function()
        topos(CFrame.new(-1249.77222, 11.8870859, 341.356476))
    end)
    tp2:Button("Pirate Village",function()
        topos(CFrame.new(-1122.34998, 4.78708982, 3855.91992))
    end)
    tp2:Button("Desert",function()
        topos(CFrame.new(1094.14587, 6.47350502, 4192.88721))
    end)
    tp2:Button("Frozen Village",function()
        topos(CFrame.new(1198.00928, 27.0074959, -1211.73376))
    end)
    tp2:Button("MarineFord",function()
        topos(CFrame.new(-4505.375, 20.687294, 4260.55908))
    end)
    tp2:Button("Colosseum",function()
        topos(CFrame.new(-1428.35474, 7.38933945, -3014.37305))
    end)
    tp2:Button("Sky island 1 ",function()
        topos(CFrame.new(-4970.21875, 717.707275, -2622.35449))
    end)
    tp2:Button("Sky island 2 ",function()
        topos(CFrame.new(-4813.0249, 903.708557, -1912.69055))
    end)
    tp2:Button("Sky island 3 ",function()
        topos(CFrame.new(-7952.31006, 5545.52832, -320.704956))
    end)
    tp2:Button("Sky island 4 ",function()
        topos(CFrame.new(-7793.43896, 5607.22168, -2016.58362))
    end)
    tp2:Button("Prison",function()
        topos(CFrame.new(4854.16455, 5.68742752, 740.194641))
    end)
    tp2:Button("Magma Village",function()
        topos(CFrame.new(-5231.75879, 8.61593437, 8467.87695))
    end)
    tp2:Button("UndeyWater City",function()
        topos(CFrame.new(61163.8516, 11.7796879, 1819.78418))
    end)
    tp2:Button("Fountain City",function()
        topos(CFrame.new(5132.7124, 4.53632832, 4037.8562))
    end)
    tp2:Button("House Cyborg's",function()
        topos(CFrame.new(6262.72559, 71.3003616, 3998.23047))
    end)
    tp2:Button("Shank's Room",function()
        topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
    end)
    tp2:Button("Mob Island",function()
        topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
    end)
end   
if World2 then
    tp2:Button("Dock",function()
        topos(CFrame.new(82.9490662, 18.0710983, 2834.98779))
    end)
    tp2:Button("Kingdom of Rose",function()
        topos(CFrame.new(-394.983521, 118.503128, 1245.8446))
    end)
    tp2:Button("Mansion",function()
        topos(CFrame.new(-390.096313, 331.886475, 673.464966))
    end)
    tp2:Button("Flamingo Room",function()
        topos(CFrame.new(2302.19019, 15.1778421, 663.811035))
    end)
    tp2:Button("Green Zone",function()
        topos(CFrame.new(-2372.14697, 72.9919434, -3166.51416))
    end)
    tp2:Button("Cafe",function()
        topos(CFrame.new(-385.250916, 73.0458984, 297.388397))
    end)
    tp2:Button("Factroy",function()
        topos(CFrame.new(430.42569, 210.019623, -432.504791))
    end)
    tp2:Button("Colosseum",function()
        topos(CFrame.new(-1836.58191, 44.5890656, 1360.30652))
    end)
    tp2:Button("Grave Island",function()
        topos(CFrame.new(-5411.47607, 48.8234024, -721.272522))
    end)
    tp2:Button("Snow Mountain",function()
        topos(CFrame.new(511.825226, 401.765198, -5380.396))
    end)
    tp2:Button("Cold Island",function()
        topos(CFrame.new(-6026.96484, 14.7461271, -5071.96338))
    end)
    tp2:Button("Hot Island",function()
        topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
    end)
    tp2:Button("Cursed Ship",function()
        topos(CFrame.new(902.059143, 124.752518, 33071.8125))
    end)
    tp2:Button("Ice Castle",function()
        topos(CFrame.new(5400.40381, 28.21698, -6236.99219))
    end)
    tp2:Button("Forgotten Island",function()
        topos(CFrame.new(-3043.31543, 238.881271, -10191.5791))
    end)
    tp2:Button("Usoapp Island",function()
        topos(CFrame.new(4748.78857, 8.35370827, 2849.57959))
    end)
    tp2:Button("Minisky Island",function()
        topos(CFrame.new(-260.358917, 49325.7031, -35259.3008))
    end)
end
if World3 then
    tp2:Button("Port Towen",function()
        topos(CFrame.new(-610.309692, 57.8323097, 6436.33594))
    end)
    tp2:Button("Hydra Island",function()
        topos(CFrame.new(5229.99561, 603.916565, 345.154022))
    end)
    tp2:Button("Great Tree",function()
        topos(CFrame.new(2174.94873, 28.7312393, -6728.83154))
    end)
    tp2:Button("Castle on the Sea",function()
        topos(CFrame.new(-5477.62842, 313.794739, -2808.4585))
    end)
    tp2:Button("Floating Turtle",function()
        topos(CFrame.new(-10919.2998, 331.788452, -8637.57227))
    end)
    tp2:Button("Mansion",function()
        topos(CFrame.new(-12553.8125, 332.403961, -7621.91748))
    end)
    tp2:Button("Secret Temple",function()
        topos(CFrame.new(5217.35693, 6.56511116, 1100.88159))
    end)
    tp2:Button("Friendly Arena",function()
        topos(CFrame.new(5220.28955, 72.8193436, -1450.86304))
    end)
    tp2:Button("Beautiful Pirate Domain",function()
        topos(CFrame.new(5310.8095703125, 21.594484329224, 129.39053344727))
    end)
    tp2:Button("Teler Park",function()
        topos(CFrame.new(-9512.3623046875, 142.13258361816, 5548.845703125))
    end)
    tp2:Button("Peanut Island",function()
        topos(CFrame.new(-2142, 48, -10031))
    end)
    tp2:Button("Ice Cream Island",function()
        topos(CFrame.new(-949, 59, -10907))
    end)
    tp2:Button("Cake Loaf Island",function()
        topos(CFrame.new(-1811, 38, -11914))
    end)
end

local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer

getgenv().AntiAFK = true
	local VirsssssUser = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		if getgenv().AntiAFK then
			VirsssssUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			VirsssssUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end
	end)
	
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local WindowFocusReleasedFunction = function()
    RunService:Set3dRenderingEnabled(false)
    setfpscap(60)
    return
end

local WindowFocusedFunction = function()
    RunService:Set3dRenderingEnabled(true)
    setfpscap(360)
    return
end

local Initialize = function()
    UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
    UserInputService.WindowFocused:Connect(WindowFocusedFunction)
    return
end
Initialize()


spawn(function()
    while wait() do 
        pcall(function()
            if getgenv().W == true or getgenv().Start then
                game:GetService("RunService"):Set3dRenderingEnabled(false)
            elseif getgenv().W == false then
                game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if getgenv().W or getgenv().Start then
                game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = false
                else
                    game:GetService("Players").LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end)
    end
end)
        getgenv().BringMonster = true
        
    spawn(function()
        while task.wait() do
            pcall(function()
                if getgenv().BringMonster then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if getgenv().AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                            v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif getgenv().AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
                            v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                        if getgenv().AutoEctoplasm and StartEctoplasmMagnet then
                            if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.HumanoidRootPart.CFrame = EctoplasmMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if getgenv().AutoRengoku and StartRengokuMagnet then
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = RengokuMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if getgenv().AutoMusketeerHat and StartMagnetMusketeerhat then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = MusketeerHatMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if getgenv().Auto_EvoRace and StartEvoMagnet then
                            if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonEvo
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if getgenv().AutoBartilo and AutoBartiloBring then
                            if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBarto
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if getgenv().AutoFarmFruitMastery and StartMasteryFruitMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(80,180,80)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if getgenv().AutoFarmGunMastery and StartMasteryGunMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if getgenv().Auto_Bone and StartMagnetBoneMon then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 200 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBone
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if getgenv().AutoDoughtBoss and MagnetDought then
                            if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if getgenv().AutoCandy and StartMagnetCandy then
                            if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonCandy
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                
                            end
                        end
                        if getgenv().Auto_Cocoa and StartMagnetCocoaMon then
                            if (v.Name == "Cocoa Warrior [Lv. 2300]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name == "Candy Rebel [Lv. 2375]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 120 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                               -- v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBone
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
        end
    end)

local plr = game.Players.LocalPlayer

local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD()
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local au = debug.getupvalue(AC.attack, math.random(1,9))
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            local a9 = a9 ^ math.huge
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            debug.setupvalue(AC.attack, math.ramdom(1,9), a9)
            debug.setupvalue(AC.attack, math.huge, au)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end 
        end
    end
end
local SuperFastMode = false
local cac
if SuperFastMode then 
	cac=task.wait
else
	cac=wait
end

spawn(function()
    while cac() do
        pcall(function()
            if getgenv().Click then
                AttackNoCD()
            end
        end)
    end
end)

getgenv().Sfat = true
spawn(function()
while wait() do
pcall(function()
if getgenv().Sfat then
        for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
            if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" then
                v:Destroy() 
            end
        end
end
end)
end
end)



spawn(function()
local dj=game.Players.LocalPlayer
local dk=require(dj.PlayerScripts.CombatFramework.Particle)
local dl=require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
if not shared.orl then 
shared.orl=dl.wrapAttackAnimationAsync 
end
if not shared.cpc then 
shared.cpc=dk.play end
while wait()do 
pcall(function()
dl.wrapAttackAnimationAsync=function(dm,dn,dp,dq,dr)
local ds=dl.getBladeHits(dn,dp,dq)
if ds then 
dk.play=function()
end
dm:Play(0.1,0.1,0.1)dr(ds)dk.play=shared.cpc
wait(.1)
dm:Stop()
end 
end 
end)
end 
end)

local CombatFrameworkParticle = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local CombatFrameworkRigLib = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
for i,v in pairs(getreg()) do
    if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
        for x,w in pairs(debug.getupvalues(v)) do
             if typeof(w) == "table" then
                spawn(function()
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if getgenv().Sfat then
                            pcall(function()             
                                CameraShaker:Stop()
                                w.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                w.activeController.attacking = false
                                w.activeController.increment = math.huge
                                w.activeController.blocking = false                            
                                w.activeController.hitboxMagnitude = 50
    		                    w.activeController.humanoid.AutoRotate = true
    	                      	w.activeController.focusStart = 0
    	                      	w.activeController.currentAttackTrack = -math.huge
    	                        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
                                game.Players.LocalPlayer.Character.Humanoid.displaydistanceType = "None"
                                game.Players.LocalPlayer.Character.Stun.Value = 0
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                game.Players.LocalPlayer.Character.Busy.Value = false
                                game.Players.LocalPlayer.SimulationRadius = math.huge
                                setscriptable(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end)
                        end
                    end)
                end)
            end
        end
    end
end


spawn(function()
        pcall(function()
            while wait() do
                if getgenv().AutoFarm then
                    if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    end
                end
            end
        end)
end)

    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().Auto_Melee then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",getgenv().PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().Auto_Defense then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",getgenv().PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().Auto_Sword then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",getgenv().PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().Auto_Gun then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",getgenv().PointStats)
                    end
                end
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if getgenv().Auto_DevilFruit then
                    if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Devil Fruit",getgenv().PointStats)
                    end
                end
            end)
        end
    end)
    getgenv().AutoFullySuperhuman = false

    
        spawn(function()
            while wait() do
                pcall(function()
                    if getgenv().AutoFarm then
                    if getgenv().AutoFactory then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Core" and v.Humanoid.Health > 0 then
                                    getgenv().StartKai = false
                                    repeat task.wait()
                                        getgenv().StartKai = false
                                        AutoHaki() Click()
                                        
                                        topos(CFrame.new(448.46756, 199.356781, -441.389252))                                  
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    until v.Humanoid.Health <= 0 or getgenv().AutoFactory == false
                                end
                            end
                        else
                            getgenv().StartKai = true
                            end
                        end
                    end
                end)
            end
        end)
        
    spawn(function()
        while wait() do
            if getgenv().AutoBuyLegendarySword then
                pcall(function()
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "LegendarySwordDealer",
                        [2] = "3"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    if getgenv().AutoBuyLegendarySword_Hop and getgenv().AutoBuyLegendarySword and World2 then
                        wait(1)
                        Hop()
                    end
                end)
            end 
        end
    end)
    
    spawn(function()
        while wait() do
            if getgenv().AutoBuyEnchancementColour then
                local args = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if getgenv().AutoBuyEnchancementColour_Hop and getgenv().AutoBuyEnchancementColour and not World1 then
                    wait(10)
                    Hop()
                end
            end 
        end
    end)
    
				spawn(function()
					pcall(function()
						while wait() do
							if getgenv().AutoThirdSea then
								if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
									getgenv().AutoFarm = false
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress").KilledIndraBoss == false then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
											if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == "Bar" then
												if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
													if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
														if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
															wait(1.1)
															
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
														else
															topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
														end
														if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
															for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																if v.Name == "rip_indra [Lv. 1500] [Boss]" then
																	repeat game:GetService("RunService").Heartbeat:wait()
																		
																		pcall(function()
																			
																			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,25))
																			require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
																			game:GetService'VirtualUser':CaptureController()
																			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
																			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																		end)
																	until getgenv().AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
																end
															end
														elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
															topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
														end
													elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
														if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
															if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
																for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																	if v.Name == "Don Swan [Lv. 1000] [Boss]" then
																		repeat game:GetService("RunService").Heartbeat:wait()
																			pcall(function()
																				 
																				topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,25))
																				require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework).activeController.hitboxMagnitude = 1000
																				game:GetService'VirtualUser':CaptureController()
																				game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																			end)
																		until getgenv().AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
																	end
																end
															else
																if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
																	wait()
																end
																topos(CFrame.new(2284.912109375, 15.537666320801, 905.48291015625))
															end
														elseif getgenv().AutoThirdSea and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
															Hop()
														elseif not getgenv().AutoThirdSea and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
															if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
																wait()
															end
															topos(CFrame.new(2284.912109375, 15.537666320801, 905.48291015625))
														end
													end
												elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
													for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
														if string.find(v.Name, "Fruit") then
															if v:IsA("Tool") then
																if (v.Handle.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20000 then
																	v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
																end
															end
														end
													end
													if game.Players.LocalPlayer.Backpack:FindFirstChild("Quake Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("String Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Paw Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dough Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Venom Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Control Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Quake Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("String Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Paw Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Dough Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Venom Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Control Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Fruit") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
													end
												end
											else
												topos(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
											end
										else
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
												if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
													if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
														for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
															if v.Name == "Swan Pirate [Lv. 775]" then
																PosMonBarto =  v.HumanoidRootPart.CFrame
																pcall(function()
																	repeat wait()
																		for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
																			if x.Name ==  "Swan Pirate [Lv. 775]"  then
																				x.HumanoidRootPart.Size = Vector3.new(5,5,5)
																				x.HumanoidRootPart.Transparency = 1
																				x.HumanoidRootPart.CanCollide = false
																				x.HumanoidRootPart.CFrame = PosMonBarto
																				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																			end
																		end
									    
																		v.HumanoidRootPart.CanCollide = false
																		v.HumanoidRootPart.Size = Vector3.new(5, 5, 5)
																		topos( v.HumanoidRootPart.CFrame * CFrame.new(0,15,0))
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))                           
																	until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
																end)
															end
														end
													else
														topos(CFrame.new(1057.92761, 137.614319, 1242.08069))
													end
												else
													topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
													wait(1.1)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
												end
											elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
												if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
												Mon = "Jeremy [Lv. 850] [Boss]"
													for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
														if v.Name == Mon then
															repeat wait()
																
																v.HumanoidRootPart.CanCollide = false
																v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
																topos(v.HumanoidRootPart.CFrame * CFrame.new(0,15,0))
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															until not v.Parent or v.Humanoid.Health <= 0
														end
													end
												elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
													topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
													wait(1.1)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
													wait(1)
													topos(CFrame.new(2099.88159, 448.931, 648.997375))
													wait(2)
												else
													topos(CFrame.new(2099.88159, 448.931, 648.997375))
												end
												wait(15)
												if not game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
													Hop()
												end
											elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
												topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
												wait(1.5)                                                                  
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368) 
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 15.795166, 1717.90625)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 15.8604736, 1724.79541)
												wait(1.5)
											end
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									end
								end
							end
						end
					end)
				end)
				spawn(function()
					pcall(function()
						while wait(.1) do wait(5)
							if getgenv().AutoThirdSea and World2 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Quake Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("String Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Paw Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dough Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Venom Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Control Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Quake Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("String Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Rumble Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Paw Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Gravity Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Dough Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Shadow Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Venom Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Control Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Fruit") then
											Hop()
										end
									end
								end
							end
						end
					end)
				end)
				
    spawn(function()
        while wait() do
            if getgenv().Buddy then
                if World2 and World1 then
                    FristSea()
                    end
                        pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki() Click()
                                                
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(5,-50,-30))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                            until not getgenv().AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                else
                                    if getgenv().CanHop then
                                        Hop()
                                    end
                                end
                            end
                        end)
                    end
                end
    end)
        
    spawn(function()
        while wait() do
            if getgenv().Pole then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God [Lv. 575] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki() Click()
                                        
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,-50,-30))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God [Lv. 575] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if getgenv().CanHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    
    spawn(function()
        while wait() do
            if getgenv().LongSword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Diamond [Lv. 725] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Diamond [Lv. 725] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki() Click()
                                        
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(5,-50,-30))
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not getgenv().LongSword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Diamond [Lv. 725] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diamond [Lv. 725] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        else
                            if getgenv().CanHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)
    

    function Do_Superhuman()
        pcall(function()
            fagmet7 = game:GetService("Players").localPlayer.Data.Fragments.Value
            if not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                local args = {
                    [1] = "BuySuperhuman"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if not buy_first1 and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                local args = {
                    [1] = "BuyElectro"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                buy_first1 = true
            elseif not buy_first and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                buy_first1 = true
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat")then
                getgenv().SelectToolWeapon = "Combat"
                local args = {
                    [1] = "BuyElectro"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    
            
            elseif game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                getgenv().SelectToolWeapon = "Superhuman"
                if (game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 330) or (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 330) then
                    supperhuma330 = true
                    getgenv().supperhuma330 = true
                    --[[if string.find(getgenv().Make_Melee,"Superhuman") and string.find(getgenv().Make_Melee,"Electric Claw") and string.find(getgenv().Make_Melee,"Dargon Talon") then
                        buy_first = false
                    end]]
                end
            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
                    getgenv().SelectToolWeapon = "Electro"
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
                    getgenv().SelectToolWeapon = "Black Leg"
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
                    getgenv().SelectToolWeapon = "Fishman Karate"
                
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    getgenv().SelectToolWeapon = "Dragon Claw"
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyBlackLeg"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyBlackLeg"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyFishmanKarate"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
                    local args = {
                        [1] = "BuyFishmanKarate"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300) then
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "1"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    local args = {
                        [1] = "BlackbeardReward",
                        [2] = "DragonClaw",
                        [3] = "2"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                        if fagmet7 < 1500 then
                            print("Fram fgment do superhuman")
                            Melee_raid = true
                            Trade_FAgmen()
                        else
                            Melee_raid = false
                        end
                    end
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    Melee_raid = false
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                    Melee_raid = false
                    local args = {
                        [1] = "BuySuperhuman"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
                    Melee_raid = false
                    local args = {
                        [1] = "BuySuperhuman"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end 
            end
        end)
    end
    
    function DO_ElectricClaw()
        MyLevel = game:GetService("Players").localPlayer.Data.Level.Value
        beli7 = game.Players.LocalPlayer.Data.Beli.Value
        fagmet7 = game:GetService("Players").localPlayer.Data.Fragments.Value
        pcall(function()
            if not game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and not Electricclow330 then
                local args = {
                    [1] = "BuyElectricClaw"
                    }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
            if not buy_first2 and not game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") then
                local args = {
                    [1] = "BuyElectro"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                buy_first2 = true
            elseif not buy_first2 and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") then
                buy_first2 = true
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
                getgenv().SelectToolWeapon = "Combat"
                local args = {
                    [1] = "BuyElectro"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            elseif game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") then
                getgenv().SelectToolWeapon = "Electric Claw"
                Melee_raid = false
                Buy_ElectricClaw = true
                if (game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 330) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 330) then
                    Electricclow330 = true
                    getgenv().Electricclow330 = true
                    local args = {
                        [1] = "BuySuperhuman"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    --[[if string.find(getgenv().Make_Melee,"Superhuman") and string.find(getgenv().Make_Melee,"Electric Claw") and string.find(getgenv().Make_Melee,"Dargon Talon") then
                        buy_first = false
                    end]]
                end
            
            elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro")) or ((game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) and electro400mas and not Electricclow330) then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and not electro400mas then
                    getgenv().SelectToolWeapon = "Electro"
                    Melee_raid = false
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    getgenv().SelectToolWeapon = "Superhuman"
                end
                if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400) or (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400) or electro400mas then
                    electro400mas = true
                    local args = {
                        [1] = "BuyElectricClaw"
                        }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    print("try buy eleClaw")
                    if not game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and electro400mas and World3 and fagmet7 >= 5000 and beli7 >= 3000000 and not raidiing then
                        repeat wait()
                            Melee_raid = false
                            if AFMain then
                                getgenv().AutoFarm = false
                                
                            end
                            NoclipSys = true
                            repeat wait()
                                if AFMain then
                                    getgenv().AutoFarm = false
                                    
                                end
                                NoclipSys = true
                                topos(CFrame.new(-10368.2354, 331.654266, -10125.4043))
                                if (CFrame.new(-10368.2354, 331.654266, -10125.4043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    local args = {
                                        [1] = "BuyElectricClaw",
                                        [2] = true
                                        }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "BuyElectricClaw",
                                        [2] = "Start"
                                        }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            until (CFrame.new(-10368.2354, 331.654266, -10125.4043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 or not string.find(getgenv().Make_Melee,"Electric Claw") or not getgenv().AutoMeleeWeapon or raidiing
                            --game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10368.2354, 331.654266, -10125.4043)
                            wait(1)
                            repeat wait()
                                if AFMain then
                                    getgenv().AutoFarm = false
                                    
                                end
                                NoclipSys = true
                                topos(CFrame.new(-12551.9375, 337.168243, -7483.50439))
                                if (CFrame.new(-12551.9375, 337.168243, -7483.50439).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                                    wait(5)
                                    local args = {
                                        [1] = "BuyElectricClaw"
                                        }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                wait(2)
                                ez_ELETR = tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
                            until ((CFrame.new(-12551.9375, 337.168243, -7483.50439).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 and ((game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or ez_ELETR == "1" or ez_ELETR == "0" or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw"))) or not string.find(getgenv().Make_Melee,"Electric Claw") or not getgenv().AutoMeleeWeapon or raidiing)
                            --game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12551.9375, 337.168243, -7483.50439)
                            wait(5)
                            ez_ELETR = tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
                            wait(1)
                            if getgenv().Team == "Marines" then
                                local args = {
                                    [1] = "SetTeam",
                                    [2] = "Marines"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            else
                                local args = {
                                    [1] = "SetTeam",
                                    [2] = "Pirates"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            if game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or ez_ELETR == "1" or ez_ELETR == "0" then
                                Buy_ElectricClaw = true
                                if AFMain then
                                    getgenv().AutoFarm = true
                                    
                                end
                                NoclipSys = false
                            end
                        until game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or not string.find(getgenv().Make_Melee,"Electric Claw") or not getgenv().AutoMeleeWeapon or raidiing or Buy_ElectricClaw
                    elseif ((game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 330) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 330)) and not Electricclow330 then
                        Electricclow330 = true
                        Melee_raid = false
                        local args = {
                            [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        --[[if string.find(getgenv().Make_Melee,"Superhuman") and string.find(getgenv().Make_Melee,"Electric Claw") and string.find(getgenv().Make_Melee,"Dargon Talon") then
                            buy_first = false
                        end]]
                    else
                        print("not term enough ")
                        if fagmet7 < 5000 and not Buy_ElectricClaw then
                            print("open raid for melee")
                            Melee_raid = true
                            Trade_FAgmen()
                        else
                            Melee_raid = false
                        end
                        print(Melee_raid)
                        electro400mas = true
                        local args = {
                            [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        getgenv().SelectToolWeapon = "Superhuman"
                    end
                end
            elseif (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) and Electricclow330 then
                getgenv().SelectToolWeapon = "Superhuman"
                if Electricclow330 then
                    Melee_raid = false
                end
            end
        end)
    end
    spawn(function()
        if World3 then
            while wait(1) do
                pcall(function()
                    dragontl = tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
                    if dragontl ~= ("Set your heart ablaze.") then
                        fire_TL_can_trad = true
                    end
                    wait(10)
                end)
            end
        end
    end)
    function Do_DragonTalon()
        beli7 = game.Players.LocalPlayer.Data.Beli.Value
        fagmet7 = game:GetService("Players").localPlayer.Data.Fragments.Value
        MyLevel = game.Players.LocalPlayer.Data.Level.Value
        if World3 then
            pcall(function()
                if fire_TL_can_trad then
                    print("do talon")
                    if not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and not Talon350 then
                        local args = {
                            [1] = "BuyDragonTalon"
                            }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    end
                    if not buy_first3 and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then
                        local args = {
                            [1] = "BlackbeardReward",
                            [2] = "DragonClaw",
                            [3] = "1"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "BlackbeardReward",
                            [2] = "DragonClaw",
                            [3] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                            buy_dargonclaw = true
                        end
                        buy_first3 = true
                    elseif not buy_first and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then
                        buy_first3 = true
                    end
                    if Talon350 then
                        Melee_raid = false
                        local args = {
                            [1] = "BuySuperhuman"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        getgenv().SelectToolWeapon = "Superhuman"
                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then
                        getgenv().SelectToolWeapon = "Dragon Talon"
                        Melee_raid = false
                        if ((game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 350) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 350)) then
                            Talon350 = true
                            getgenv().Talon350 = true
                            local args = {
                                [1] = "BuySuperhuman"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            getgenv().SelectToolWeapon = "Superhuman"
                            --[[if string.find(getgenv().Make_Melee,"Superhuman") and string.find(getgenv().Make_Melee,"Electric Claw") and string.find(getgenv().Make_Melee,"Dargon Talon") then
                                buy_first = false
                            end]]
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") or DragonClow400 then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                            getgenv().SelectToolWeapon = "Dragon Claw"
                        end
                        if not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then
                            if ((game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400)) or DragonClow400 then
                                DragonClow400 = true
                                local args = {
                                    [1] = "BuyDragonTalon",
                                    [2] = true
                                    }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                    [1] = "BuyDragonTalon"
                                    }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                if not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and DragonClow400 and fagmet7 >= 5000 and beli7 >= 3000000 then
                                    local args = {
                                        [1] = "BuyDragonTalon",
                                        [2] = true
                                        }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "BuyDragonTalon"
                                        }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                elseif fagmet7 < 5000 then
                                    Melee_raid = true
                                    Trade_FAgmen()
                                else
                                    Melee_raid = false
                                end
                                local args = {
                                    [1] = "BuySuperhuman"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                getgenv().SelectToolWeapon = "Superhuman"
                            elseif ((game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value < 400) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value < 400)) or not DragonClow400 then
                                local args = {
                                    [1] = "BlackbeardReward",
                                    [2] = "DragonClaw",
                                    [3] = "1"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                    [1] = "BlackbeardReward",
                                    [2] = "DragonClaw",
                                    [3] = "2"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                getgenv().SelectToolWeapon = "Dragon Claw"
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                                    buy_dargonclaw = true
                                end
                            end
                        end
                    elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and not DragonClow400 and not buy_dargonclaw then
                        local args = {
                            [1] = "BlackbeardReward",
                            [2] = "DragonClaw",
                            [3] = "1"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        local args = {
                            [1] = "BlackbeardReward",
                            [2] = "DragonClaw",
                            [3] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                            buy_dargonclaw = true
                        end
                        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                            if fagmet7 < 1500 then
                                Melee_raid = true
                                Trade_FAgmen()
                            end
                        else
                            Melee_raid = false
                        end
                    elseif (game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")) and Talon350 then
                        getgenv().SelectToolWeapon = "Superhuman"
                    end
                end
            end)
        end
    end

function Do_SharkmanKarate()
    pcall(function()
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value <= 399 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                EquipWeapon("Fishman Karate")
                if getgenv().AutoFarm == false then
                    getgenv().AutoFarm = true
                else
                    EquipWeapon("Fishman Karate")
                end
            end
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
                    if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                        
                        end
                        else
                            Mon = "Tide Keeper [Lv. 1475] [Boss]"
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then   
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == Mon then    
                                        OldCFrameShark = v.HumanoidRootPart.CFrame
                                        repeat task.wait()
                                            AutoHaki()
                                            Click()
                                            v.Head.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                            v.HumanoidRootPart.CFrame = OldCFrameShark
                                            topos(v.HumanoidRootPart.CFrame*CFrame.new(5,10,7))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until not v.Parent or v.Humanoid.Health <= 0 or getgenv().S ~= "SharkmanKarate" or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
                                    end
                                end
                            else
                                if World3 or World1 then
                                    SecondSea()
                                end
                                topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
                                wait(3)
                            end
                        end
                    else 
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    end
    end)
end
    onemilFut = {"Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
    onemilFut2 = {"Quake Fruit","Human: Buddha Fruit","String Fruit","Bird: Phoenix Fruit","Rumble Fruit","Paw Fruit","Gravity Fruit","Dough Fruit","Shadow Fruit","Venom Fruit","Control Fruit","Soul Fruit","Dragon Fruit"}
    if World2 then
        n1:Toggle("Auto Third World",getgenv().autoSea3,function(vu)
            getgenv().autoSea3 = vu
            if vu == false then
                trygettrevo = false
            end
        end)
        spawn(function()
            killsawn = false
            while wait() do
                local MyLevel = game.Players.LocalPlayer.Data.Level.Value
                if getgenv().autoSea3 and MyLevel >= 1500 and not raidiing then
                    pcall(function()
                        spawn(function()
                            local args = {
                                [1] = "ZQuestProgress",
                                [2] = "Zou"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            local args = {
                                [1] = "TravelZou"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        end)
                        local args = {[1] = "TalkTrevor",[2] = "1"}
                        che_tre = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        print("try go sea 3")
                        if che_tre == true then
                            NoclipSys = false
                            trygettrevo = false
                            local args = {
                                [1] = "TalkTrevor",
                                [2] = "1"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            local args = {
                                [1] = "TalkTrevor",
                                [2] = "2"
                            }
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        elseif che_tre == 0 then
                            if AFMain then
                                getgenv().AutoFarm = false
                            end
                            trygettrevo = false
                            if not killsawn then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
                                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                            if getgenv().autoSea3 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == ("Don Swan [Lv. 1000] [Boss]") then
                                                repeat wait()
                                                    pcall(function()
                                                        if AFMain then
                                                            getgenv().AutoFarm = false
                                                        end
                                                        NoclipSys = true
                                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                            local args = {
                                                                [1] = "Buso"
                                                            }
                                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        end
                                                        startATkmOb = true
                                                        AutoHaki() Click()
                                                        topos(v.HumanoidRootPart.CFrame*CFrame.new(20, 30, 5))
                                                        killsawn = true
                                                        v.Humanoid:ChangeState(14)
                                                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        game:GetService'VirtualUser':CaptureController()
                                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    end)
                                                until not getgenv().autoSea3 or not v.Parent or v.Humanoid.Health <= 0 or (not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and killsawn == true)
                                                NoclipSys = false
                                                if AFMain then
                                                    getgenv().AutoFarm = true
                                                end
                                            end
                                        end
                                    else
                                        NoclipSys = true
                                        topos(CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072))
                                    end
                                elseif not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not killsawn then
                                    wait(2)
                                    Teleport() --loadstring(game:HttpGet("https://raw.githubusercontent.com/SEA0101/sea-dev/main/Hop%20server.lua"))()
                                end
                            elseif killsawn then
                                if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if getgenv().autoSea3 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == ("rip_indra [Lv. 1500] [Boss]") then
                                            repeat wait()
                                                pcall(function()
                                                    if AFMain then
                                                        getgenv().AutoFarm = false
                                                    end
                                                    NoclipSys = true
                                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                        local args = {
                                                            [1] = "Buso"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end
                                                    startATkmOb = true
                                                    EquipWeapon(getgenv().SelectToolWeapon)
                                                    topos(v.HumanoidRootPart.CFrame*CFrame.new(20, 30, 5))
                                                    v.Humanoid:ChangeState(14)
                                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    game:GetService'VirtualUser':CaptureController()
                                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                    spawn(function()
                                                        local args = {
                                                            [1] = "ZQuestProgress",
                                                            [2] = "Zou"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                        local args = {
                                                            [1] = "TravelZou"
                                                        }
                                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                    end)
                                                end)
                                            until not getgenv().autoSea3 or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]")
                                            NoclipSys = false
                                            if AFMain then
                                                getgenv().AutoFarm = true
                                            end
                                        end
                                    end
                                else
                                    NoclipSys = true
                                    topos(CFrame.new(-26810.6133, 28.6472206, 303.812561, -0.328174949, -3.78227366e-10, 0.944616973, -1.00148327e-07, 1, -3.43927091e-08, -0.944616973, -1.05888653e-07, -0.328174949))
                                end
                            end
                        elseif che_tre == 1 then
                            NoclipSys = false
                            trygettrevo = true
                            trevo_getf_co = false
                            for plys,n1 in pairs(game:GetService("Players"):GetChildren()) do
                                playerInGam_BF = plys
                            end
                            if playerInGam_BF <= 9 then
                                Teleport() --loadstring(game:HttpGet("https://raw.githubusercontent.com/SEA0101/sea-dev/main/Hop%20server.lua"))()
                            end
                            for i,e in pairs(onemilFut) do
                                local args = {
                                    [1] = "LoadFruit",
                                    [2] = e
                                }
                                trevo_getf_co = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                if trevo_getf_co then
                                   break
                                end
                            end	
                            if not trevo_getf_co then
                                wait(300)
                            end
                        elseif che_tre == 2 then
                            NoclipSys = false
                            trygettrevo = true
                            for i,f in pairs(onemilFut2) do
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(f) or game.Players.LocalPlayer.Character:FindFirstChild(f) then
                                    local args = {
                                        [1] = "TalkTrevor",
                                        [2] = "1"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    local args = {
                                        [1] = "TalkTrevor",
                                        [2] = "3"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    break
                                end
                            end 
                        end
                    end)
                else
                    trygettrevo = false
                end
            end
        end)
    end


m1:Toggle("AutoFarm Fish Tail",getgenv().Fishtail,function(v)
    getgenv().Fishtail = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)


spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Fishtail == true then
                game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1775
            elseif getgenv().MagmaOre == true then
                if World3 or World1 then
                    SecondSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1175
                end
            elseif getgenv().Mystic == true then
                if World3 or World1 then
                    SecondSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1450
                end
            elseif getgenv().DragonScale == true then
                if World2 or World1 then
                    ThirdSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1575
                end
            elseif getgenv().MetalScrap == true then
                if World2 or World1 then
                    ThirdSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1500
                end
            elseif getgenv().Lather == true then
                if World2 or World1 then
                    ThirdSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1825
                end
            elseif getgenv().MiniTusk == true then
                if World2 or World1 then
                    ThirdSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1850
                end
            elseif getgenv().DemonicWisp == true then
                if World2 or World1 then
                    ThirdSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 2050
                end
            elseif getgenv().Bone == true then
                if World2 or World1 then
                    ThirdSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 2025
                end
            elseif getgenv().GunpowDer == true then
                if World2 or World1 then
                    ThirdSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 1525
                end
            elseif getgenv().Uranuim == true then
                if World3 or World1 then
                    SecondSea()
                else
                    game:GetService("Players")["LocalPlayer"].Data.Level.Value = 800
                end
			end
		end)
	end
end)
m1:Toggle("AutoFarm Magma Ore",getgenv().MagmOre,function(v)
    getgenv().MagmaOre = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Mysic Droplet",getgenv().Mystic,function(v)
    getgenv().Mystic = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Dragon Scale",getgenv().DragonScale,function(v)
    getgenv().DragonScale = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Lather",getgenv().Lather,function(v)
    getgenv().Lather = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Mini Tusk",getgenv().MiniTusk,function(v)
    getgenv().MiniTusk = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Scrap Metal",getgenv().MetalScrap,function(v)
    getgenv().MetalScrap = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Bone",getgenv().Bone,function(v)
    getgenv().Bone = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Demonic Wisp",getgenv().DemonicWisp,function(v)
    getgenv().DemonicWisp = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm Radioactive Ore",getgenv().Uranuim,function(v)
    getgenv().Uranuim = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

m1:Toggle("AutoFarm GunpowDer",getgenv().GunpowDer,function(v)
    getgenv().GunpowDer = v if v == true then getgenv().AutoFarm = true else getgenv().AutoFarm = false end
end)

local Items = {
    "Katana",
    "Dual Katana",
    "Triple Katana",
    "Soul Cane",
    "Long Sword",
    "Jitte",
    "Buddy Sword",
    "Cavender",
    "Tushita",
    "Cursed Dual Katana",
    "Spikey Trident",
    "True Triple Katana",
    "Soul Guitar",
    "Shisui",
    "Wando",
    "Saddi",
    "Pole (1st Form)",
    "Pole (2nd Form)",
    "Twin Hook",
    "Dragon Trident",
    "Acuduim Rifle",
    "Sparent Bow",
    "Bizare Rifle",
    "Bizare Sword",
    "Kabucha",
    "Cannon",
}
local Item = m2:Drop("Select","Items",false,Items,function(v)
   getgenv().Select = v
end)
m2:Button("View Upgrade Select",function()
    for i,v in pairs(Items) do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeItem","Check",v)
    end
end)

m2:Button("Upgrade Seelect",function()
    for i,v in pairs(Items) do
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeItem","Check",v)
    end
end)


function SecondSea()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end
function ThirdSea()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end

getgenv().Config = {
    --[Main]--
    Make_Melee = {
        "Superhuman";
        "DeathStep";
        "SharkmanKarate";
        "ElectricClaw";
        "DragonTalon";
        "GodHuman";
    };
    SelectWeapom = {
        "Melee";
        "Swords";
        "Devil Fruit";
        "Gun";
    };
    AutoFarm = false;
    FastAttack = true;
    SuperFastAttack = false;
    AutoDoughtBoss = false;
    AutoBudySword = false;
    AutoDarkDagger = false;
    AutoCavender = false;
    AutoLongSword = false;
    AutoBizzareSword = false;
    AutoBizzareRifle = false;
    AutoEctoplasm = false;
    AutoJitte = false;
    AutoDragonTrident = false;
    AutoPole = false;
    AutoRengoku = false;
    AutoSaber = false;
    AutoSharkSword = false;
    AutoHallowScythe = false;
    AutoTwinHook = false;
    AutoBuyLegendarySword = false;
    --[Misc]--
    AutoBuyEnchancementColour = false;
    WhiteScreen = false;
    CanHop = false;
    AutoSecondSea = false;
    autoSea3 = false;
    BringMonster = true;
    AutoBountyHunter = false;
    AutoFarmBone = false;
    AutoRejoin = false;
    AutoJoinPivateServer = false;
    KickLevel = false;
    LevelKickValue = 2300;
    --[Raids]--
    AutoRaid = false;
    SelectRaids = {};
    AutoBuyChip = false;
    AutoNextIsland = false;
    AutoStartRaid = false;
    AutoAwakening = false;
    KillAura = false;
    --[Materials]--
    MetalScrap = false;
    GunpowDer = false;
    DragonScale = false;
    Fishtail = false;
    Lather = false;
    MiniTusk = false;
    Bone = false;
    DemonicWisp = false;
    Cocoa = false;
    Uranuim = false;
    VampireTeeth = false;
}

spawn(function()
    while wait(1) do
        Save()
        wait(3)
        Load()
    end
end)

function Save()
    if (writefile) then
        writefile('DaiNo_Config.json',game:GetService("HttpService"):JSONEncode(getgenv().Config))print("Saved")
    else
        print("Cant Save To Your Executoor")
    end
end

function Load()
    if (readfile and isfile and isfile('DaiNo_Config.json')) then
        getgenv().Config = game:GetService("HttpService"):JSONDecode(readfile('DaiNo_Config.json'))
        for i, v in pairs(getgenv().Config) do
            print(i,v)
        end
    end
end


local SuperFastMode =true -- Change to true if you want Super Super Super Fast attack (Like instant kill) but it will make the game kick you more than normal mode


local plr = game.Players.LocalPlayer

local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function ServerHits() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            inc = inc + 1 ^ 7 ^ 3 / 1 +9 *3
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, inc, "") 
            end
        end
    end
end
local cac
if getgenv().UltraFastAttack then 
	cac=task.wait
else
	cac=wait
    if inc > 1000000 then
        inc = 0
    end
end
