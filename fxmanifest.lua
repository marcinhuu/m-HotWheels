fx_version 'cerulean'
author '! marcinhu.#6158'
Description 'm-AmmunationJob'
game 'gta5'


shared_scripts {
	'configs/**.lua'
}

client_scripts {
	'./client/*'
}

server_scripts {
	'./server/*'
}

escrow_ignore {
    "client/c_utils.lua",
    "server/s_utils.lua",
    "configs/**.lua",
    "images/**",
    "README.lua"
}

lua54 'yes'