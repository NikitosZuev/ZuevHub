local MacroSystem = {}

MacroSystem.Actions = {}

function MacroSystem:Record(action)

    table.insert(self.Actions, action)

end

function MacroSystem:Clear()

    self.Actions = {}

end

function MacroSystem:Get()

    return self.Actions

end

function MacroSystem:Play()

    for _,action in ipairs(self.Actions) do

        print("Executing action:", action.Type)

    end

end

return MacroSystem
