ESX = nil
PlayerLoaded = false
ESX = exports["es_extended"]:getSharedObject()
local display = false

-- DRAW MARKER & TEXT
function  Draw3DText(x,y,z,text,scale, textX, textY, textZ)
    local onScreen, _x, _y = World3dToScreen2d(textX,textY,textZ)
    local pX, pY, pZ = table.unpack(GetGameplayCamCoords())
    SetTextScale(scale,scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(true)
    SetTextColour(255,255,255,215)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 700
    DrawRect(_x, _y + 0.0150, 0.06 + factor,  0.03, 41, 11, 41, 100 )
    DrawMarker(
        27, 
        x, 
        y, 
        z, 
        0.0, 
        0.0, 
        0.0, 
        0.0, 
        0.0, 
        0.0, 
        1.0, 
        1.0, 
        1.0, 
        170, 
        24, 
        107, 
        255, 
        false, 
        false, 
        2, 
        false
    )
end

-- SET DISPLAY 
local level, point;
RegisterNetEvent('nt_crafting:SetDisplay')
AddEventHandler('nt_crafting:SetDisplay', function(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
        items = Config.Items,
    })
    if display == true then
        ExecuteCommand('sendLevel')
        RegisterNetEvent('nt_crafting:showLevel');
        AddEventHandler('nt_crafting:showLevel', function (rank, exp)
            SendNUIMessage({
                type = "level",
                rank = rank,
                exp = exp
            })
        end)
    end
end)

--NUI CALLBACKs

RegisterNUICallback("exit", function(data)

    TriggerEvent('nt_crafting:SetDisplay', false)
    
 end)
RegisterNUICallback('craft', function(data)
    TriggerServerEvent('nt_crafting:craft', data)
end)
function disableControl(display)
    DisableControlAction(0,1, display)
    DisableControlAction(0,142, display)
    DisableControlAction(0,18, display)
    DisableControlAction(0,322, display)
    DisableControlAction(0,2, display)
    DisableControlAction(0,106, display)
end
CreateThread(function ()
    ESX = exports["es_extended"]:getSharedObject()
    while ESX.GetPlayerData().job == nil do
        Wait(100)
    end
    PlayerLoaded = true
    local location1 = Config.Location --config.lua
    local text1 = Config.TextLoc
    while true do
        local pedCoords = GetEntityCoords(PlayerPedId())
        if PlayerLoaded == true then
            if Vdist(pedCoords, location1) < Config.MaxDistance then
                --Call function
                Draw3DText(location1.x, location1.y, location1.z,'~w~ Press ~y~ [E] ~w~ for crafting',0.4, text1.x, text1.y, text1.z);
            end
            --CHECK LOCATION
            if Vdist(pedCoords, location1) < Config.ClickDistance and IsControlPressed(0,38) then
                TriggerEvent('nt_crafting:SetDisplay', not display)
                while display do
                    disableControl(display)
                    Wait(0)
                end
            end
        end
        Wait(7)
    end
end)
