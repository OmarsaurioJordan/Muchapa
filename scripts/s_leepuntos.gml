//procesa la informacion suministrada por script PHP y base de datos MYSQL
//arg0: respuesta del servidor "?|?|?|?|?|?|?|?|?|?,0|0|0|0|0|0|0|0|0|0"

var jug, pun;
for (var i = 0; i < 10; i++)
{
    jug[i] = "";
    pun[i] = "";
}
var caracter;
var cambio = false;
var cont = 0;
for (var i = 1; i <= string_length(argument0); i++)
{
    caracter = string_char_at(argument0, i);
    if caracter == ","
    {
        cambio = true;
        cont = 0;
    }
    else if caracter == "|"
    {
        cont++;
    }
    else if !cambio
    {
        jug[cont] += caracter;
    }
    else
    {
        pun[cont] += caracter;
    }
}

ini_open("config.ini");
for (var i = 0; i < 10; i++)
{
    ini_write_string("tablaweb", "j" + string(i), jug[i]);
    ini_write_string("tablaweb", "p" + string(i), pun[i]);
}
if ini_read_string("tablaweb", "envio", "0") == "1"
{
    ini_write_string("tablaweb", "envio", "0");
    var pppp = real(ini_read_string("info", "cpoints", "0"));
    var nnnn = ini_read_string("info", "cplayer", "?");
    if real(pun[9]) < pppp
    {
        var select = 0;
        for (var i = 0; i < 10; i++)
        {
            if nnnn == jug[i]
            {
                if pppp > real(pun[i])
                {
                    pun[i] = string(pppp);
                    select = 1;
                }
                else
                {
                    select = -1;
                }
                break;
            }
        }
        if select == 0
        {
            if pppp > real(pun[9])
            {
                jug[9] = nnnn;
                pun[9] = string(pppp);
            }
            else
            {
                select = -1;
            }
        }
        if select != -1
        {
            var ordenador = ds_priority_create();
            for (var i = 0; i < 10; i++)
            {
                ds_priority_add(ordenador, jug[i], real(pun[i]));
            }
            for (var i = 0; i < 10; i++)
            {
                jug[i] = ds_priority_find_max(ordenador);
                pun[i] = string(ds_priority_find_priority(ordenador, jug[i]));
                ds_priority_delete_max(ordenador);
            }
            ds_priority_destroy(ordenador);
            
            for (var i = 0; i < 10; i++)
            {
                ini_write_string("tablaweb", "j" + string(i), jug[i]);
                ini_write_string("tablaweb", "p" + string(i), pun[i]);
            }
            
            if os_is_network_connected()
            {
                var jugadores = "";
                var puntajes = "";
                for (var i = 0; i < 10; i++)
                {
                    jugadores += jug[i] + "|";
                    puntajes += pun[i] + "|";
                }
                jugadores = string_copy(jugadores, 1, string_length(jugadores) - 1);
                puntajes = string_copy(puntajes, 1, string_length(puntajes) - 1);
                
                http_get(m_webserver + "ff=sp&game=muchapa&version=" +
                    o_menu.version + "&jugadores=" + jugadores + "&puntajes=" + puntajes + "&descargas=?&ac=?");
            }
        }
    }
}
ini_close();

if string_count("Muchapa Online Points:", o_menu.informacion) == 1
{
    o_menu.informacion = s_leehighscore();
}
