cfg = {}

cfg.menu = {

    locs = { -- Tipos: arma,municao,utilitario
        {vector3(160.98, -1018.03, 29.39), ['tipo'] = "arma", ['permissao'] = 'admin.permissao'},
        {vector3(160.74, -1016.34, 29.39), ['tipo'] = "municao", ['permissao'] = 'policia.permissao'}
    },

    config = {
        ['arma'] = {
            
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_COMBATPISTOL", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 2},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 2},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 2},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 2}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_ASSAULTRIFLE_MK2", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_ASSAULTRIFLE", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_SHOTGUN", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            }  
        },
        ['municao'] = {

            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wammo|WEAPON_COMBATPISTOL", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wammo|WEAPON_ASSAULTRIFLE_MK2", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wammo|WEAPON_ASSAULTRIFLE", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wammo|WEAPON_SHOTGUN", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            }  
        },
        ['utilitario'] = {

            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_COMBATPISTOL", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_ASSAULTRIFLE_MK2", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_ASSAULTRIFLE", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            },
            {['quantidade'] = 1, ['index'] = "fuzil", ['item'] = "wbody|WEAPON_SHOTGUN", ['ingrediente'] = {
                    {['index'] = "Molas", ['item'] = "molas", ['qtd'] = 0},
                    {['index'] = "Peça de Arma", ['item'] = "pecadearma", ['qtd'] = 0},
                    {['index'] = "Gatilho", ['item'] = "gatilho", ['qtd'] = 1},
                    {['index'] = "Placa de Metal", ['item'] = "placa-metal", ['qtd'] = 0}
                }
            }  
        },

    }


}

return cfg