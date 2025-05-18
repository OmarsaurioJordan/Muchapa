//guarda la opcion de juego, que personajes activo o no, etc
//arg0: posicion opcion que cambio y debe ser guardada
//arg1: valor opcion que cambio y debe ser guardada

ini_open("config.ini");
ini_write_string("opciones", "op" + string(argument0), string(argument1));
ini_close();
