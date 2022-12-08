local menu = RageUI.CreateMenu("Mon menu", "Menu principal")

Citizen.CreateThread(function()
    while true do
        if IsControlJustReleased(0, 51) then
            RageUI.Visible(menu)
        end
        RageUI.IsVisible(menu, true, true, true, function()
            RageUI.Button("Option 1", nil, {}, true, function()
                -- Code à exécuter lorsque l'utilisateur sélectionne l'option 1
            end)

            RageUI.Button("Option 2", nil, {}, true, function()
                -- Code à exécuter lorsque l'utilisateur sélectionne l'option 2
            end)

            RageUI.Button("Option 3", nil, {}, true, function()
                -- Code à exécuter lorsque l'utilisateur sélectionne l'option 3
            end)
        end, function()
            -- Code à exécuter lorsque l'utilisateur ferme le menu
        end)
        Citizen.Wait(0)
    end
end)