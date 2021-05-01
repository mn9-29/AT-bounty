local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterServerEvent('AT_bountyhunting:AddSomeMoney')
AddEventHandler('AT_bountyhunting:AddSomeMoney', function()
  local _source = source
  local price = Config.Price
  local xp = Config.Xp
  TriggerEvent("vorpCore:getUserWeapons", tonumber(_source), function(getUserWeapons)
       if user ~= nil then
        local Kans = math.random(1,100)
        if Kans >= 50 then
            TriggerClientEvent("vorp:TipRight", _source, { type = 'succes', text = 'You succeeded, and earned $ 5  ', length = 4500})
            VORP.addMoney(0,price)
            Character.addXp(xp)
            end
        end
    end)
end)