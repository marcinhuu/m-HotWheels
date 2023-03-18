Config = {}

Config.CoreName = "qb-core"
Config.Cooldown = { Enable = false, Time = 60 } -- Enable cooldown? 60 = 1 Minute


Config.Settings = {
    Ped = {
        [1] = { type = 4, hash = GetHashKey("a_m_m_og_boss_01"), loc = vector4(-1127.07, -1440.03, 4.23, 302.94)},
    },
    Blip = { 
        blipEnable = true, -- Enable blip?
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
	[1] = { name = "hw_packsurprise",        price = 500, amount = 10, info = {}, type = "item", slot = 1 },
    [2] = { name = "hw_boxsurprise",         price = 1000, amount = 10, info = {}, type = "item", slot = 2 },
    [3] = { name = "hw_boxsurprise_2f2f",    price = 1500, amount = 10, info = {}, type = "item", slot = 3 },
}

Config.HotWheels = {
    Settings = {
        RareCars = 10, -- 10% To get a rare car
        UltraRareCars = 5, -- 5% To get a ultra rare car
    },
    NormalCars = { -- Normal/general cars
        "caddilacct5_hw",
        "jaguarxeproject8_hw",
        "lamborghiniestoque_hw",
        "porschepanameraturbo_hw",
        "teslamodel3_hw",
    },
    RareCars = { -- Rare cars
        "1.5_hw_hondacivic_ef",
        "2.5_hw_hondaciviceg",
        "3.5_hw_hondacivicsi",
        "4.5_hw_hondacivictyper",
        "5.5_hw_hondacivictyper",
        "1.5_hw_dodgedart",
        "2.5_hw_dodgechallenger",
        "3.5_hw_dodgechallengerdrift",
        "4.5_hw_dodgechallengersrt",
        "5.5_hw_dodgevipersrt",
    },
    UltraRareCars = { -- Ultra rare cars
        "1.5_mazdarx7_col02_hw",
        "2.5_chevcamaro_col02_hw",
        "3.5_jeep_col02_hw",
        "4.5_porschegt4_col02_hw",
        "5.5_skyline_col02_hw",
        "1.5_skyline_col01_hw",
        "2.5_silvia_col01_hw",
        "3.5_ford_col01_hw",
        "4.5_lamborghini_col01_hw",
        "5.5_mazdarx7_col01_hw",
    },
    FastFurious = { -- Cars can receive when opening fast furious pack
        "1.5_mazdarx7_col02_hw",
        "2.5_chevcamaro_col02_hw",
        "3.5_jeep_col02_hw",
        "4.5_porschegt4_col02_hw",
        "5.5_skyline_col02_hw",
        "1.5_skyline_col01_hw",
        "2.5_silvia_col01_hw",
        "3.5_ford_col01_hw",
        "4.5_lamborghini_col01_hw",
        "5.5_mazdarx7_col01_hw",
        "1.5_nissan240_col03_hw",
        "2.5_mitsubishieclipse_col03_hw",
        "3.5_mazdarx7_col03_hw",
        "4.5_skyliner33_col03_hw",
        "5.5_jetta_col03_hw",
    }
}
