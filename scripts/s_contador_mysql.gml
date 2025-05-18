//envia solicitud a la base de datos MYSQL para aumentar 1 a un contador
//poner esto al iniciar el juego
//arg0: true si es descargas, false si es poseto

if os_is_network_connected()
{
    ini_open("config.ini");
    if argument0
    {
        if !ini_key_exists("config", "instalado")
        {
            ini_write_string("config", "instalado", "1");
            http_get(m_webserver + "ff=si&game=muchapa&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
        }
    }
    else
    {
        if !ini_key_exists("config", "poseto")
        {
            ini_write_string("config", "poseto", "1");
            http_get(m_webserver + "ff=sc&game=muchapa&version=?&jugadores=?&puntajes=?&descargas=?&ac=?");
        }
    }
    ini_close();
}
