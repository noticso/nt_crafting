ESX = nil
PlayerLoaded = false
ESX = exports["es_extended"]:getSharedObject()
local display = false
local location = vector3(670.14, 1280.48, 360.29)
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

CreateThread(function()
	TriggerEvent('gridsystem:registerMarker', {
		name = "crafting",
		pos = location,
		size = vector3(1.2, 1.2, 1.2),
		scale = vector3(0.8, 0.8, 0.8),
		control = 'E',
		rotate = 0.0,
		rotate2 = 0.0,
		shouldBob = false,
		shouldRotate = true,
		color =  { r = 130, g = 120, b = 110 },
		trasparent = 255,
		type = -1,
		texture = "crafting_snk",
		msg = 'Crafting Menu',
		action = function()
			CreateThread(function()
				TriggerEvent('nt_crafting:SetDisplay', true)
				while display do 
					DisableControlAction(0,1, display)
    				DisableControlAction(0,142, display)
    				DisableControlAction(0,18, display)
    				DisableControlAction(0,322, display)
    				DisableControlAction(0,2, display)
    				DisableControlAction(0,106, display)
					Wait(0)
				end
			end)
		end
	})
end)