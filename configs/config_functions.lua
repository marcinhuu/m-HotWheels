if Config.Framework == "qb" then
    local QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
else
    print("The "..Config.Framework.." is wrong or not available")
end

RegisterNetEvent('m-HotWheels:Client:Notify')
AddEventHandler("m-HotWheels:Client:Notify", function(msg,type,time)
    Notify(msg,type,time)
end)

function Notify(msg, type, time)
    if type == "primary" then 
        QBCore.Functions.Notify(msg, "primary", time)
    end
    if type == "success" then
        QBCore.Functions.Notify(msg, "success", time)
    end
    if type == "error" then
        QBCore.Functions.Notify(msg, "error", time)
    end
end

-- ========================================================== Open Shop
RegisterNetEvent('m-HotWheels:Client:OpenShop')
AddEventHandler('m-HotWheels:Client:OpenShop', function()
    if Config.Framework == "qb" then
        TriggerServerEvent("inventory:server:OpenInventory", "shop", "HotWheels", {
            label = "HotWheels",
            items = Config.Shop,
            slots = #Config.Shop,
        })
    elseif Config.Framework == "esx" then

    end
end)
