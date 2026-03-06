local Automation = {}

function Automation:Init(player)

    spawn(function()

        while true do
            wait(60)

            local virtualUser = game:GetService("VirtualUser")

            virtualUser:CaptureController()
            virtualUser:ClickButton2(Vector2.new())

        end

    end)

end

return Automation
