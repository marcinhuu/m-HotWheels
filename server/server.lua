local QBCore = exports["qb-core"]:GetCoreObject()
local canOpen = true

local function Cooldown()
    canOpen = false
    Wait(Config.Cooldown.Time * 60000)
    canOpen = true
end

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

RegisterServerEvent("m-HotWheels:Server:OpenPackSurprise")
AddEventHandler("m-HotWheels:Server:OpenPackSurprise", function()
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

end)

RegisterServerEvent("m-HotWheels:Server:OpenBoxSurprise")
AddEventHandler("m-HotWheels:Server:OpenBoxSurprise", function()
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

end)

RegisterServerEvent("m-HotWheels:Server:Open2FastSurprise")
AddEventHandler("m-HotWheels:Server:Open2FastSurprise", function()
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local randItem = Config.HotWheels.FastFurious[math.random(1, #Config.HotWheels.FastFurious)]
    Player.Functions.AddItem(randItem, 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[randItem], 'add', 1)
end)