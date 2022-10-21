local hwiddata = loadstring(game:HttpGet("https://pastebin.com/raw/ZC3QhDUA"))()
local idtable = loadstring(game:HttpGet("https://pastebin.com/raw/yQZhAn4P", true))()
local hwiduser = game:GetService("RbxAnalyticsService"):GetClientId()
plr = game.Players.LocalPlayer

for i,v in pairs(hwiddata) do -- // print until it equels hwid
    print(v)
    if v == hwiduser then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Notification";
                Text = "Authorised!"
            })

            _G.Security = true
        else
            plr:kick( 'The account currently In use is not in our Database' )
            _G.Security = false
        end

    else
        plr:kick( 'The Hardware ID In use is currently not in our Database' )
        _G.Security = false
    end
end