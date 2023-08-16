Config = Config or {}

-- Debug Settings:

-- Start Message
Config.StartMSGT = true -- Toggles the console message.
Config.StartMSG = "B2S-GoldPanning(v1.0):ON" -- A console message when the script starts.

-- Notify Generated Numbers (true/false):
Config.NotifyNumbersPan1 = false -- sends a console message to the player of the generated numbers for pan lvl 1 when used.
Config.NotifyNumbersPan2 = false -- sends a console message to the player of the generated numbers for pan lvl 2 when used.
Config.NotifyNumbersPan3 = true-- sends a console message to the player of the generated numbers for pan lvl 3 when used.

-- Blip:
Config.BlipText = "Goldpanning Shop" -- the name for the pan shop blip.

-- Items:

-- Pan Toggles (true/false):
Config.Pan1UseToggle = true -- toggles the usage of pan lvl 1.
Config.Pan2UseToggle = true -- toggles the usage of pan lvl 2.
Config.Pan3UseToggle = true -- toggles the usage of pan lvl 3.

-- Pan Items ("item"):
Config.Pan1Item = "pan1"
Config.Pan2Item = "pan2"
Config.Pan3Item = "pan3"

-- Pan Wait Toggle (true/false):
Config.Pan1UseDelayToggle = true -- If when using Pan lvl 1 there will be a use time.
Config.Pan2UseDelayToggle = true -- If when using Pan lvl 2 there will be a use time.
Config.Pan3UseDelayToggle = true -- If when using Pan lvl 3 there will be a use time.

-- Pan Wait Duration (INT):
Config.Pan1UseDuration = 30000 -- The duration of use time in MS (1000 = 1 second).
Config.Pan2UseDuration = 22500 -- The duration of use time in MS (1000 = 1 second).
Config.Pan3UseDuration = 12500 -- The duration of use time in MS (1000 = 1 second).

-- Pan Wait Message ("message")
Config.Pan1UseMessage = "Panning For Gold" -- While wait toggle is on what message will be displayed while waiting.
Config.Pan2UseMessage = "Panning For Gold" -- While wait toggle is on what message will be displayed while waiting.
Config.Pan3UseMessage = "Panning For Gold" -- While wait toggle is on what message will be displayed while waiting.

-- Animations ("animation")
Config.Pan1Animation = "PROP_HUMAN_BUM_BIN" -- The animation for the useage of pan 1. (default = "PROP_HUMAN_BUM_BIN")
Config.Pan2Animation = "PROP_HUMAN_BUM_BIN" -- The animation for the useage of pan 2. (default = "PROP_HUMAN_BUM_BIN")
Config.Pan3Animation = "PROP_HUMAN_BUM_BIN" -- The animation for the useage of pan 3. (default = "PROP_HUMAN_BUM_BIN")

-- License Toggles
Config.Pan1ReqLicense = false -- Toggles if Pan lvl 1 will require a license to use.
Config.Pan2ReqLicense = false -- Toggles if Pan lvl 2 will require a license to use.
Config.Pan3ReqLicense = true -- Toggles if Pan lvl 3 will require a license to use.

-- License item
Config.PanLicenseItem = "panlicense" -- The license item that can be required for use of some pans.

-- Gold Drop Items ("item"):

Config.LargeGoldHQ = "lghq"
Config.LargeGoldNQ = "lgnq"
Config.LargeGoldLQ = "lglq"
Config.MediumGoldHQ = "mghq"
Config.MediumGoldNQ = "mgnq"
Config.MediumGoldLQ = "mglq"
Config.SmallGoldHQ = "sghq"
Config.SmallGoldNQ = "sgnq"
Config.SmallGoldLQ = "sglq"
Config.TinyGoldHQ = "tghq"
Config.TinyGoldNQ = "tgnq"
Config.TinyGoldLQ = "tglq"

-- Drops Settings:
-- Pan lvl 1 Gold Rolls (INT):
Config.MinRolls1 = 0
Config.MaxRolls1 = 3

-- Pan lvl 2 Gold Rolls (INT):
Config.MinRolls2 = 0
Config.MaxRolls2 = 5

-- Pan lvl 3 Gold Rolls (INT):
Config.MinRolls3 = 1
Config.MaxRolls3 = 7


-- Pan lvl 1 Gold Type Chances (INT): (generates numbers from 1 to 10000) (read description of configs)
-- (example Large=100,Medium=1100,Small=6100 makes Large have 1% medium 10% small 50% and tiny 39% because if the number is less than 100 it will check if its less than 1100 and it must be more than 100 already...)

Config.LargeGoldC1 = 55 -- Chance for large gold in Pan 1 if the generated number is less or equal to set.
Config.MediumGoldC1 = 250 -- Chance for medium gold in Pan 1 if the generated number is more than large and less or equal to set.
Config.SmallGoldC1 = 2000 -- Chance for small gold in Pan 1 if the generated number is more than medium and less of equal to set.
-- if none of these are dropped then the player gets tiny gold.

--Pan lvl 1 Gold Quality Chances (INT): (generates numbers from 1 to 10000) (read description of configs)

Config.LargeGoldHighQ1 = 50 -- If large gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.LargeGoldNormalQ1 = 1000 -- If large gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.MediumGoldHighQ1 = 100 -- If medium gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.MediumGoldNormalQ1 = 2000 -- If medium gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.SmallGoldHighQ1 = 350 -- If small gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.SmallGoldNormalQ1 = 2500 -- If small gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.TinyGoldHighQ1 = 500 -- If tiny gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.TinyGoldNormalQ1 = 2500 -- If tiny gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
-- low quality is set if you dont get normal or high quality






-- Pan lvl 2 Gold Type Chances (INT): (generates numbers from 1 to 10000) (read description of configs)
-- (example Large=100,Medium=1100,Small=6100 makes Large have 1% medium 10% small 50% and tiny 39% because if the number is less than 100 it will check if its less than 1100 and it must be more than 100 already...)

Config.LargeGoldC2 = 100 -- Chance for large gold in Pan 1 if the generated number is less or equal to set.
Config.MediumGoldC2 = 500 -- Chance for medium gold in Pan 1 if the generated number is more than large and less or equal to set.
Config.SmallGoldC2 = 2500 -- Chance for small gold in Pan 1 if the generated number is more than medium and less of equal to set.
-- if none of these are dropped then the player gets tiny gold.

--Pan lvl 2 Gold Quality Chances (INT): (generates numbers from 1 to 10000) (read description of configs)

Config.LargeGoldHighQ2 = 100 -- If large gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.LargeGoldNormalQ2 = 1200 -- If large gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.MediumGoldHighQ2 = 120 -- If medium gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.MediumGoldNormalQ2 = 2500 -- If medium gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.SmallGoldHighQ2 = 500 -- If small gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.SmallGoldNormalQ2 = 3000 -- If small gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.TinyGoldHighQ2 = 1000 -- If tiny gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.TinyGoldNormalQ2 = 4000 -- If tiny gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
-- low quality is set if you dont get normal or high quality






-- Pan lvl 3 Gold Type Chances (INT): (generates numbers from 1 to 10000) (read description of configs)
-- (example Large=100,Medium=1100,Small=6100 makes Large have 1% medium 10% small 50% and tiny 39% because if the number is less than 100 it will check if its less than 1100 and it must be more than 100 already...)

Config.LargeGoldC3 = 250 -- Chance for large gold in Pan 1 if the generated number is less or equal to set.
Config.MediumGoldC3 = 750 -- Chance for medium gold in Pan 1 if the generated number is more than large and less or equal to set.
Config.SmallGoldC3 = 3000 -- Chance for small gold in Pan 1 if the generated number is more than medium and less of equal to set.
-- if none of these are dropped then the player gets tiny gold.

--Pan lvl 3 Gold Quality Chances (INT): (generates numbers from 1 to 10000) (read description of configs)

Config.LargeGoldHighQ3 = 250 -- If large gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.LargeGoldNormalQ3 = 2500 -- If large gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.MediumGoldHighQ3 = 500 -- If medium gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.MediumGoldNormalQ3 = 3000 -- If medium gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.SmallGoldHighQ3 = 750 -- If small gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.SmallGoldNormalQ3 = 3200 -- If small gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
Config.TinyGoldHighQ3 = 1500 -- If tiny gold drops then what are the chances for high quality. if generated number is equal or less than set.
Config.TinyGoldNormalQ3 = 3500 -- If tiny gold drops then what are the chances for normal quality. if generated number is equal or less than set and more than high quality.
-- low quality is set if you dont get normal or high quality


-- Extras:
Config.CantBeInCar1 = true -- Panning won't work if the player is in a car for pan 1.
Config.CantBeInCar2 = true -- Panning won't work if the player is in a car for pan 2.
Config.CantBeInCar3 = true -- Panning won't work if the player is in a car for pan 3.

Config.Shop= {
    label = "Panning Shop",
        slots = 30,
        items= {
            [1]={
                name = Config.Pan1Item,
                price = 479,
                amount = 100,
                type = "item",
                slot = 1,
            },
            [2]={
                name = Config.Pan2Item,
                price = 2250,
                amount = 100,
                type = "item",
                slot = 2,
            },
            [3]={
                name = Config.Pan3Item,
                price = 5500,
                amount = 100,
                type = "item",
                slot = 3,
            },
            [4]={
                name = Config.PanLicenseItem,
                price = 250,
                amount = 100,
                type = "item",
                slot = 4,
            },
        },
}


Config.sellItems = {
    [1] = {
        name = "tglq",
        MinPricePerOne = 1, -- tiny low quality gold price.
        MaxPricePerOne = 3 -- tiny low quality gold price.
    },
    [2] = {
        name = "tgnq",
        MinPricePerOne = 4, -- tiny normal quality gold min price.
        MaxPricePerOne = 6 -- tiny normal quality gold max price.
    },
    [3] = {
        name = "tghq",
        MinPricePerOne = 9, -- tiny high quality gold min price.
        MaxPricePerOne = 12 -- tiny high quality gold max price.
    },
    [4] = {
        name = "sglq",
        MinPricePerOne = 3, -- small low quality gold min price.
        MaxPricePerOne = 5 -- small low quality gold max price.
    },
    [5] = {
        name = "sgnq",
        MinPricePerOne = 7, -- small normal quality gold min price.
        MaxPricePerOne = 9 -- small normal quality gold max price.
    },
    [6] = {
        name = "sghq",
        MinPricePerOne = 14, -- small high quality gold min price.
        MaxPricePerOne = 19 -- small high quality gold max price.
    },
    [7] = {
        name = "mglq",
        MinPricePerOne = 20, -- medium low quality gold min price.
        MaxPricePerOne = 26 -- medium low quality gold max price.
    },
    [8] = {
        name = "mgnq",
        MinPricePerOne = 38, -- medium normal quality gold min price.
        MaxPricePerOne = 43 -- medium normal quality gold max price.
    },
    [9] = {
        name = "mghq",
        MinPricePerOne = 13, -- medium high quality gold min price.
        MaxPricePerOne = 123 -- medium high quality gold max price.
    },
    [10] = {
        name = "lglq",
        MinPricePerOne = 173, -- large low quality gold min price.
        MaxPricePerOne = 189 -- large low quality gold max price.
    },
    [11] = {
        name = "lgnq",
        MinPricePerOne = 300, -- large normal quality gold min price.
        MaxPricePerOne = 347 -- large normal quality gold max price.
    },
    [12] = {
        name = "lghq",
        MinPricePerOne = 1000, -- large high quality gold min price.
        MaxPricePerOne = 1250 -- large high quality gold max price.
    },
}

-- locations:
Config.ShowDebugPoly = false -- show red lines to outline interaction areas. (requires server restart after turning from true to false)
Config.DebugList = false -- if true will print in the console the name set in every interaction that was loaded in the client config, can help if something was set wrong in the list.

-- Name: the name assigned to the interaction area.
-- events: can be "Pancheck" for triggering panning or "panshop" to open the shop or "b2s-goldpanning:c:sellEveryThing" to sell the gold.
-- Icon: the icon that will show up in the interaction.
-- Label: the text that will be shown besides the icon when interacting.
-- CordsV3: the cordinates that will be set for the interaction (default is vector3)
-- Length: ... 
-- Width: just take them in order from left to right if you cant figure it out just look at the code.
-- Heading: in what direction is the interaction box is rotated to be.
-- MinZ and MaxZ: minium and maxium hight for interactions.
-- InteractionDistance: how far away the player will be able to interact.
Config.ClientInteractions = {

    [1] = {Name = "panshop01", Event = "panshop", Event2 = "b2s-goldpanning:c:sellEveryThing", Icon = "fas fa-hands-helping", Icon2 = "fas fa-hand-holding-usd", Label = "Pan Shop", Label2 = "Sell Gold", CoordsV3 = vector3(-1577.56, 2101.04, 68.11), Length = 1, Width = 1, Heading = 335, MinZ = 67.11, MaxZ = 71.11, InteractionDistance = 2.0,},
    [2] = {Name = "pan01", Event = "Pancheck", Event2 = nil, Icon = "fas fa-hands-helping", Icon2 = nil, Label = "Pan", Label2 = nil, CoordsV3 = vector3(-1619.01, 2094.3, 64.45), Length = 18.4, Width = 60, Heading = 32, MinZ = 61.45, MaxZ = 64.64, InteractionDistance = 2.5,},
    [3] = {Name = "pan02", Event = "Pancheck", Event2 = nil, Icon = "fas fa-hands-helping", Icon2 = nil, Label = "Pan", Label2 = nil, CoordsV3 = vector3(-1559.41, 2158.54, 51.72), Length = 62.2, Width = 5, Heading = 315, MinZ = 47.32, MaxZ = 51.52, InteractionDistance = 2.5,},
    [4] = {Name = "pan03", Event = "Pancheck", Event2 = nil, Icon = "fas fa-hands-helping", Icon2 = nil, Label = "Pan", Label2 = nil, CoordsV3 = vector3(-1573.21, 2145.37, 52.16), Length = 30.4, Width = 5, Heading = 313, MinZ = 51.16, MaxZ = 56.76, InteractionDistance = 2.5,},
    [5] = {Name = "pan04", Event = "Pancheck", Event2 = nil, Icon = "fas fa-hands-helping", Icon2 = nil, Label = "Pan", Label2 = nil, CoordsV3 = vector3(-1585.68, 2124.13, 58.4), Length = 25, Width = 7, Heading = 336, MinZ = 57.4, MaxZ = 61.0, InteractionDistance = 2.5,},
    [6] = {Name = "pan05", Event = "Pancheck", Event2 = nil, Icon = "fas fa-hands-helping", Icon2 = nil, Label = "Pan", Label2 = nil, CoordsV3 = vector3(-417.81, 2951.26, 14.94), Length = 62.8, Width = 15, Heading = 336, MinZ = 9.94, MaxZ = 13.94, InteractionDistance = 2.5,},
}



--[[
B2S-GoldPanning Version: 1.0
Made By: Shamgamer and BR2BOY
]]