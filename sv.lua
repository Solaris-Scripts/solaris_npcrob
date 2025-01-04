
local items = {
    {
        itemName = 'money',
        itemRandomAmount = {10, 25}
    },
    {
        itemName = 'money',
        itemRandomAmount = {10, 25}
    },
    {
        itemName = 'money',
        itemRandomAmount = {10, 25}
    },
    {
        itemName = 'money',
        itemRandomAmount = {25, 50}
    },
    {
        itemName = 'money',
        itemRandomAmount = {25, 50}
    },
    {
        itemName = 'money',
        itemRandomAmount = {50, 100}
    },
    {
        itemName = 'weed_joint',
        itemRandomAmount = {1, 3}
    },
    {
        itemName = 'weed_joint',
        itemRandomAmount = {1, 3}
    },
    {
        itemName = 'gold_watch',
        itemRandomAmount = {1, 1}
    },
    {
        itemName = 'phone',
        itemRandomAmount = {1, 1}
    },
    {
        itemName = 'phone',
        itemRandomAmount = {1, 1}
    },
    
}

RegisterNetEvent('solaris_npcrob:server:robNpc', function(pCoords, Ped,oCoords, robbed)
    local _source = source

    if #(GetEntityCoords(GetPlayerPed(_source)) - pCoords) > 0.5 then
        return false
    end
    if Ped ~= nil then
        return false
    end
    if oCoords ~= oCoords then
        return false
    end
    if not robbed then
        return false
    end

    for i = 1, 3 do
        local randomItem = math.random(1, #items)
        local item = items[randomItem]
        local amount = math.random(item.itemRandomAmount[1], item.itemRandomAmount[2])
        exports.ox_inventory:AddItem(_source, item.itemName, amount)
    end
end)