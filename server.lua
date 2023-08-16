local QBCore = exports['qb-core']:GetCoreObject()

-- Add Money

RegisterNetEvent("b2s-goldpanning:s:addmoney", function(type, amount)
    local src= source
    addMoney(src, type, amount)
end)

function addMoney(src, type, amount)
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddMoney(type, amount)
end

-- Remove item

RegisterNetEvent("b2s-goldpanning:s:removeitem", function(item, amount)
    local player = QBCore.Functions.GetPlayer(source)
    player.Functions.RemoveItem(item, amount, false)
end)

-- Add item

RegisterNetEvent("b2s-goldpanning:s:additem", function(item, amount)
    local player = QBCore.Functions.GetPlayer(source)
    player.Functions.AddItem(item, amount, false)
end)

-- Sell Everything function

function sellEverything(src)
    local money=0
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        for _,v in ipairs(Config.sellItems) do
            local hasi= Player.Functions.GetItemByName(v.name)
            if hasi~= nil then
                money= money +(Player.Functions.GetItemByName(v.name).amount*math.random( v.MinPricePerOne, v.MaxPricePerOne))
                Player.Functions.RemoveItem(v.name, Player.Functions.GetItemByName(v.name).amount, false)
            end
        end
    end
    addMoney(src, "cash", money)
end

RegisterNetEvent("b2s-goldpanning:s:sellEveryThing", function()
    src= source
    sellEverything(src)
end)

-- Check item

QBCore.Functions.CreateCallback('b2s-goldpanning:s:haspan1Item', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player ~= nil then
        local hasItem= Player.Functions.GetItemByName(Config.Pan1Item)
        if hasItem ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('b2s-goldpanning:s:haspan2Item', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player ~= nil then
        local hasItem= Player.Functions.GetItemByName(Config.Pan2Item)
        if hasItem ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('b2s-goldpanning:s:haspan3Item', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player ~= nil then
        local hasItem= Player.Functions.GetItemByName(Config.Pan3Item)
        if hasItem ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('b2s-goldpanning:s:haslicenseItem', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source) 
    if Player ~= nil then
        local hasItem= Player.Functions.GetItemByName(Config.PanLicenseItem)
        if hasItem ~= nil then
            cb(true)
        else
            cb(false)
        end
    end
end)