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

Config = {}

Config.EventRoute = {
    ['getSharedObject'] = 'esx:getSharedObject',    -- Default: 'esx:getSharedObject'
}

Config.Debug = true                                 -- Debug Mode (true: แสดง log | false: ไม่แสดง log)

Config.TypeCheckPermission = 1                      -- โหมดการตรวจสอบ (1: ใช้ Steam Identifier ของ player| 2: ใช้ group ของ player)

Config.Permissions = {
    AllowSteamIdentifier = {                        -- โหมด 1 ใช้ Steam Identifier ของ player
        --'steam:110000134318aed'
    },
    AllowGroupPlayer = {                            -- โหมด 2 ใช้ group ของ player
        'superadmin'
    }
}

Config.KickMessage = 'หื้ม คุณมีความจำเป็นอะไรที่ต้องใช้ nui_devtools งั้นหรอ ?'    --ข้อความแสดงตอนผู้เล่นโดนเตะออกจากระบบ