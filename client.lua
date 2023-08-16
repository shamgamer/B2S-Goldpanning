local QBCore = exports['qb-core']:GetCoreObject()
CreateThread(function()
    if Config.StartMSGT then
    print(Config.StartMSG)
    end
    RequestModel("a_m_m_ktown_01")
                while not HasModelLoaded(GetHashKey("a_m_m_ktown_01")) do
                    Citizen.Wait(1)
                end
                local ped= CreatePed(0, GetHashKey("a_m_m_ktown_01"), -1577.56, 2101.08, 67.3, 333.3, true)
                FreezeEntityPosition(ped, true)
                SetEntityInvincible(ped, true)
                SetBlockingOfNonTemporaryEvents(ped, true)

end)
local blip
Citizen.CreateThread(function()
    blip = AddBlipForCoord(-1577.56, 2101.08, 67.3)
    SetBlipSprite (blip, 605)
    SetBlipDisplay(blip, 2)
    SetBlipScale  (blip, 0.7)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 46)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Config.BlipText)
    EndTextCommandSetBlipName(blip)
end) 

local panstarted = false
-- Pan Drop Tables
RegisterNetEvent("b2s-goldpanning:c:sellEveryThing", function()
    TriggerServerEvent("b2s-goldpanning:s:sellEveryThing")
end)

RegisterNetEvent("Pan1", function()
    if panstarted then return end
    if Config.Pan1UseToggle then
        panstarted = true
        if IsPedSittingInAnyVehicle(PlayerPedId()) == false or Config.CantBeInCar1 == false then
                if Config.Pan1UseDelayToggle then
                    exports['progressbar']:Progress({
                        name = 'PanD1',
                        duration = Config.Pan1UseDuration,
                        label = Config.Pan1UseMessage,
                        useWhileDead = false,
                        canCancel = false,
                        controlDisables = {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        },
                        animation ={TaskStartScenarioInPlace(PlayerPedId(), Config.Pan1Animation, 0, true)},
                        prop = {},
                        propTwo = {},
                    })
                    Wait(Config.Pan1UseDuration-1)
                    panstarted = false
                end
                local Rolls1= math.random(Config.MinRolls1,Config.MaxRolls1)
                
                while Rolls1>=0 do
                local P1drop1= math.random(1,10000)
                local P1dropQ1= math.random(1,10000)
                if Config.NotifyNumbersPan1 then
                print("--------")
                print("Size Number:")
                print(P1drop1)
                print("Quality Number:")
                print(P1dropQ1)
                print("Roll Ammount:")
                print(Rolls1+1)
                print("--------")
                end
                Rolls1 = Rolls1-1
                Wait(15)
            
                if P1drop1<=Config.LargeGoldC1 then
                    if P1dropQ1<=Config.LargeGoldHighQ1 then
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldHQ, 1)
                    elseif P1dropQ1<=Config.LargeGoldNormalQ1 then
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldNQ, 1)
                    else
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldLQ, 1)
                    end
                elseif P1drop1<=Config.MediumGoldC1 then
                    if P1dropQ1<=Config.MediumGoldHighQ1 then
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldHQ, 1)
                    elseif P1dropQ1<=Config.MediumGoldNormalQ1 then
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldNQ, 1)
                    else
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldLQ, 1)
                    end
                elseif P1drop1<=Config.SmallGoldC1 then
                    if P1dropQ1<=Config.SmallGoldHighQ1 then
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldHQ, 1)
                    elseif P1dropQ1<=Config.SmallGoldNormalQ1 then
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldNQ, 1)
                    else
                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldLQ, 1)
                    end
                elseif true then
                        if P1dropQ1<=Config.TinyGoldHighQ1 then
                            TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldHQ, 1)
                        elseif P1dropQ1<=Config.TinyGoldNormalQ1 then
                            TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldNQ, 1)
                        else
                            TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldLQ, 1)
                        end
                    else
                 end
            end 
        end
    end 
end)



            RegisterNetEvent("Pan2", function()
                if panstarted then return end
                if Config.Pan2UseToggle then
                    panstarted = true
                    if IsPedSittingInAnyVehicle(PlayerPedId()) == false or Config.CantBeInCar2 == false then
                            if Config.Pan2UseDelayToggle then
                                exports['progressbar']:Progress({
                                    name = 'PanD2',
                                    duration = Config.Pan2UseDuration,
                                    label = Config.Pan2UseMessage,
                                    useWhileDead = false,
                                    canCancel = false,
                                    controlDisables = {
                                        disableMovement = true,
                                        disableCarMovement = true,
                                        disableMouse = false,
                                        disableCombat = true,
                                    },
                                    animation ={TaskStartScenarioInPlace(PlayerPedId(), Config.Pan2Animation, 0, true)},
                                    prop = {},
                                    propTwo = {},
                                })
                                Wait(Config.Pan2UseDuration-1)
                                panstarted = false
                            end
                            local Rolls2= math.random(Config.MinRolls2,Config.MaxRolls2)
                            
                            while Rolls2>=0 do
                            local P2drop2= math.random(1,10000)
                            local P2dropQ2= math.random(1,10000)
                            if Config.NotifyNumbersPan2 then
                            print("--------")
                            print("Size Number:")
                            print(P2drop2)
                            print("Quality Number:")
                            print(P2dropQ2)
                            print("Roll Ammount:")
                            print(Rolls2+1)
                            print("--------")
                            end
                            Rolls2 = Rolls2-1
                            Wait(15)
                        
                            if P2drop2<=Config.LargeGoldC2 then
                                if P2dropQ2<=Config.LargeGoldHighQ2 then
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldHQ, 1)
                                elseif P2dropQ2<=Config.LargeGoldNormalQ2 then
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldNQ, 1)
                                else
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldLQ, 1)
                                end
                            elseif P2drop2<=Config.MediumGoldC2 then
                                if P2dropQ2<=Config.MediumGoldHighQ2 then
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldHQ, 1)
                                elseif P2dropQ2<=Config.MediumGoldNormalQ2 then
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldNQ, 1)
                                else
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldLQ, 1)
                                end
                            elseif P2drop2<=Config.SmallGoldC2 then
                                if P2dropQ2<=Config.SmallGoldHighQ2 then
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldHQ, 1)
                                elseif P2dropQ2<=Config.SmallGoldNormalQ2 then
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldNQ, 1)
                                else
                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldLQ, 1)
                                end
                            elseif true then
                                    if P2dropQ2<=Config.TinyGoldHighQ2 then
                                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldHQ, 1)
                                    elseif P2dropQ2<=Config.TinyGoldNormalQ2 then
                                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldNQ, 1)
                                    else
                                        TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldLQ, 1)
                                    end
                                else end
                            end 
                        end
                    end
                        end)






                        RegisterNetEvent("Pan3", function()
                            if panstarted then return end
                            if Config.Pan3UseToggle then
                                panstarted = true
                                if IsPedSittingInAnyVehicle(PlayerPedId()) == false or Config.CantBeInCar3 == false then
                                        if Config.Pan3UseDelayToggle then
                                            exports['progressbar']:Progress({
                                                name = 'PanD3',
                                                duration = Config.Pan3UseDuration,
                                                label = Config.Pan3UseMessage,
                                                useWhileDead = false,
                                                canCancel = false,
                                                controlDisables = {
                                                    disableMovement = true,
                                                    disableCarMovement = true,
                                                    disableMouse = false,
                                                    disableCombat = true,
                                                },
                                                animation ={TaskStartScenarioInPlace(PlayerPedId(), Config.Pan3Animation, 0, true)},
                                                prop = {},
                                                propTwo = {},
                                            })
                                            Wait(Config.Pan3UseDuration-1)
                                            panstarted = false
                                        end
                                        local Rolls3= math.random(Config.MinRolls3,Config.MaxRolls3)
                                        
                                        while Rolls3>=0 do
                                        local P3drop3= math.random(1,10000)
                                        local P3dropQ3= math.random(1,10000)
                                        if Config.NotifyNumbersPan3 then
                                        print("--------")
                                        print("Size Number:")
                                        print(P3drop3)
                                        print("Quality Number:")
                                        print(P3dropQ3)
                                        print("Roll Ammount:")
                                        print(Rolls3+1)
                                        print("--------")
                                        end
                                        Rolls3 = Rolls3-1
                                        Wait(15)
                                    
                                        if P3drop3<=Config.LargeGoldC3 then
                                            if P3dropQ3<=Config.LargeGoldHighQ3 then
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldHQ, 1)
                                            elseif P3dropQ3<=Config.LargeGoldNormalQ3 then
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldNQ, 1)
                                            else
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.LargeGoldLQ, 1)
                                            end
                                        elseif P3drop3<=Config.MediumGoldC3 then
                                            if P3dropQ3<=Config.MediumGoldHighQ3 then
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldHQ, 1)
                                            elseif P3dropQ3<=Config.MediumGoldNormalQ3 then
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldNQ, 1)
                                            else
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.MediumGoldLQ, 1)
                                            end
                                        elseif P3drop3<=Config.SmallGoldC3 then
                                            if P3dropQ3<=Config.SmallGoldHighQ3 then
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldHQ, 1)
                                            elseif P3dropQ3<=Config.SmallGoldNormalQ3 then
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldNQ, 1)
                                            else
                                                TriggerServerEvent("b2s-goldpanning:s:additem", Config.SmallGoldLQ, 1)
                                            end
                                        elseif true then
                                                if P3dropQ3<=Config.TinyGoldHighQ3 then
                                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldHQ, 1)
                                                elseif P3dropQ3<=Config.TinyGoldNormalQ3 then
                                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldNQ, 1)
                                                else
                                                    TriggerServerEvent("b2s-goldpanning:s:additem", Config.TinyGoldLQ, 1)
                                                end
                                            else end
                                        end 
                                    end
                                end
                                    end)




-- Pan Checks

        RegisterNetEvent("Pancheck", function()
        QBCore.Functions.TriggerCallback('b2s-goldpanning:s:haspan3Item', function(cb)
            if cb then
                if cb then
                    if Config.Pan3ReqLicense then
                        QBCore.Functions.TriggerCallback('b2s-goldpanning:s:haslicenseItem', function(cb)
                            if cb then
                                TriggerEvent("Pan3")
                            else
                                QBCore.Functions.Notify("You need a lisence to use this pan", "error")
                            end
                        end)
                    else
                        TriggerEvent("Pan3")
                    end
                end
            else
                QBCore.Functions.TriggerCallback('b2s-goldpanning:s:haspan2Item', function(cb)
                    if cb then
                        if cb then
                            if Config.Pan2ReqLicense then
                                QBCore.Functions.TriggerCallback('b2s-goldpanning:s:haslicenseItem', function(cb)
                                    if cb then
                                        TriggerEvent("Pan2")
                                    else
                                        QBCore.Functions.Notify("You need a lisence to use this pan", "error")
                                    end
                                end)
                            else
                                TriggerEvent("Pan2")
                            end
                        end
                    else
                        QBCore.Functions.TriggerCallback('b2s-goldpanning:s:haspan1Item', function(cb)
                            if cb then
                                if Config.Pan1ReqLicense then
                                    QBCore.Functions.TriggerCallback('b2s-goldpanning:s:haslicenseItem', function(cb)
                                        if cb then
                                            TriggerEvent("Pan1")
                                        else
                                            QBCore.Functions.Notify("You need a lisence to use this pan", "error")
                                        end
                                    end)
                                else
                                    TriggerEvent("Pan1")
                                end
                            else
                                QBCore.Functions.Notify("You don't have a pan!", "error")
                            end
                        end) 
                    end
                end) 
            end
        end) 
    end)


RegisterNetEvent("panshop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "PanningShop", Config.Shop)
end)

-- Interactions

CreateThread(function()
    for i,v in ipairs(Config.ClientInteractions) do
        if v.Event2 then
            exports['qb-target']:AddBoxZone(v.Name, v.CoordsV3, v.Length, v.Width, {
                name = v.Name,
                heading = v.Heading,
                debugPoly= Config.ShowDebugPoly,
                minZ= v.MinZ,
                maxZ= v.MaxZ,
            }, {
                options = {
                    {
                        type = "client",
                        event = v.Event,
                        icon = v.Icon,
                        label = v.Label,
                    },
                    {
                        type = "client",
                        event = v.Event2,
                        icon = v.Icon2,
                        label = v.Label2,
                    },
                },
                distance = v.InteractionDistance
            })
        else
            exports['qb-target']:AddBoxZone(v.Name, v.CoordsV3, v.Length, v.Width, {
                name = v.Name,
                heading = v.Heading,
                debugPoly= Config.ShowDebugPoly,
                minZ= v.MinZ,
                maxZ= v.MaxZ,
            }, {
                options = {
                    {
                        type = "client",
                        event = v.Event,
                        icon = v.Icon,
                        label = v.Label,
                    },
                },
                distance = v.InteractionDistance
            })
        end
        if Config.DebugList then
            print(v.Name)
        end
	end
end)