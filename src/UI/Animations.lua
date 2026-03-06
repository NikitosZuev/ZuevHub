local Animations = {}

function Animations:FadeIn(object)

    object.BackgroundTransparency = 1

    for i = 1,10 do
        wait(0.03)
        object.BackgroundTransparency = object.BackgroundTransparency - 0.1
    end

end

return Animations
