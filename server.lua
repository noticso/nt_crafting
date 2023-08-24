ESX = nil
ESX = exports["es_extended"]:getSharedObject()
RegisterCommand('sendLevel', function (source, args, raw)
    local src = source
    local identifier = GetPlayerIdentifierByType(src, 'license')
    local id = identifier 
    local point = MySQL.scalar.await('SELECT points FROM level WHERE identifier = ? ',{id})
    local rank = MySQL.scalar.await('SELECT levels FROM level WHERE identifier = ?', {id})
    TriggerClientEvent('nt_crafting:showLevel', src, rank, point)
end)
RegisterNetEvent('nt_crafting:setPoint')
AddEventHandler('nt_crafting:setPoint', function (src, point)
    local levels = Config.Level
    local identifier = GetPlayerIdentifierByType(src, 'license')
    local id = identifier
    local previousPoint = MySQL.scalar.await('SELECT points FROM level WHERE identifier = ? ',{id})
    local currentRank = MySQL.scalar.await('SELECT levels FROM level WHERE identifier = ?', {id})
    local pointToAdd = tonumber(point)
    local totalPoint;
    if previousPoint ~= nil then
        totalPoint = previousPoint + pointToAdd
    else
        totalPoint = pointToAdd    
    end

    if currentRank ~=99 then
        for k,v in pairs(levels) do
            if totalPoint >=  k * 1000 and totalPoint <= (k+1) *1000  then
                currentRank= k
            else
                currentRank = currentRank
        end
    end
    else
        currentRank = 99
    end
    MySQL.insert('INSERT INTO level (identifier, points) VALUES (?, ?) ON DUPLICATE KEY UPDATE points = ?, levels = ?', {id, pointToAdd, totalPoint, currentRank})
    TriggerClientEvent('nt_crafting:ShowLevel', currentRank, totalPoint)
end)

RegisterNetEvent('nt_crafting:craft')
AddEventHandler('nt_crafting:craft', function (data)
    local src = source
    local id = GetPlayerIdentifierByType(src,'license')
    local currentRank = MySQL.scalar.await('SELECT levels FROM level WHERE identifier = ?', {id})
    if currentRank ~= nil then
        currentRank = currentRank
    else    
        currentRank = 1
    end
    local crafting;
    local craftedItem;
    plr = ESX.GetPlayerFromId(src)
    for key,value in pairs(Config.Items) do
        if value.id == data.obj then  
            local quantity = data.quantity
            local isCraftingPossible = {}
            local crafting = true
            local a = {}
            craftedItem = value.id
            for k, v in pairs(value.material) do
                _G['count_'..k] = v * quantity
                _G['material_'..k] = exports.ox_inventory:Search(src,'count', k)
                for i=0, #value.material do
                    a[i] =  k             
                end  
                for i=0, #a do
                if currentRank >= value.levelRequired then
                    if plr.canCarryItem(value.id, 1) then
                        if _G['material_'..k] ~= 0 then
                            if _G['material_'..k] >= _G['count_'..k] then
                                isCraftingPossible[i] = true                         
                            else 
                                isCraftingPossible[i] = false 
                            end  
                        else 
                            isCraftingPossible[i] = false 
                        end
                       else 
                        isCraftingPossible[i] = false 
                    end
                else
                    isCraftingPossible[i] = false 
                end
                end      
                for i=0, #isCraftingPossible do
                    if isCraftingPossible[i] == false then 
                        crafting = false
                    end    
                end
        end
        
        if crafting == false then
            TriggerClientEvent('esx:showNotification', src, "You haven't got materials or your rank isn't high enough to create this object, or you bag is heavy")
        end
        if crafting then 
            TriggerClientEvent('esx:showNotification', src, 'Crafting...')
            TriggerClientEvent('nt_crafting:SetDisplay', plr.source, false)
            for k, v in pairs(value.material) do
                exports.ox_inventory:RemoveItem(src, k, _G['count_'..k])
            end
            Wait(2000)
            TriggerEvent('nt_crafting:setPoint', src, value.points*quantity)
            plr.addInventoryItem(value.id, quantity)
            
        end
    end
end
end)
