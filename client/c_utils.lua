local QBCore = exports[Config.CoreName]:GetCoreObject()

CreateThread(function()
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
end)

