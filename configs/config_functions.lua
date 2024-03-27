if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
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
    if Config.Framework == "qb" then
        if type == "primary" then 
            QBCore.Functions.Notify(msg, "primary", time)
        end
        if type == "success" then
            QBCore.Functions.Notify(msg, "success", time)
        end
        if type == "error" then
            QBCore.Functions.Notify(msg, "error", time)
        end
    elseif Config.Framework == "esx" then
        if type == "primary" then 
            ESX.ShowNotification(msg, "info", time)
        end
        if type == "success" then
            ESX.ShowNotification(msg, "success", time)
        end
        if type == "error" then
            ESX.ShowNotification(msg, "error", time)
        end
    end
end

-- ========================================================== Open Shop
if not IsDuplicityVersion() then
    RegisterNetEvent('m-HotWheels:Client:OpenShop')
    AddEventHandler('m-HotWheels:Client:OpenShop', function(data)
        if Config.Framework == "qb" then
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "HotWheels", {
                label = "HotWheels",
                items = Config.Shop,
                slots = #Config.Shop,
            })
        elseif Config.Inventory == "ox_inventory" then
            exports.ox_inventory:openInventory("shop", {type = "HotWheels", id = tonumber(data.name:sub((data.name:find(":")) + 1))})
        end
    end)
end

if Config.Inventory == "ox_inventory" then
    if GetResourceState("ox_inventory") ~= "starting" and GetResourceState("ox_inventory") ~= "started" then
        print("[^4Warning^7] ^8ox_inventory^7 is "..GetResourceState("ox_inventory").." but is set as inventory method")
        return
    end
end