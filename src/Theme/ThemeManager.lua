local Themes = require(script.Parent.Themes)

local ThemeManager = {}

ThemeManager.Current = Themes.Dark

function ThemeManager:SetTheme(name)

    if Themes[name] then
        self.Current = Themes[name]
    end

end

function ThemeManager:Apply(gui)

    for _,v in pairs(gui:GetDescendants()) do

        if v:IsA("Frame") then
            v.BackgroundColor3 = self.Current.BgMain
        end

        if v:IsA("TextLabel") then
            v.TextColor3 = self.Current.Text
        end

        if v:IsA("TextButton") then
            v.BackgroundColor3 = self.Current.BgCard
            v.TextColor3 = self.Current.Text
        end

    end

end

return ThemeManager
