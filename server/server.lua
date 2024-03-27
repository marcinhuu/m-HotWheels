if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
    if Config.Inventory == "qb" then
        print("[^4Warning^7] ^8Config.Inventory^7 is setup qb but the framework is ESX!")
    end
else
    print("The "..Config.Framework.." is wrong or not available")
end
if Config.inventory == "ox_inventory" and lib == nil then
    print("[^4Warning^7] ^8ox_lib^7 is not setup but is required, the script will not function until you uncomment the line from fxmanifest")
end

local canOpen = true

local function Cooldown()
    canOpen = false
    Wait(Config.Cooldown.Time * 60000)
    canOpen = true
end

if Config.Framework == "qb" then
    QBCore.Functions.CreateUseableItem("hw_packsurprise", function(source, item) 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if Config.Cooldown.Enable then if not canOpen then return TriggerClientEvent('m-HotWheels:Client:Notify', src, "You can't open right now.", "error", 5000) end end
        if Player.Functions.RemoveItem("hw_packsurprise", 1) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["hw_packsurprise"], 'remove', 1)
            TriggerClientEvent('m-HotWheels:Client:OpenPackSurprise', source)
            if Config.Cooldown.Enable then Cooldown() end
        end
    end)


    QBCore.Functions.CreateUseableItem("hw_boxsurprise", function(source, item) 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if Player.Functions.RemoveItem("hw_boxsurprise", 1) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["hw_boxsurprise"], 'remove', 1)
            TriggerClientEvent('m-HotWheels:Client:OpenBoxSurprise', source)
        end
    end)


    QBCore.Functions.CreateUseableItem("hw_boxsurprise_2f2f", function(source, item) 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        if Player.Functions.RemoveItem("hw_boxsurprise_2f2f", 1) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["hw_boxsurprise_2f2f"], 'remove', 1)
            TriggerClientEvent('m-HotWheels:Client:Open2FastSurprise', source)
        end
    end)

    QBCore.Functions.CreateUseableItem("hw_box01", function(source, item) 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        TriggerClientEvent("m-HotWheels:Client:OpenWhiteBox", src)
    end)

    QBCore.Functions.CreateUseableItem("hw_box02", function(source, item) 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        TriggerClientEvent("m-HotWheels:Client:OpenGreyBox", src)
    end)

    QBCore.Functions.CreateUseableItem("hw_box03", function(source, item) 
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        TriggerClientEvent("m-HotWheels:Client:OpenBlueBox", src)
    end)

elseif Config.Framework == "esx" then

    function GiveItemToPlayer(xPlayer, item, amount)
        print("Giving to "..xPlayer.getName().." ("..tostring(xPlayer.source)..") the item ^4"..item.."^7")
        if Config.Inventory == "ox_inventory" then
            exports.ox_inventory:AddItem(xPlayer.source, item, amount)
        else
            xPlayer.addInventoryItem(item, amount)
        end
    end

    function RemoveItemFromPlayer(xPlayer, item, amount)
        print("Removing the item ^4"..item.."^7 from "..xPlayer.getName().." ("..tostring(xPlayer.source)..")")
        if Config.Inventory == "ox_inventory" then
            exports.ox_inventory:RemoveItem(xPlayer.source, item, amount)
        else
            xPlayer.removeInventoryItem(item, amount)
        end
    end

    function GetItemFromPlayer(xPlayer, item)
        print("Getting the item ^4"..item.."^7 from "..xPlayer.getName().." ("..tostring(xPlayer.source)..")")
        if Config.Inventory == "ox_inventory" then
            return exports.ox_inventory:GetItem(xPlayer.source, item)
        else
            return xPlayer.getInventoryItem(item)
        end
    end

    ESX.RegisterUsableItem("hw_packsurprise", function(source, item) 
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        if Config.Cooldown.Enable then if not canOpen then return TriggerClientEvent('m-HotWheels:Client:Notify', src, "You can't open right now.", "error", 5000) end end
        if GetItemFromPlayer(Player, "hw_packsurprise") ~= nil then
            RemoveItemFromPlayer(Player, "hw_packsurprise", 1)
            TriggerClientEvent('m-HotWheels:Client:OpenPackSurprise', source)
            if Config.Cooldown.Enable then Cooldown() end
        end
    end)


    ESX.RegisterUsableItem("hw_boxsurprise", function(source, item) 
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        if GetItemFromPlayer(Player, "hw_boxsurprise") ~= nil then
            RemoveItemFromPlayer(Player, "hw_boxsurprise", 1)
            TriggerClientEvent('m-HotWheels:Client:OpenBoxSurprise', source)
        end
    end)


    ESX.RegisterUsableItem("hw_boxsurprise_2f2f", function(source, item) 
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        if GetItemFromPlayer(Player, "hw_boxsurprise_2f2f") ~= nil then
            RemoveItemFromPlayer(Player, "hw_boxsurprise_2f2f", 1)
            TriggerClientEvent('m-HotWheels:Client:Open2FastSurprise', source)
        end
    end)

    ESX.RegisterUsableItem("hw_box01", function(source, item) 
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        TriggerClientEvent("m-HotWheels:Client:OpenWhiteBox", src)
    end)

    ESX.RegisterUsableItem("hw_box02", function(source, item) 
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        TriggerClientEvent("m-HotWheels:Client:OpenGreyBox", src)
    end)

    ESX.RegisterUsableItem("hw_box03", function(source, item) 
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        TriggerClientEvent("m-HotWheels:Client:OpenBlueBox", src)
    end)
end

if Config.Inventory == "ox_inventory" then
    lib.callback.register("m-HotWheels:Server:OpenBox", function(source, name, info)
        if exports.ox_inventory:GetInventory(name, false) then
            return name
        else
            exports.ox_inventory:RegisterStash(name, name, info.slots, info.maxweight)
            return name
        end
    end)

    if GetResourceState("ox_inventory") ~= "starting" and GetResourceState("ox_inventory") ~= "started" then
        print("[^4Warning^7] ^8ox_inventory^7 is "..GetResourceState("ox_inventory").." but is set as inventory method")
        return
    end

    local items = {}
    for _, v in pairs(Config.Shop) do
        items[#items+1] = {
            name = v.name,
            price = v.price,
            count = v.amount
        }
    end
    for k, v in pairs(Config.TargetLocations["Trader"]) do
        exports.ox_inventory:RegisterShop("HotWheels"..tostring(k), {
            name = 'HotWheels Trader',
            inventory = items,
            locations = {
                vector3(v.x, v.y, v.z)
            },
        })
    end
end

RegisterServerEvent("m-HotWheels:Server:OpenPackSurprise")
AddEventHandler("m-HotWheels:Server:OpenPackSurprise", function()
    if Config.Framework == "qb" then
        local src = source 
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        local chance = math.random(1,100)
        local normalDrop = Config.HotWheels.NormalCars[math.random(1, #Config.HotWheels.NormalCars)]
        local rareDrop = Config.HotWheels.RareCars[math.random(1, #Config.HotWheels.RareCars)]
        local ultrarareDrop = Config.HotWheels.UltraRareCars[math.random(1, #Config.HotWheels.UltraRareCars)]

        if chance <= Config.HotWheels.Settings.RareCars and chance > Config.HotWheels.Settings.UltraRareCars then
            Player.Functions.AddItem(rareDrop, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rareDrop], 'add', 1)
        elseif chance <= Config.HotWheels.Settings.UltraRareCars then
            Player.Functions.AddItem(ultrarareDrop, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ultrarareDrop], 'add', 1)
        else
            Player.Functions.AddItem(normalDrop, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[normalDrop], 'add', 1)
        end
    elseif Config.Framework == "esx" then
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        local chance = math.random(1,100)
        local normalDrop = Config.HotWheels.NormalCars[math.random(1, #Config.HotWheels.NormalCars)]
        local rareDrop = Config.HotWheels.RareCars[math.random(1, #Config.HotWheels.RareCars)]
        local ultrarareDrop = Config.HotWheels.UltraRareCars[math.random(1, #Config.HotWheels.UltraRareCars)]

        if chance <= Config.HotWheels.Settings.RareCars and chance > Config.HotWheels.Settings.UltraRareCars then
            GiveItemToPlayer(Player, rareDrop, 1)
        elseif chance <= Config.HotWheels.Settings.UltraRareCars then
            GiveItemToPlayer(Player, ultrarareDrop, 1)
        else
            GiveItemToPlayer(Player, normalDrop, 1)
        end
    end
end)

RegisterServerEvent("m-HotWheels:Server:OpenBoxSurprise")
AddEventHandler("m-HotWheels:Server:OpenBoxSurprise", function()
    if Config.Framework == "qb" then
        local src = source 
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        local chance = math.random(1,100)
        if chance <= Config.HotWheels.Settings.RareCars and chance > Config.HotWheels.Settings.UltraRareCars then
            for _ = 1, math.random(2, 2), 1 do
                local randItem = Config.HotWheels.RareCars[math.random(1, #Config.HotWheels.RareCars)]
                Player.Functions.AddItem(randItem, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add', 1)
            end
        elseif chance <= Config.HotWheels.Settings.UltraRareCars then
            for _ = 1, math.random(2, 2), 1 do
                local randItem = Config.HotWheels.UltraRareCars[math.random(1, #Config.HotWheels.UltraRareCars)]
                Player.Functions.AddItem(randItem, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add', 1)
            end
        else
            for _ = 1, math.random(2, 2), 1 do
                local randItem = Config.HotWheels.NormalCars[math.random(1, #Config.HotWheels.NormalCars)]
                Player.Functions.AddItem(randItem, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add', 1)
            end
        end
    elseif Config.Framework == "esx" then
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        local chance = math.random(1,100)

        if chance <= Config.HotWheels.Settings.RareCars and chance > Config.HotWheels.Settings.UltraRareCars then
            for _ = 1, math.random(2, 2), 1 do
                local randItem = Config.HotWheels.RareCars[math.random(1, #Config.HotWheels.RareCars)]
                GiveItemToPlayer(Player, randItem, 1)
            end
        elseif chance <= Config.HotWheels.Settings.UltraRareCars then
            for _ = 1, math.random(2, 2), 1 do
                local randItem = Config.HotWheels.UltraRareCars[math.random(1, #Config.HotWheels.UltraRareCars)]
                GiveItemToPlayer(Player, randItem, 1)
            end
        else
            for _ = 1, math.random(2, 2), 1 do
                local randItem = Config.HotWheels.NormalCars[math.random(1, #Config.HotWheels.NormalCars)]
                GiveItemToPlayer(Player, randItem, 1)
            end
        end
    end
end)

RegisterServerEvent("m-HotWheels:Server:Open2FastSurprise")
AddEventHandler("m-HotWheels:Server:Open2FastSurprise", function()
    if Config.Framework == "qb" then
        local src = source 
        local Player = QBCore.Functions.GetPlayer(src)
        if not Player then return end
        local randItem = Config.HotWheels.FastFurious[math.random(1, #Config.HotWheels.FastFurious)]
        Player.Functions.AddItem(randItem, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add', 1)
    elseif Config.Framework == "esx" then
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if not Player then return end
        local randItem = Config.HotWheels.FastFurious[math.random(1, #Config.HotWheels.FastFurious)]
        GiveItemToPlayer(Player, randItem, 1)
    end
end)