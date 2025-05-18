//guarda el juego actual

if file_exists("savegame.ini")
{
    file_delete("savegame.ini");
}
ini_open("savegame.ini");

with o_game
{
    for (var i = 0; i < 9; i++)
    {
        ini_write_string("game", "op" + string(i), string(opciones[i]));
    }
    ini_write_string("game", "segundos", string(segundos));
    ini_write_string("game", "minutos", string(minutos));
    ini_write_string("game", "puntos", string(puntos));
    ini_write_string("game", "enemigos", string(caidos));
    ini_write_string("game", "caidos", string(caidos));
    ini_write_string("game", "sonido", string(sonido));
    ini_write_string("game", "displei", string(displei));
    ini_write_string("game", "nivel", string(nivel));
    ini_write_string("game", "mapa", string(room));
    for (var i = 0; i < 5; i++)
    {
        ini_write_string("game", "ajuda" + string(i), string(ajuda[i]));
    }
}

with o_motor
{
    ini_write_string("motor", "tendencia1", string(tendencia1));
    ini_write_string("motor", "tendencia2", string(tendencia2));
    ini_write_string("motor", "tendencia3", string(tendencia3));
    ini_write_string("motor", "relojtendencia", string(relojtendencia));
    ini_write_string("motor", "relojverificador", string(relojverificador));
    ini_write_string("motor", "oleada", string(oleada));
    ini_write_string("motor", "tramo", string(tramo));
    if intermitente
    {
        ini_write_string("motor", "intermitente", "1");
    }
    else
    {
        ini_write_string("motor", "intermitente", "0");
    }
    ini_write_string("motor", "ascenso", string(ascenso));
}

with o_camara
{
    ini_write_string("camara", "x", string(x));
    ini_write_string("camara", "y", string(y));
}

var n = 0;
with o_ficha
{
    ini_write_string("ficha" + string(n), "jugador", string(jugador));
    ini_write_string("ficha" + string(n), "nombre", string(nombre));
    ini_write_string("ficha" + string(n), "clase", string(clase));
    n++;
}

ini_close();
