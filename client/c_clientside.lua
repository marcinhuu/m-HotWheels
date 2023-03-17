local QBCore = exports[Config.CoreName]:GetCoreObject()

local peds = Config.Settings.Ped

CreateThread(function()
	if Config.Settings.Blip.blipEnable then
	    local c = Config.Settings.Blip.blipLocation
	    local Blip = AddBlipForCoord(c.x, c.y, c.z)
	    SetBlipSprite (Blip, Config.Settings.Blip.blipSprite)
	    SetBlipDisplay(Blip, 4)
	    SetBlipScale  (Blip, Config.Settings.Blip.blipScale)
	    SetBlipAsShortRange(Blip, true)
	    SetBlipColour(Blip, Config.Settings.Blip.blipColour)
	    SetBlipAlpha(Blip, Config.Settings.Blip.blipAlpha)
	    BeginTextCommandSetBlipName("STRING")
	    AddTextComponentSubstringPlayerName(Config.Settings.Blip.blipName)
	    EndTextCommandSetBlipName(Blip)
	end
end)

CreateThread(function()
    for _, item in pairs(peds) do
        RequestModel(item.hash)
        while not HasModelLoaded(item.hash) do Wait(1) end
        peds =  CreatePed(item.type, item.hash, item.loc, false, true)
        SetBlockingOfNonTemporaryEvents(peds, true)
        SetPedDiesWhenInjured(peds, false)
        SetEntityHeading(peds, item.loc)
        SetPedCanPlayAmbientAnims(peds, true)
        SetPedCanRagdollFromPlayerImpact(peds, false)
        SetEntityInvincible(peds, true)
        FreezeEntityPosition(peds, true)
    end
end)

RegisterNetEvent("m-HotWheels:Client:OpenPackSurprise")
AddEventHandler("m-HotWheels:Client:OpenPackSurprise", function()
	QBCore.Functions.Progressbar("OpeningPack", "Opening a pack...", 5000, false, true, {
		disableMovement = true,
		disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function()
		TriggerServerEvent("m-HotWheels:Server:OpenPackSurprise")
	end)
end)

RegisterNetEvent("m-HotWheels:Client:OpenBoxSurprise")
AddEventHandler("m-HotWheels:Client:OpenBoxSurprise", function()
	QBCore.Functions.Progressbar("OpeninBox", "Opening a box...", 5000, false, true, {
		disableMovement = true,
		disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
	}, {}, {}, {}, function()
		TriggerServerEvent("m-HotWheels:Server:OpenBoxSurprise")
	end)
end)