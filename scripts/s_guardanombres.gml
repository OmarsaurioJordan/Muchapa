//guarda la configuracion de nombres para jugar
//arg0: instancia que tiene los nombres

ini_open("config.ini");
for (var i = 0; i < 4; i++)
{
    ini_write_string("nombres", "n" + string(i), argument0.nombres[i]);
}
ini_close();
