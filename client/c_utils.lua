if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
else
    print("The "..Config.Framework.." is wrong or not available")
end

CreateThread(function()
    if Config.Framework == "qb" then
        for k, v in pairs(Config.TargetLocations["Trader"]) do
            exports["qb-target"]:AddBoxZone("Trader"..k, vector3(v.x, v.y, v.z), 1, 1, {
                name = "Trader"..k,
                heading = 32,
                debugPoly = false,
                minZ = v.z - 1,
                maxZ = v.z + 1,
            }, {
                options = {
                    {
                        event = "m-HotWheels:Client:OpenShop",
                        icon = "fas fa-car",
                        label = "Trader",
                    },
                },
                distance = 2.0
            })
        end
    else
        if GetResourceState("ox_target") == "started" or GetResourceState("ox_target") == "starting" then
            for k, v in pairs(Config.TargetLocations["Trader"]) do
                exports.ox_target:addBoxZone({
                    coords = vector3(v.x, v.y, v.z),
                    size = vector3(1.0, 1.0, 2.0),
                    options = {
                        {
                            name = "Trader"..k,
                            event = "m-HotWheels:Client:OpenShop",
                            icon = "fas fa-car",
                            label = "Trader",
                        }
                    }
                })
            end
        else
            print("[^4Warning^7] ^8ox_target^7 is not started, please install or setup your own targeting method in ^8c_utils.lua^7")
        end
    end
end)

