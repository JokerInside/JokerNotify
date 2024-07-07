--[[
░░░░░██╗░█████╗░██╗░░██╗███████╗██████╗░
░░░░░██║██╔══██╗██║░██╔╝██╔════╝██╔══██╗
░░░░░██║██║░░██║█████═╝░█████╗░░██████╔╝
██╗░░██║██║░░██║██╔═██╗░██╔══╝░░██╔══██╗
╚█████╔╝╚█████╔╝██║░╚██╗███████╗██║░░██║
░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝
]]--
function Alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end

RegisterNetEvent('JokerNotify:Alert')
AddEventHandler('JokerNotify:Alert', function(title, message, time, type)
	Alert(title, message, time, type)
end)

-- Example Commands - Delete them

RegisterCommand('success', function()
	exports['JokerNotify']:Alert("SUCCESS", "You have sent <span style='color:#47cf73'>420€</span> to Tommy!", 5000, 'success')
end)

RegisterCommand('info', function()
	exports['JokerNotify']:Alert("INFO", "The Casino has opened!", 5000, 'info')
end)

RegisterCommand('error', function()
	exports['JokerNotify']:Alert("ERROR", "Please try again later!", 5000, 'error')
--	exports['JokerNotify']:Notify('ERROR", "Please try again later!", 3000, 'error')
end)

RegisterCommand('warning', function()
	exports['JokerNotify']:Alert("WARNING", "You are getting nervous!", 5000, 'warning')
end)

RegisterCommand('phone', function()
	exports['JokerNotify']:Alert("SMS", "<span style='color:#f38847'>Tommy: </span> Where are you?", 5000, 'phonemessage')
end)

RegisterCommand('longtext', function()
	exports['JokerNotify']:Alert("LONG MESSAGE", "Lorem ipsum dolor sit amet, consectetur adipiscing elit e pluribus unum.", 5000, 'neutral')
end)