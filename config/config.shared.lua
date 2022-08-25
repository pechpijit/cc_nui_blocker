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

-------------------------------------------------------------
------------ helper function ใช้งานทั่วไป ห้ามลบเด็ดขาด ------------
-------------------------------------------------------------

function logError(tag, err)
	if err ~= nil then
		log('^8Error => ' .. tag .. ' : ' .. tostring(err))
	end
end

function log(text)
	if text == nil then
		print("nil")
		return
	end
	if not Config.Debug then
		return
	end
	if type(text) == "table" then
		print(json.encode(text))
	elseif type(text) == "boolean" then
		print(text)
	else
		print(text)
	end
end

function ArrayIsInOne(Lists, Search)
	local E = Lists and #Lists or 0;
	if E > 0 then
		for F = 1, E do
			if Lists[F]:lower() == Search:lower() then
				return true
			end
		end
		return false
	end
	return nil
end

-------------------------------------------------------------
------------ helper function ใช้งานทั่วไป ห้ามลบเด็ดขาด ------------
-------------------------------------------------------------