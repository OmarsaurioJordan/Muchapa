ini_open("config.ini");
if ini_read_string("tablaweb", "envio", "0") == "1" and os_is_network_connected()
{
    o_menu.hand_rp = http_get(m_webserver + "ff=rp&game=muchapa&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
}
ini_close();
