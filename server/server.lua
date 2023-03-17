local QBCore = exports[Config.CoreName]:GetCoreObject()

QBCore.Functions.CreateUseableItem("hw_packsurprise", function(source, item) 
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        TriggerClientEvent('m-HotWheels:Client:OpenPackSurprise', source)
    end
end)


QBCore.Functions.CreateUseableItem("hw_boxsurprise", function(source, item) 
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        print("tentei")
        TriggerClientEvent('m-HotWheels:Client:OpenBoxSurprise', source)
    end
end)


QBCore.Functions.CreateUseableItem("hw_boxsurprise_2f2f", function(source, item) 
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player then
        TriggerClientEvent('m-HotWheels:Client:OpenBox2FastSurprise', source)
    end
end)

RegisterServerEvent("m-HotWheels:Server:OpenPackSurprise")
AddEventHandler("m-HotWheels:Server:OpenPackSurprise", function()
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    local chance = math.random(1,100)
    local normalDrop = Config.HotWheels.NormalCars[math.random(1, #Config.HotWheels.NormalCars)]
    local rareDrop = Config.HotWheels.RareCars[math.random(1, #Config.HotWheels.RareCars)]
    local ultrarareDrop = Config.HotWheels.UltraRareCars[math.random(1, #Config.HotWheels.UltraRareCars)]

    if chance <= Config.HotWheels.Settings.RareCars and chance > Config.HotWheels.Settings.UltraRareCars then
        print("Rare Car")
        Player.Functions.AddItem(rareDrop, Config.HotWheels.Settings.Pack)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rareDrop], 'add', 1)
    elseif chance <= Config.HotWheels.Settings.UltraRareCars then
        print("Ultra Rare Car")
        Player.Functions.AddItem(ultrarareDrop, Config.HotWheels.Settings.Pack)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ultrarareDrop], 'add', 1)
    else
        print("Normal Car")
        Player.Functions.AddItem(normalDrop, Config.HotWheels.Settings.Pack)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[normalDrop], 'add', 1)
    end

end)

RegisterServerEvent("m-HotWheels:Server:OpenBoxSurprise")
AddEventHandler("m-HotWheels:Server:OpenBoxSurprise", function()
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    local chance = math.random(1,100)
    local normalDrop = Config.HotWheels.NormalCars[math.random(1, #Config.HotWheels.NormalCars)]
    local rareDrop = Config.HotWheels.RareCars[math.random(1, #Config.HotWheels.RareCars)]
    local ultrarareDrop = Config.HotWheels.UltraRareCars[math.random(1, #Config.HotWheels.UltraRareCars)]

    if chance <= Config.HotWheels.Settings.RareCars and chance > Config.HotWheels.Settings.UltraRareCars then
        print("Rare Car")
        Player.Functions.AddItem(rareDrop, Config.HotWheels.Settings.Box)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rareDrop], 'add', 1)
    elseif chance <= Config.HotWheels.Settings.UltraRareCars then
        print("Ultra Rare Car")
        Player.Functions.AddItem(ultrarareDrop, Config.HotWheels.Settings.Box)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[ultrarareDrop], 'add', 1)
    else
        print("Normal Car")
        Player.Functions.AddItem(normalDrop, Config.HotWheels.Settings.Box)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[normalDrop], 'add', 1)
    end

end)