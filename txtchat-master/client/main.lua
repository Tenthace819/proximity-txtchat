--Trevor M. Scripts

RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "^3> ^7" .. name .. "", {0, 153, 204}, "^7 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "^3> ^7" .. name .. "", {0, 153, 204}, "^7 " .. message)
  end
end)

RegisterNetEvent('sendProximityMessageMe')
AddEventHandler('sendProximityMessageMe', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^3> ^7 " .. name ..": ".."^7 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^3> ^7 " .. name ..": ".."^7 " .. message)
  end
end)

RegisterNetEvent('sendProximityMessageMer')
AddEventHandler('sendProximityMessageMer', function(id, name, message)
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^3> ^7 " .. name ..": ".."^8 " .. message)
  elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(myId)), GetEntityCoords(GetPlayerPed(pid)), true) < 19.999 then
    TriggerEvent('chatMessage', "", {255, 0, 0}, " ^3> ^7 " .. name .." ".."^8 " .. message)
  end
end)