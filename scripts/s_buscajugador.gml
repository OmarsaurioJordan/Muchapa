//busca a un jugador mas cercano, cambia el estado del buscador
//arg0: id quien llama
//arg1: segundos entre busquedas

if o_game.reloj_invisible == 0 { with argument0
{
    reloj_jug += delta_time;
    if reloj_jug >= argument1
    {
        reloj_jug = 0;
        
        var miid = id;
        var aux;
        var lista = ds_priority_create();
        with o_player
        {
            aux = point_distance(x, y, miid.x, miid.y);
            if aux <= m_vision * miid.elite
            {
                ds_priority_add(lista, id, aux);
            }
        }
        while !ds_priority_empty(lista)
        {
            aux = ds_priority_delete_min(lista);
            if !collision_line(x, y, aux.x, aux.y, oo_bloque, true, true)
            {
                estado = estp_persigue;
                blanco = aux;
                mxa = aux.x;
                mya = aux.y;
                break;
            }
        }
        ds_priority_destroy(lista);
    }
}}
