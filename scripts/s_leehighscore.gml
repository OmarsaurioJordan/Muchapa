//devuelve texto listo para mostrarse

var msj = "Muchapa Online Points:";
ini_open("config.ini");

for (var i = 0; i < 10; i++)
{
    msj += "#" + ini_read_string("tablaweb", "j" + string(i), "?");
    msj += ": " + ini_read_string("tablaweb", "p" + string(i), "0");
}

if ini_read_string("config", "min_revision_points", "") != string(current_minute) and
    os_is_network_connected()
{
    ini_write_string("config", "min_revision_points", string(current_minute));
    o_menu.hand_rp = http_get(m_webserver + "ff=rp&game=muchapa&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
}

ini_close();
return msj;
