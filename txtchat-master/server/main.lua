-- Trevor M. Scripts



AddEventHandler('chatMessage', function(source, name, message)
    if string.sub(message, 1, string.len("/")) ~= "/" then
        local name = GetPlayerName(source)
      TriggerClientEvent("sendProximityMessage", -1, source, name, message)
    end
    CancelEvent()
end)

RegisterCommand('me', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("sendProximityMessageMe", -1, source, name, table.concat(args, " "))
end, false)

RegisterCommand('mer', function(source, args, user)
    local name = GetPlayerName(source)
    TriggerClientEvent("sendProximityMessageMer", -1, source, name, table.concat(args, " "))
end, false)

RegisterCommand('twt', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^4Twotter ^5@" .. GetPlayerName(source) .. "^0", {30, 144, 255}, table.concat(args, " "))
end, false)

RegisterCommand('ooc', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "OOC | " .. GetPlayerName(source), {128, 128, 128}, table.concat(args, " "))
end, false)

RegisterCommand('ad', function(source, args, user)
    TriggerClientEvent('chatMessage', -1, "^1[ADVERT]: " .. GetPlayerName(source), {255,215,0}, table.concat(args, " "))
end, false)

function stringsplit(inputstr, sep)
  if sep == nil then
      sep = "%s"
  end
  local t={} ; i=1
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      t[i] = str
      i = i + 1
  end
  return t
end