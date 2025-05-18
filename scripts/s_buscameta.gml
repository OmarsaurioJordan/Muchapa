//busca la camara para dirigirse errando
//arg0: id quien llama

with argument0
{
    var otro = o_camara.id;
    if point_distance(x, y, otro.x, otro.y) > m_vision
    {
        direccion = point_direction(x, y, otro.x, otro.y) - 10 + irandom(20);
    }
}
