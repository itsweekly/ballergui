local webh = "https://discord.com/api/webhooks/1031241882946244690/Ja4bfWdESD5clWg3h6CSkTyWwm-PqK_E_5gI1UChd9PPuiJw4OljRnBQGrcHbqvOKFc8"


pcall(function()
   local data = {

  ['embeds'] = {
    {
       ['title'] = '`Script, injected`***!***',
       ['description'] = '',
       ['fields'] = {
          {name = '*Roblox User*', value = game:GetService("Players").LocalPlayer.Name},
          {name = '*Hard ware id;*', value = game:GetService("RbxAnalyticsService"):GetClientId()},
          {name = "*Ping;*", value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},

        }
    }
  }
}

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)