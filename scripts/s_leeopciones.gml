//lee las opciones de juego, que personajes activo o no, etc
//arg0: id quien llama

ini_open("config.ini");
for (var i = 0; i < 9; i++)
{
    if i == opc_balanza
    {
        argument0.opciones[i] = real(ini_read_string("opciones", "op" + string(i), "0"));
    }
    else
    {
        argument0.opciones[i] = real(ini_read_string("opciones", "op" + string(i), "1"));
    }
}
ini_close();
