//analiza que estadisticas guardar y las guarda

ini_open("config.ini");

var ttt = ini_read_string("info", "games", "0");
ini_write_string("info", "games", string(real(ttt) + 1));

var ttt = ini_read_string("info", "time", "0:0");
var ppp = string_pos(":", ttt);
var ddd = real(string_copy(ttt, 1, ppp - 1)) * 60 + real(string_delete(ttt, 1, ppp));
if ddd < o_game.minutos * 60 + o_game.segundos
{
    ini_write_string("info", "time", string(o_game.minutos) + ":" + string(o_game.segundos));
}

var ttt = ini_read_string("info", "powers", "0");
if real(ttt) < o_game.ajuda[4]
{
    ini_write_string("info", "powers", string(o_game.ajuda[4]));
}

var ttt = ini_read_string("info", "general", "0");
if real(ttt) < o_game.puntos
{
    ini_write_string("info", "general", string(o_game.puntos));
}

var elid = -1;
var elpp = 0;
with o_ficha
{
    if puntos >= elpp
    {
        elid = id;
        elpp = puntos;
    }
}

var ttt = ini_read_string("info", "bpoints", "0");
if real(ttt) < elpp
{
    ini_write_string("info", "bplayer", elid.nombre);
    ini_write_string("info", "bpoints", string(elpp));
}

var ttt = ini_read_string("info", "cpoints", "0");
if real(ttt) < elpp and s_porlacopa1()
{
    ini_write_string("info", "cplayer", elid.nombre);
    ini_write_string("info", "cpoints", string(elpp));
    
    if elpp > real(ini_read_string("tablaweb", "p9", "0"))
    {
        ini_write_string("tablaweb", "envio", "1");
    }
}

ini_close();
