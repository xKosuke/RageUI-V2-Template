local menu = RageUI.CreateMenu("Mon menu", "Menu principal")

Citizen.CreateThread(function()
    while true do
        if IsControlJustReleased(0, 51) then
            RageUI.Visible(menu)
        end
        RageUI.IsVisible(menu, true, true, true, function()
            RageUI.Button("Option 1", nil, {}, true, function()
            end)

            RageUI.Button("Option 2", nil, {}, true, function()
            end)

            RageUI.Button("Option 3", nil, {}, true, function()
            end)
        end, function()
        end)
        Citizen.Wait(0)
    end
end)
