segundoshastakick = 30
alertakick = true

Citizen.CreateThread(function()
	while true do
		Wait(500)
		playerPed = GetPlayerPed(-1)
		if playerPed then
			currentPos = GetEntityCoords(playerPed, true)
			if currentPos == prevPos then
				if tiempo > 0 then
					if alertakick and tiempo == math.ceil(segundoshastakick / 4) then
						TriggerEvent("chatMessage", "CUIDADO", {255, 0, 0}, "^1Serás kickeado en " .. tiempo .. " por estar afk.")
					end
					tiempo = tiempo - 1
				else
					TriggerServerEvent("kickeoporafk")
				end
			else
				tiempo = segundoshastakick
			end
			prevPos = currentPos
		end
	end
end)