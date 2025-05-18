//lee la configuracion de jugadores para jugar
//arg0: id quien llama

ini_open("config.ini");
for (var i = 0; i < 4; i++)
{
    argument0.jugadores[i] = real(ini_read_string("jugadores", "ju" + string(i), "3"));
    argument0.nombres[i] = ini_read_string("nombres", "n" + string(i), "");
}
ini_close();
