local QBCore = exports['qb-core']:GetCoreObject()

--Create Blips
Citizen.CreateThread(function()
        for _, blipData in ipairs(Config.Blips) do
            local blip = AddBlipForCoord(blipData.coords.x, blipData.coords.y, blipData.coords.z)

            SetBlipSprite(blip, blipData.sprite)
            SetBlipDisplay(blip, blipData.display)
            SetBlipScale(blip, blipData.scale)
            SetBlipColour(blip, blipData.color)
            SetBlipAsShortRange(blip, blipData.shortRange)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(blipData.name)
            EndTextCommandSetBlipName(blip)
        end    
end)

