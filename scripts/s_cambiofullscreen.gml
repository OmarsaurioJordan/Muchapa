//pone pantalla completa o no, y guarda estado

ini_open("config.ini");
if window_get_fullscreen()
{
    window_set_fullscreen(false);
    ini_write_string("config", "fullscreen", "0");
    s_ventana();
}
else
{
    window_set_fullscreen(true);
    ini_write_string("config", "fullscreen", "1");
}
ini_close();
