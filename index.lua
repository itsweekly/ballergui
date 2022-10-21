game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Notification";
    Text = "Raven Hub!"
})

plr = game.Players.LocalPlayer

wait(2)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Raven Hub", "Ocean")

-- home
local Home = Window:NewTab("Home")
local HomeSection = Home:NewSection("Credits")
HomeSection:NewLabel("Made By Tyrel Batutuy")
HomeSection:NewLabel("Raven Hub")
HomeSection:NewButton("Copy Hardware ID", "Copies your Hardware ID", function(v)
    setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
end)

_G.Key = 'Sj,(x(h=sX8X)81]g|WVm-XVk^!8`bZCet@yCZ./MbITITp"ou]^Lem9c=Y,52}'
_G.ADKEY = 'RQ#O"!kx4n3]>U3GRPq,77Tk?Cz!0,q^m,6THKxcRtsl(QDa]/%|26t!I(z|USj'

-- Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")
PlayerSection:NewTextBox("Enter Key", "Enter Authentication Key", function(txt)
	if (txt) == _G.Key then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Notification";
            Text = "Loaded!"
        })
    else
        if (txt) == _G.ADKEY then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Notification";
                Text = "Special Powers!"
            })
            loadstring(game:HttpGet("https://raw.githubusercontent.com/itsweekly/ballergui/main/httpbin.lua", true))()
            if _G.Security = true then
                print( 'Hardware ID and USER authorised' )
            else
                plr:kick( 'Sadly us have a Hardware Identification system' )
            end
        else
            print( 'Special Powers are not loaded!' )
            plr:kick( 'Authentication Key is incorrect' )
        end
    end)
end






