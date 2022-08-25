---   ██████╗   ██████╗    ██████╗  ██████╗ ██╗  ██╗ ██████╗ ██╗     █████╗  ██████╗  ██████╗ ██████╗    ██╗ --
--- ██╔═════╝ ██╔═════╝    ██╔══██╗ ██╔═══╝ ██║  ██║ ██╔═══╝ ██║    ██╔══██╗ ██╔══██╗ ██╔═══╝ ██╔══██╗   ██║ --
--- ██║       ██║          ██║  ██║ █████╗  ██║  ██║ █████╗  ██║    ██║  ██║ ██████╔╝ █████╗  ██████╔╝   ██║ --
--- ██║       ██║          ██║  ██║ ██╔══╝  ╚██╗██╔╝ ██╔══╝  ██║    ██║  ██║ ██╔═══╝  ██╔══╝  ██╔══██╗   ╚═╝ --
--- ╚═██████╗ ╚═██████╗    ██████╔╝ ██████╗  ╚███╔╝  ██████╗ ██████╗╚█████╔╝ ██║      ██████╗ ██║  ██║   ██╗ --
---   ╚═════╝   ╚═════╝    ╚═════╝  ╚═════╝   ╚══╝   ╚═════╝ ╚═════╝ ╚════╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝ --
--- Project : NUI DevTools Blocker
--- Reference : https://github.com/QamarQ/nui_blocker
--- Modify By : CodeCool Developer
--- Website : https://fivem.codecool.xyz
--- Discord : https://discord.gg/K7PDe2jfpW

---------------------------------------------------
------------------- Server Side -------------------
---------------------------------------------------

Config.ServerOnSendDiscordHook = function(xSource)
    local _source = xSource
    local xPlayer = ESX.GetPlayerFromId(_source)

    --ตัวอย่างใช้ nc_discordlogs
    exports.nc_discordlogs:Discord({
        webhook = 'player_open_nui_devtools',
        xPlayer = xPlayer,
        message = 'ผู้เล่นพยายามใช้ nui_devtools',
        description = 'ระบบได้ทำการเตะผู้เล่นออกจากระบบ และแสดงข้อความเตือนแล้ว',
        color = '00D68B',
    })

    --ตัวอย่างใช้ azael_dc-serverlogs
    local sendToDiscord = xPlayer.name .. ' ผู้เล่นพยายามใช้ nui_devtools'
    TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'player_open_nui_devtools', sendToDiscord, xPlayer.source, '^1')
end