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
         --   TriggerClientEvent('notify:client:SendAlert', _source, { type = 'succes', text = 'لقد نجحت بالمهمة وحصلت على $5 دولار  ', length = 4500})
            TriggerClientEvent("vorp:TipRight", _source, { type = 'succes', text = 'You succeeded, and earned $ 5  ', length = 4500})

            --user.addMoney(price)
            VORP.addMoney(0,price)
          --  user.addXP(xp)
            Character.addXp(xp)
                  --else
                 --  TriggerClientEvent('notify:client:SendAlert', _source, { type = 'succes', text = 'لقد نجحت بالمهمة وحصلت على قطعتين ذهب', length = 4500})
                 --data.addItem(_source,"goldnugget", 2)
                 --user.addXP(xp) 
            end
        end
    end)
end)