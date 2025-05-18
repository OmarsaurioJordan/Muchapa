//guarda la configuracion de jugadores para jugar
//arg0: posicion jugador que cambio y debe ser guardado
//arg1: valor jugador que cambio y debe ser guardado
//arg2: nombre del jugador

ini_open("config.ini");
ini_write_string("jugadores", "ju" + string(argument0), string(argument1));
ini_close();
