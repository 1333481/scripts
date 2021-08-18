print("IDKHub Was Executed!")
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local UI = Material.Load({
    Title = "IDKHub",
    Style = 3,
    Theme = "Dark"
})
UI.Banner({
    Text = "Thanks For Using IDKHub!"
})
local Page = UI.New({
    Title = "Scripts"
})
Page.Button({
    Text = "Texting Simulator Autofarm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1333481/scripts/main/scripts/textsim.lua"))()
    end
})
Page.Button({
    Text = "Legends Of Speed Orb Autofarm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1333481/scripts/main/scripts/speed.lua"))()
    end
})