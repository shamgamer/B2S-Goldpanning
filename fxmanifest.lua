fx_version 'cerulean'
games { 'gta5' }

ui_page 'html/index.html'

client_scripts {
  'client.lua',
}

server_scripts {
  'server.lua',
}

shared_script {
  'config.lua',
  'items/*',
}

exports {
}

lua54 'yes'

