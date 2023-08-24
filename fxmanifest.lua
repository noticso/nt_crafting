fx_version 'adamant'

game 'gta5'
author 'noticso'
version '1.00'
description 'Crafting Menu'
lua54 'yes'
shared_script '@es_extended/imports.lua'
client_scripts { 'config.lua', 'client.lua', }
server_scripts {'config.lua', 'server.lua', '@oxmysql/lib/MySQL.lua'}
ui_page 'nui/index.html'

files {
    'nui/index.html',
    'nui/js/*.js',
    'nui/css/*.css',
    'nui/img/*',
    'nui/fonts/*',
    '../../[ox]/ox_inventory/web/images/*'
 
}
