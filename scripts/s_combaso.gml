//mira si es pertinente hacer la habilidad de trio, devuelve verdadero si asi es
//arg0: posicion x del lugar
//arg1: posicion y del lugar

var respuesta = false;

var aux;
var elm = -1;
var eld = -1;
var ela = -1;
var cuantos = instance_number(o_player);
for (var i = 0; i < cuantos ; i++)
{
    aux = instance_find(o_player, i);
    if point_distance(aux.x, aux.y, argument0, argument1) <= m_maxfoco
    {
        if aux.origen.clase == m_mele and aux.estado == estm_lanza
        {
            elm = aux;
        }
        else if aux.origen.clase == m_dist and aux.estado == estd_bazooka
        {
            eld = aux;
        }
        else if aux.origen.clase == m_apoyo and aux.estado == esta_howitzer
        {
            ela= aux;
        }
    }
}
if elm != -1 and eld != -1 and ela != -1
{
    respuesta = true;
    
    elm.origen.poder[3] = 0;
    elm.estado = estm_libre;
    with elm.mifoco
    {
        instance_destroy();
    }
    
    eld.origen.poder[3] = 0;
    eld.estado = estd_libre;
    with eld.mifoco
    {
        instance_destroy();
    }
    
    ela.origen.poder[3] = 0;
    ela.estado = esta_libre;
    with ela.mifoco
    {
        instance_destroy();
    }
    
    o_game.ajuda[3]++;
    aux = instance_create(argument0, argument1, o_escudo);
    aux.reloj = m_timeinvivulne * 2;
    for (var i = 0; i < 360; i += 90)
    {
        aux = instance_create(argument0 + lengthdir_x(m_escudisimo * 0.5, i),
            argument1 + lengthdir_y(m_escudisimo * 0.5, i), o_torreta)
        aux.reloj = m_timeinvivulne * 2;
    }
}

return respuesta;
