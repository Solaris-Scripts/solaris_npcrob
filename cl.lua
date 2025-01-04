ESX = exports["es_extended"]:getSharedObject()

ped = {}

local function policeAlert()
    local alertLuck = math.random(1,50)
        if alertLuck >= 25 then
            lib.notify({
                title = "Robbing",
                description = "Be aware! someone called police!",
                type = 'error'
            })
            local data = exports['cd_dispatch']:GetPlayerInfo()
            TriggerServerEvent('cd_dispatch:AddNotification', {
                job_table = "police" ,
                coords = coords,
                title = "Robbing NPC",
                message = "The NPC saw a suspicious person",
                flash = 0,
                unique_id = tostring(math.random(0000000, 9999999)),
                blip = {
                    sprite = 280,
                    scale = 0.8,
                    colour = 1,
                    flashes = false,
                    text = text,
                    time = (1 * 60 * 1000),
                    sound = 1,
                }
            })
        else
        end
 end
 

exports.ox_target:addGlobalPed({
    {
        name = 'npc-rob',
        label = 'ROB NPC',
        icon = 'fa-solid fa-male',
        canInteract = function(entity)
            return GetPedType(entity) ~= 28 and not IsPedFatallyInjured(entity)
        end, 
        onSelect = function(data)
            if ped[data.entity] then
                lib.notify({
                    title = "Robbing",
                    description = "U cant rob same NPC twice",
                    type = 'error'
                })
                return false end
            if IsPedArmed(PlayerPedId(), 2 | 4) then
                if GetPedType(entity) == 28 then
                    lib.notify({
                        title = "Robbing",
                        description = "why would you rob an animal?",
                        type = 'error'
                    })
                else
                local robbed = false
                SetBlockingOfNonTemporaryEvents(data.entity, true)
                TaskHandsUp(data.entity, 15000, PlayerPedId(), 0, 0)
                if lib.progressBar({
                    duration = 5000,
                    label = 'Robbing NPC',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                        move = true,
                        combat = false,
                    },
                    anim = {
                        dict = 'random@countryside_gang_fight',
                        clip = 'biker_02_stickup_loop'
                    },
                }) then 
                    local ped1 = PlayerPedId()


local chance = 17
if chance <= 17 then
        local robbed = true
                    
        local pCoords = GetEntityCoords(ped1)
        local oCoords = GetEntityCoords(data.entity)

            TriggerServerEvent('solaris_npcrob:server:robNpc', pCoords, Ped, oCoords, robbed)
            ClearPedTasks(data.entity)
            SetBlockingOfNonTemporaryEvents(data.entity, false)
            ped[data.entity] = true
            Wait(150)
            local robbed = false
            Wait(15000)
            TaskSmartFleePed(data.entity, PlayerPedId(), 50.0, 100000, 0, 0)  
elseif chance >= 18 then
        lib.notify({
                title = "Robbing",
                description = "he started running away from you",
                type = 'error'
            })
            TaskSmartFleePed(data.entity, PlayerPedId(), 50.0, 100000, 0, 0)  
            end
                else 
                    lib.notify({
                        title = "Robbing",
                        description = "you canceled the robbery",
                        type = 'error'
                    })
            end
        end
        else
            lib.notify({
                title = "Robbing",
                description = "you must be armed",
                type = 'error'
            })
        end
    end
    }
})





