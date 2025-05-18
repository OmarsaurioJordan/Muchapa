//busca a un proyectil mas cercano, cambia el estado del buscador
//arg0: id quien llama
//arg1: segundos entre busquedas

if o_game.reloj_invisible == 0 { with argument0
{
    reloj_proy += delta_time;
    if reloj_proy >= argument1
    {
        reloj_proy = 0;
        
        var miid = id;
        var aux;
        var lista = ds_priority_create();
        with oo_proyectil
        {
            aux = point_distance(x, y, miid.x, miid.y);
            ds_priority_add(lista, id, aux);
        }
        while !ds_priority_empty(lista)
        {
            aux = ds_priority_delete_min(lista);
            if !collision_line(x, y, aux.x, aux.y, oo_bloque, true, true)
            {
                estado = estp_investiga;
                mxa = clamp(aux.x, 144, room_width - 144);
                mya = clamp(aux.y, 432, room_height - 144);
                mxb = clamp(aux.xstart, 144, room_width - 144);
                myb = clamp(aux.ystart, 432, room_height - 144);
                if collision_line(x, y, mxb, myb, oo_bloque, true, true)
                {
                    mma = true;
                }
                else
                {
                    mma = false;
                }
                break;
            }
        }
        ds_priority_destroy(lista);
    }
}}
