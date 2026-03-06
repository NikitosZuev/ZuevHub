local BASE_URL = "https://raw.githubusercontent.com/NikitosZuev/ZuevHub/main/src/"

local function githubRequire(path)

    local url = BASE_URL .. path .. ".lua"

    local success, result = pcall(function()
        return game:HttpGet(url)
    end)

    if not success then
        error("Failed to download module: "..path)
    end

    local module = loadstring(result)()

    return module
end


local Services = githubRequire("Core/Services")
local SettingsManager = githubRequire("Core/SettingsManager")

local UIBuilder = githubRequire("UI/UIBuilder")
local Notifications = githubRequire("UI/Notifications")

local StatsSystem = githubRequire("Systems/StatsSystem")
local MacroSystem = githubRequire("Systems/MacroSystem")
local Automation = githubRequire("Systems/Automation")

local ThemeManager = githubRequire("Theme/ThemeManager")


local player = Services.Players.LocalPlayer

local settings = SettingsManager:Load()

ThemeManager:SetTheme(settings.Theme)

UIBuilder:Init(player)

StatsSystem:Init(player)

Automation:Init(player)

Notifications:Notify("ZuevHub loaded successfully")
