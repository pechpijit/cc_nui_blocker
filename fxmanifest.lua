fx_version "cerulean"
game "gta5"

version '1.0.0'
author 'CodeCool Developer'
description 'CC NUI Blocker Ref. https://github.com/QamarQ/nui_blocker'

shared_script {
    'config/config.general.lua',
    'config/config.shared.lua',
    'config/config.function.lua',
}

server_script {
    'server/main.lua',
}

client_scripts {
    "client/main.lua"
}

ui_page "client/html/index.html"

files {
    "client/html/index.html",
    "client/html/js/*.js",
}