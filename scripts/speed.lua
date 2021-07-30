_G.autoorb = false
function autoorb()
    spawn(function()
        while _G.autoorb == true do
            local args = {
                [1] = "collectOrb",
                [2] = "Red Orb",
                [3] = "City"
            }
        
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            wait()
        end
    end)    
end

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local UI = Material.Load({
    Title = "Legends Of Speed GUI",
    SizeX = 300,
    SizeY = 400,
    Theme = "Dark"
})
local Page = UI.New({
    Title = "Main"
})
Page.Toggle({
    Text = "Auto Orb",
    Callback = function(bool)
        _G.autoorb = bool
        if bool then
            autoorb()
        end
    end
})