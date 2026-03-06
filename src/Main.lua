local Core = script.Core
local Systems = script.Systems
local UI = script.UI
local Theme = script.Theme

local Services = require(Core.Services)
local SettingsManager = require(Core.SettingsManager)

local UIBuilder = require(UI.UIBuilder)
local Notifications = require(UI.Notifications)

local StatsSystem = require(Systems.StatsSystem)
local MacroSystem = require(Systems.MacroSystem)
local Automation = require(Systems.Automation)

local ThemeManager = require(Theme.ThemeManager)

local player = Services.Players.LocalPlayer

local settings = SettingsManager:Load()

ThemeManager:SetTheme(settings.Theme)

UIBuilder:Init(player)
StatsSystem:Init(player)
Automation:Init(player)

Notifications:Notify("ZuevHub loaded successfully")
