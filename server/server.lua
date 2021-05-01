data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('AT_bountyhunting:AddSomeMoney')
AddEventHandler('AT_bountyhunting:AddSomeMoney', function()
  local _source = source
  local price = Config.Price
  local xp = Config.Xp
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
       if user ~= nil then
        local Kans = math.random(1,100)
        if Kans >= 50 then
            TriggerClientEvent('notify:client:SendAlert', _source, { type = 'succes', text = 'لقد نجحت بالمهمة وحصلت على $5 دولار  ', length = 4500})
            user.addMoney(price)
            user.addXP(xp)
                  --else
                 --  TriggerClientEvent('notify:client:SendAlert', _source, { type = 'succes', text = 'لقد نجحت بالمهمة وحصلت على قطعتين ذهب', length = 4500})
                 --data.addItem(_source,"goldnugget", 2)
                 --user.addXP(xp) 
            end
        end
    end)
end)