vRPas = {}
Tunnel.bindInterface("vrp_template",vRPas)
ASserver = Tunnel.getInterface("vrp_template","vrp_template")

print(Config.test)

RegisterNetEvent('vrp_template:nui')
AddEventHandler('vrp_template:nui', function()
    -- When you turn on the nui in a server.lua you use TriggerClientEvent('vrp_template:nui', -1)
    -- When you turn on the nui in a client.lua you use TriggerEvent('vrp_template:nui')
    SetDisplay(not display)
end)

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)

        -- Controls on https://runtime.fivem.net/doc/natives/#_0xFE99B66D079CF6BC

        DisableControlAction(0, 1, display) -- LookLeftRight
        DisableControlAction(0, 2, display) -- LookUpDown
        DisableControlAction(0, 142, display) -- MeleeAttackAlternate
        DisableControlAction(0, 18, display) -- Enter
        DisableControlAction(0, 322, display) -- ESC
        DisableControlAction(0, 106, display) -- VehicleMouseControlOverride
    end
end)