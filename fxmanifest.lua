fx_version 'adamant'
game 'gta5'

author ''
description ''
version '1.0'

ui_page "html/index.html"

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/reset.css',

    -- assets
    'html/assets/logo.png'    
}

shared_script 'config.lua'

client_scripts{ 
    "lib/Proxy.lua",
    "lib/Tunnel.lua",
    "client.lua"
}

server_scripts{ 
    "@vrp/lib/utils.lua",
    "server.lua"
}