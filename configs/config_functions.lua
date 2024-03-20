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
    AddEventHandler('m-HotWheels:Client:OpenShop', function()
        if Config.Framework == "qb" then
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "HotWheels", {
                label = "HotWheels",
                items = Config.Shop,
                slots = #Config.Shop,
            })
        elseif Config.Inventory == "ox_inventory" then
            exports.ox_inventory:openInventory("shop", "HotWheels")
        end
    end)
end

if Config.Inventory == "ox_inventory" then
    if GetResourceState("ox_inventory") ~= "starting" or GetResourceState("ox_inventory") ~= "started" then
        print("[^4Warning^7] ^8ox_inventory^7 is not started but is set as inventory method")
        return
    end
    if IsDuplicityVersion() then
        local items = {}
        for _, v in pairs(Config.Shop) do
            items[#items+1] = {
                name = v.name,
                price = v.price,
                count = v.amount
            }
        end
        for k, v in pairs(Config.TargetLocations["Trader"]) do
            exports.ox_inventory:RegisterShop('HotWheels', {
                name = 'HotWheels Trader',
                inventory = items,
                locations = {
                    vector3(v.x, v.y, v.z)
                },
                groups = {},
            })
        end
    end
end