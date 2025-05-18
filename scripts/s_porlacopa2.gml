//ret: true si esta en modo de competencia por copa

var respuesta = true;

if o_menu.opciones[opc_balanza] != 0
{
    respuesta = false;
}

for (var i = 0; i < 7; i++)
{
    if o_menu.opciones[i] == 0
    {
        respuesta = false;
        break;
    }
}

var ttt = 0;
for (var i = 0; i < 4; i++)
{
    if o_menu.jugadores[i] != 4
    {
        ttt++;
    }
}
if ttt != 1
{
    respuesta = false;
}

if o_menu.mapa != 7
{
    respuesta = false;
}

return respuesta;
