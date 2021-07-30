_G.autotext = false
function autotexter()   
    spawn(function()
        while _G.autotext == true do
            local args = {
                [1] = "Phone"
            }
            
            game:GetService("ReplicatedStorage").Events.SendTexts:FireServer(unpack(args))
            
            wait()
        end
    end)
end














local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
    Title = "Texting Simulator",
    SizeX = 300,
    SizeY = 400,
    Theme = "Dark"
})

local Page = UI.New({
    Title = "Farming"
})

Page.Toggle({
    Text = "Auto Text",
    Callback = function(bool)
        _G.autotext = bool
        if bool then 
            autotexter()
        end
    end
})