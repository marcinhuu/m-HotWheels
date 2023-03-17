Config = {}

Config.CoreName = "qb-core"

Config.Settings = {
    Ped = {
        [1] = { type = 4, hash = GetHashKey("a_m_m_og_boss_01"), loc = vector4(-1127.07, -1440.03, 4.23, 302.94)},
    },
    Blip = { 
        blipEnable = true, -- Enable blip for illegal mission?
        blipLocation = vector3(-1127.07, -1440.03, 5.23), -- Blip location
        blipSprite = 446, -- Blip sprite
        blipScale = 0.7, -- Blip scale
        blipColour = 0, -- Blip colour
        blipAlpha = 0.7, -- Blip aplha
        blipName = "Hot Wheels" -- Blip name
    },
}

Config.TargetLocations = {
    ["Trader"] = {
        [1] = vector3(-1127.07, -1440.03, 5.23),
    },
}


Config.Shop = {
	[1] = { name = "hw_packsurprise",        price = 500, amount = 1, info = {}, type = "item", slot = 1 },
    [2] = { name = "hw_boxsurprise",         price = 1000, amount = 1, info = {}, type = "item", slot = 2 },
    [3] = { name = "hw_boxsurprise_2f2f",    price = 1500, amount = 1, info = {}, type = "item", slot = 3 },
}