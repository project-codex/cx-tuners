fx_version 'cerulean'
game 'gta5'
version '1.0'
author 'darkets'

shared_script 'config.lua'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

lua54 'yes'