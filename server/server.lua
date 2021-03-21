ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('playerConnecting', function(name, setReason, deferrals)
	deferrals.defer()
	deferrals.update("Checking Player Name. Please Wait.")

	for i=1, #Config.ForbiddenNames do

		if name == Config.ForbiddenNames[i] then	
			deferrals.done(Config.KickMessage)	
		end
	end
	
	deferrals.done()
end)