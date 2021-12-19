Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")

jd = Tunnel.getInterface(GetCurrentResourceName())

local GeneralConfig = {}
local GeneralLocs = {}
local Aberto = false

RegisterKeyMapping('abrirproducao','Abrir Producao de Item','keyboard', 'E')
RegisterCommand("abrirproducao",function()
    for k,v in pairs(GeneralLocs) do
        local ped = PlayerPedId()
        local distance = #(GetEntityCoords(ped) - v[1])

        if distance < 1 and not Aberto and jd.ClientPerm(v.permissao) then
            Aberto = true
            SetNuiFocus(true, true)
            TransitionToBlurred(true)
            SendNUIMessage({action = 'open',config = GeneralConfig[v.tipo], type = v.tipo})
        end
    end
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local sleep = 1000
        for k,v in pairs(GeneralLocs) do
            local distance = #(GetEntityCoords(ped) - v[1])
            if distance < 5 then
                sleep = 4
                DrawMarker(21, v[1], 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 155, 155, 155, 155, false, false, 2, false)
            end
        end
        Wait(sleep)
    end
end)

RegisterNUICallback("close",function(data,cb)
    
    Aberto = false
    SetNuiFocus(false, false)
    TransitionFromBlurred(1000)

end)


RegisterNUICallback("CraftItem",function(data, cb)

    local type = data.type
    local item = data.config
    
    for k,v in pairs(GeneralConfig[data.type][1]) do
        if v.item == item then
            jd.CraftItem(v.item,v.quantidade,v.ingrediente)
        end
    end
end)

RegisterNetEvent("kTH7N8DqeOCz4hd")
AddEventHandler("kTH7N8DqeOCz4hd",function(f1,f2,active)
    if active then
        GeneralConfig = f1
        GeneralLocs = f2
    end
end)

CreateThread(function()


    jd.nev4OY9Htjtha()
end)
