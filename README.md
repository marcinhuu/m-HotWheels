![foto1](https://media.discordapp.net/attachments/1019726083827961956/1086370402747568200/hotwheels.png)

# m-HotWheels script for QB-Core

- Thank you very much for downloading this product! Hope you have fun!
- If you are intested in recieving updates join the community on **[Discord](https://discord.gg/marcinhu)**! |

# About
* Script still in initialization. We are developing hotwheels car collection / trading script.

# Cars Available:
- <strong>2 Fast 2 Furious Collection</strong>
    - Collection 01:
        - [1/5] Skyline
        - [2/5] Silvia
        - [3/5] Ford
        - [4/5] Lamborghini
        - [5/5] Mazda RX-7
    - Collection 02:
        - [1/5] Mazda RX-7
        - [2/5] Chev Camaro
        - [3/5] Jeep
        - [4/5] Porsche GT4
        - [5/5] Skyline

- <strong>Honda Collection</strong>
    - [1/5] Honda Civic EF
    - [2/5] Honda Civic EG
    - [3/5] Honda Civic SI
    - [4/5] Honda Civic TypeR
    - [5/5] Honda Civic TypeR

- <strong>Morpar Collection</strong>
    - [1/5] Dodge Dart
    - [2/5] Dodge Challenger
    - [3/5] Dodge Challenger Drift
    - [4/5] Dodge Challenger SRT
    - [4/5] Dodge Viper SRT

- <strong>General Car's</strong>
    - Cadillac CT5
    - Jaguar X
    - Lamborghini Estoque
    - Porsche Panamera
    - Tesla Model 3

# Install the script:

**qb-core/shared/items.lua**
```
    -- [[ Hot Wheels ]]

    -- [[ 2 Fast 2 Furious Collection ]]
        -- Collection 01
    ["1.5_skyline_col01_hw"]        = {["name"] = "1.5_skyline_col01_hw",           ["label"] = "[1/5] Skyline",                ["weight"] = 50,    ["type"] = "item",  ["image"] = "1.5_skyline_col01_hw.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 70%"},
    ["2.5_silvia_col01_hw"]         = {["name"] = "2.5_silvia_col01_hw",            ["label"] = "[2/5] Silvia",                 ["weight"] = 50,    ["type"] = "item",  ["image"] = "2.5_silvia_col01_hw.png",          ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 70%"},
    ["3.5_ford_col01_hw"]           = {["name"] = "3.5_ford_col01_hw",              ["label"] = "[3/5] Ford",                   ["weight"] = 50,    ["type"] = "item",  ["image"] = "3.5_ford_col01_hw.png",            ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 50%"},
    ["4.5_lamborghini_col01_hw"]    = {["name"] = "4.5_lamborghini_col01_hw",       ["label"] = "[4/5] Lamborghini",            ["weight"] = 50,    ["type"] = "item",  ["image"] = "4.5_lamborghini_col01_hw.png",     ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 77%"},
    ["5.5_mazdarx7_col01_hw"]       = {["name"] = "5.5_mazdarx7_col01_hw",          ["label"] = "[5/5] Mazda RX-7",             ["weight"] = 50,    ["type"] = "item",  ["image"] = "5.5_mazdarx7_col01_hw.png",        ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 68%"},
        -- Collection 02
    ["1.5_mazdarx7_col02_hw"]       = {["name"] = "1.5_mazdarx7_col02_hw",          ["label"] = "[1/5] Mazda RX-8",             ["weight"] = 50,    ["type"] = "item",  ["image"] = "1.5_mazdarx7_col02_hw.png",        ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 68%"},
    ["2.5_chevcamaro_col02_hw"]     = {["name"] = "2.5_chevcamaro_col02_hw",        ["label"] = "[2/5] Chev Camaro",            ["weight"] = 50,    ["type"] = "item",  ["image"] = "2.5_chevcamaro_col02_hw.png",      ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 58%"},
    ["3.5_jeep_col02_hw"]           = {["name"] = "3.5_jeep_col02_hw",              ["label"] = "[3/5] Jeep",                   ["weight"] = 50,    ["type"] = "item",  ["image"] = "3.5_jeep_col02_hw.png",            ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 42%"},
    ["4.5_porschegt4_col02_hw"]     = {["name"] = "4.5_porschegt4_col02_hw",        ["label"] = "[4/5] Porsche GT4",            ["weight"] = 50,    ["type"] = "item",  ["image"] = "4.5_porschegt4_col02_hw.png",      ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 72%"},
    ["5.5_skyline_col02_hw"]        = {["name"] = "5.5_skyline_col02_hw",           ["label"] = "[5/5] Skyline",                ["weight"] = 50,    ["type"] = "item",  ["image"] = "5.5_skyline_col02_hw.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: 2 Fast 2 Furious<p></p>Rarity: 90%"},

    -- [[ Honda Collection ]]
    ["1.5_hw_hondacivic_ef"]        = {["name"] = "1.5_hw_hondacivic_ef",           ["label"] = "[1/5] Honda Civic EF",         ["weight"] = 50,    ["type"] = "item",  ["image"] = "1.5_hw_hondacivic_ef.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Honda Cars<p></p>Rarity: 75%"},
    ["2.5_hw_hondaciviceg"]         = {["name"] = "2.5_hw_hondaciviceg",            ["label"] = "[2/5] Honda Civic EG",         ["weight"] = 50,    ["type"] = "item",  ["image"] = "2.5_hw_hondaciviceg.png",          ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Honda Cars<p></p>Rarity: 65%"},
    ["3.5_hw_hondacivicsi"]         = {["name"] = "3.5_hw_hondacivicsi",            ["label"] = "[3/5] Honda Civic SI",         ["weight"] = 50,    ["type"] = "item",  ["image"] = "3.5_hw_hondacivicsi.png",          ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Honda Cars<p></p>Rarity: 82%"},
    ["4.5_hw_hondacivictyper"]      = {["name"] = "4.5_hw_hondacivictyper",         ["label"] = "[4/5] Honda Civic TypeR",      ["weight"] = 50,    ["type"] = "item",  ["image"] = "4.5_hw_hondacivictyper.png",       ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Honda Cars<p></p>Rarity: 77%"},
    ["5.5_hw_hondacivictyper"]      = {["name"] = "5.5_hw_hondacivictyper",         ["label"] = "[5/5] Honda Civic TypeR",      ["weight"] = 50,    ["type"] = "item",  ["image"] = "5.5_hw_hondacivictyper.png",       ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Honda Cars<p></p>Rarity: 77%"},

    -- [[ Morpar Collection ]]
    ["1.5_hw_dodgedart"]            = {["name"] = "1.5_hw_dodgedart",               ["label"] = "[1/5] Dodge Dart",             ["weight"] = 50,    ["type"] = "item",  ["image"] = "1.5_hw_dodgedart.png",             ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Morpar<p></p> Rarity: 56%"},
    ["2.5_hw_dodgechallenger"]      = {["name"] = "2.5_hw_dodgechallenger",         ["label"] = "[2/5] Dodge Challenger",       ["weight"] = 50,    ["type"] = "item",  ["image"] = "2.5_hw_dodgechallenger.png",       ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Morpar<p></p> Rarity: 64%"},
    ["3.5_hw_dodgechallengerdrift"] = {["name"] = "3.5_hw_dodgechallengerdrift",    ["label"] = "[3/5] Dodge Challenger Drift", ["weight"] = 50,    ["type"] = "item",  ["image"] = "3.5_hw_dodgechallengerdrift.png",  ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Morpar<p></p> Rarity: 74%"},
    ["4.5_hw_dodgechallengersrt"]   = {["name"] = "4.5_hw_dodgechallengersrt",      ["label"] = "[4/5] Dodge Challenger SRT",   ["weight"] = 50,    ["type"] = "item",  ["image"] = "4.5_hw_dodgechallengersrt.png",    ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Morpar<p></p> Rarity: 84%"},
    ["5.5_hw_dodgevipersrt"]        = {["name"] = "5.5_hw_dodgevipersrt",           ["label"] = "[4/5] Dodge Viper SRT",        ["weight"] = 50,    ["type"] = "item",  ["image"] = "5.5_hw_dodgevipersrt.png",         ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: Morpar<p></p> Rarity: 76%"},


    -- General Car's
    ["caddilacct5_hw"]              = {["name"] = "caddilacct5_hw",                 ["label"] = "Cadillac CT5",                 ["weight"] = 50,    ["type"] = "item",  ["image"] = "caddilacct5_hw.png",               ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: None<p></p>Rarity: 10%"},
    ["jaguarxeproject8_hw"]         = {["name"] = "jaguarxeproject8_hw",            ["label"] = "Jaguar X",                     ["weight"] = 50,    ["type"] = "item",  ["image"] = "jaguarxeproject8_hw.png",          ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: None<p></p>Rarity: 10%"},
    ["lamborghiniestoque_hw"]       = {["name"] = "lamborghiniestoque_hw",          ["label"] = "Lamborghini Estoque",          ["weight"] = 50,    ["type"] = "item",  ["image"] = "lamborghiniestoque_hw.png",        ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: None<p></p>Rarity: 10%"},
    ["porschepanameraturbo_hw"]     = {["name"] = "porschepanameraturbo_hw",        ["label"] = "Porsche Panamera",             ["weight"] = 50,    ["type"] = "item",  ["image"] = "porschepanameraturbo_hw.png",      ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: None<p></p>Rarity: 10%"},
    ["teslamodel3_hw"]              = {["name"] = "teslamodel3_hw",                 ["label"] = "Tesla Model 3",                ["weight"] = 50,    ["type"] = "item",  ["image"] = "teslamodel3_hw.png",               ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Collection: None<p></p>Rarity: 10%"},

    -- Packs

    ["hw_packsurprise"]             = {["name"] = "hw_packsurprise",                ["label"] = "Pack Surprise",                ["weight"] = 50,    ["type"] = "item",  ["image"] = "hw_packsurprise.png",              ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Receive: 1x Random Car<p></p>Rarity: N/A"},
    ["hw_boxsurprise"]              = {["name"] = "hw_boxsurprise",                 ["label"] = "Box Surprise",                 ["weight"] = 50,    ["type"] = "item",  ["image"] = "hw_boxsurprise.png",               ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Receive: 1x/3x Random Car<p></p>Rarity: N/A"},
    ["hw_boxsurprise_2f2f"]         = {["name"] = "hw_boxsurprise_2f2f",            ["label"] = "Pack Surprise",                ["weight"] = 50,    ["type"] = "item",  ["image"] = "hw_boxsurprise_2f2f.png",          ["unique"] = false,     ["useable"] = true,    ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Receive: 1x Random Car Collection<p></p>Rarity: N/A"},
```

# Setup Images:

- Copy all images inside of : m-HotWheels/images
- Open your inventory and inside of folder html/images drop it

# Some Images:

- <strong>2 Fast 2 Furious Collection 01</strong>

![car](https://media.discordapp.net/attachments/1086372623002390620/1086372686449627157/1.5_mazdarx7_col02_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086372686688682105/2.5_chevcamaro_col02_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086372686999068682/3.5_jeep_col02_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086372687351402546/4.5_porschegt4_col02_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086372687594651658/5.5_skyline_col02_hw.png)

- <strong>2 Fast 2 Furious Collection 02</strong>

![car](https://media.discordapp.net/attachments/1086372623002390620/1086373120589447228/1.5_skyline_col01_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373120954343474/2.5_silvia_col01_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373121642205364/4.5_lamborghini_col01_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373121642205364/4.5_lamborghini_col01_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373122032279704/5.5_mazdarx7_col01_hw.png)

- <strong>Honda Collection</strong>

![car](https://media.discordapp.net/attachments/1086372623002390620/1086373657561018519/1.5_hw_hondacivic_ef.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373658018185306/2.5_hw_hondaciviceg.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373658404073503/3.5_hw_hondacivicsi.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373658731216916/4.5_hw_hondacivictyper.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373659029029035/5.5_hw_hondacivictyper.png)

- <strong>Morpar Collection</strong>

![car](https://media.discordapp.net/attachments/1086372623002390620/1086373807691939940/1.5_hw_dodgedart.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373807977144393/2.5_hw_dodgechallenger.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373808195244193/3.5_hw_dodgechallengerdrift.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373808455303228/4.5_hw_dodgechallengersrt.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373808711147583/5.5_hw_dodgevipersrt.png)

- <strong>General Car's</strong>

![car](https://media.discordapp.net/attachments/1086372623002390620/1086373947081244724/caddilacct5_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373947345481868/jaguarxeproject8_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373947622314065/lamborghiniestoque_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373947882356806/porschepanameraturbo_hw.png)
![car](https://media.discordapp.net/attachments/1086372623002390620/1086373948146593913/teslamodel3_hw.png)