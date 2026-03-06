local Services = require(script.Parent.Services)

local SettingsManager = {}

local SETTINGS_FILE = "ZuevHub_Settings.json"

local DefaultSettings = {
    Theme = "Violet",
    AutoSkip = false,
    AutoReplay = false
}

function SettingsManager:Load()

    if isfile and isfile(SETTINGS_FILE) then
        local content = readfile(SETTINGS_FILE)
        return Services.HttpService:JSONDecode(content)
    end

    return DefaultSettings
end

function SettingsManager:Save(data)

    if writefile then
        local json = Services.HttpService:JSONEncode(data)
        writefile(SETTINGS_FILE, json)
    end

end

return SettingsManager
