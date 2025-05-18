//ret: true si esta en modo de competencia por copa

var respuesta = true;

if room != w_mapa7 or o_game.nivel != 1 or
    o_game.opciones[opc_balanza] != 0
{
    respuesta = false;
}

for (var i = 0; i < 7; i++)
{
    if o_game.opciones[i] == 0
    {
        respuesta = false;
        break;
    }
}

return respuesta;
