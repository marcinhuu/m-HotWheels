local QBCore = exports[Config.CoreName]:GetCoreObject()

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
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "HotWheels", {
        label = "HotWheels",
        items = Config.Shop,
        slots = #Config.Shop,
    })
end)
