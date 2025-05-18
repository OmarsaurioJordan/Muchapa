//recive respuesta puntos de servidor, poner esto en async HTTP
//arg0: id instancia con la informacion

with argument0
{
    if ds_map_find_value(async_load, "id") == hand_rp
    {
        if ds_map_find_value(async_load, "status") == 0
        {
            var aux = ds_map_find_value(async_load, "result");
            if string_count("|", aux) == 18
            {
                s_leepuntos(aux);
            }
        }
    }
}
