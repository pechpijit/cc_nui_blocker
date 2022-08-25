ESX = nil

TriggerEvent(Config.EventRoute['getSharedObject'], function(obj)
    ESX = obj
end)

RegisterServerEvent(GetCurrentResourceName())
AddEventHandler(GetCurrentResourceName(), function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local playerIsOpenNUIDevTools = false

    if string.upper(Config.TypeCheckPermission) == 'STEAM' then
        local identifier = xPlayer.getIdentifier()
        if not ArrayIsInOne(Config.Permissions.AllowSteamIdentifier, identifier) then
            playerIsOpenNUIDevTools = true
        end
    else
        local group = xPlayer.getGroup()
        if not ArrayIsInOne(Config.Permissions.AllowGroupPlayer, group) then
            playerIsOpenNUIDevTools = true
        end
    end

    if playerIsOpenNUIDevTools then
        local status, err = pcall(function()
            Config.ServerOnSendDiscordHook(_source)
        end)
        logError('Config.ServerOnSendDiscordHook', err)

        DropPlayer(_source, Config.KickMessage)
    end
end)