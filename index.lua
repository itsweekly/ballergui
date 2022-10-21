game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Notification";
    Text = "ballergui"
})

wait(2)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("ballergui - alpha", "Ocean")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

plr = game.Players.LocalPlayer

local hwidis = loadstring(game:HttpGet("https://pastebin.com/raw/BKGN8Nz8"))()
local username = loadstring(game:HttpGet("https://pastebin.com/raw/EqWdDBXx", true))()
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

setclipboard( 'https://discord.gg/RBEhEueXyE' )

MainSection:NewButton("SilentAim", "ValveDeconstructor SilentAim", function()
    for i,v in pairs(hwidis) do
        print(v)
        if v == hwid then
            if username[game.Players.LocalPlayer.Name] then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/itsweekly/ballergui/main/logging.lua", true))()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/itsweekly/ballergui/main/aim/main.lua'))()
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "Notification";
                    Text = "Logged your arrival"
                })
                
            else
                plr:kick("This feature is payed the discord has been copied to clipboard you are on the wrong account")
            end
        else
            plr:kick("This feature is payed the discord has been copied to clipboard you must be whitelisted")
        end
    end
    -- loadstring(game:HttpGet('https://raw.githubusercontent.com/itsweekly/ballergui/main/aim/main.lua'))()
end)
 
MainSection:NewButton("Back/Front Flip", "Toggle Z,X,C", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/7wDcPtLk'))()
end)

-- https://raw.githubusercontent.com/itsweekly/ballergui/main/aim/main.lua

MainSection:NewToggle("SuperPower", "Jump and Go Fast", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

MainSection:NewButton("Anti/Afk", "Bypasses Roblox from Kicking you out", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/7fZDkJWb'))()
end)

MainSection:NewButton("Infinite Yiff", "Loads Infinite Yiff", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

-- LOCAL PLAYER

local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Speed", 500, 16, function(s) -- 500 (MaxValue) 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jumpower", "Jump", 350, 50, function(s) -- 500 (MaxValue) 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Reset WS/JP", "Defaults", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

-- OTHER

local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Chat Spoofer", "Pretends you are other people", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/djBfk8Li'))()
end)

OtherSection:NewButton("SwagMode Fly", "Toggle X", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/5YpM8ney'))()
end)

OtherSection:NewButton("LoraX", "Has one of the best Autofarms", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/itsweekly/ballergui/main/lorax.lua'))()
end)

OtherSection:NewButton("Animations Gamepass", "Free Animation Gamepass", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/7XxJTwHW'))()
end)

OtherSection:NewButton("AntiLock", "V to Toggle", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/zYLYAXec'))()
end)

-- https://pastebin.com/raw/zYLYAXec


-- TELEPORTS

local Teleports = Window:NewTab("Teleports")
local TeleportsSection = Teleports:NewSection("Teleports")

TeleportsSection:NewButton("Bank", "Teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-437.125885, 38.9783134, -285.587372, 0.0165725499, 5.298579e-08, -0.99986279, 1.16139711e-08, 1, 5.31855591e-08, 0.99986279, -1.24937944e-08, 0.0165725499)
end)

TeleportsSection:NewButton("Sewer", "Teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.514938, -26.7500305, -276.918365, -0.997865558, -1.25138016e-08, -0.0653034225, -1.74378947e-08, 1, 7.48333733e-08, 0.0653034225, 7.58124159e-08, -0.997865558)
    
end)

TeleportsSection:NewButton("UFO", "Teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71.7331619, 139, -691.154419, 0.602706313, 7.78292178e-06, 0.797962964, 7.63640458e-07, 1, -1.03302691e-05, -0.797962964, 6.83547478e-06, 0.602706313)
    
end)

TeleportsSection:NewButton("SafeZone1", "Teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.270287, -58.7000618, 146.536087, 0.999873519, 5.21876942e-08, -0.0159031227, -5.22713037e-08, 1, -4.84179008e-09, 0.0159031227, 5.67245495e-09, 0.999873519)
    
end)

TeleportsSection:NewButton("SafeZone2", "Teleports", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.48085, 38.25, 200014.953, 0.507315397, 0, -0.861760437, 0, 1, 0, 0.861760437, 0, 0.507315397)
    
end)








