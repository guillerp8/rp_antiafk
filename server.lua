RegisterServerEvent("kickeoporafk")
AddEventHandler("kickeoporafk", function()
	DropPlayer(source, "Has sido desconectado por estar AFK.")
end)