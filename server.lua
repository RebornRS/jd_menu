Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

local jd = {}
Tunnel.bindInterface("jd_menu",jd)

local cfg = module(GetCurrentResourceName(),"config")

local GeneralConfig = {}
local GeneralLocs = {}

local Construindo = false

CreateThread(function()
    function jd.nev4OY9Htjtha()
        local source = source
        for k,v in pairs(cfg.menu.config) do
            GeneralConfig[k] = {}
            table.insert(GeneralConfig[k], v)
        end
        for k,v in pairs(cfg.menu.locs) do
            table.insert(GeneralLocs, v)
        end
        TriggerClientEvent("kTH7N8DqeOCz4hd",source,GeneralConfig,GeneralLocs,true)
    end
end)


function jd.CraftItem(item,quantidade,ingrediente)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id and not Construindo then
        for k,v in pairs(ingrediente) do
            if vRP.tryInventoryItem(user_id,v.item,v.qtd) then
                if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(user_id,item) * quantidade <= vRP.getInventoryMaxWeight(user_id) then
                    Construindo = true
                    TriggerClientEvent("progress",source,10000,"Construindo")
                    SetTimeout(10000, function()
                        Construindo = false
                        vRP.giveInventoryItem(user_id,item,quantidade)
                        TriggerClientEvent("nyo_notify",source,"sucesso","Parabéns você construiu o item"..item.."com sucesso")
                    end)
                    break
                else
                    TriggerClientEvent("nyo_notify",source,"negado","Você não tem espaço no inventário",5000)
                    break
                end
            else
                TriggerClientEvent("nyo_notify",source,"negado","Você não tem os itens necessários para a criação",5000)
                break
            end
        end
    end
end

function jd.ClientPerm(permissao)
    local source = source
    local user_id = vRP.getUserId(source)
    return vRP.hasPermission(user_id,permissao)
end
