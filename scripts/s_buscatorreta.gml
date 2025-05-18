//busca a un papel mas cercano, lo pone en la variable blanco
//arg0: id quien llama

argument0.blanco = -1;

if instance_exists(o_papel) { with argument0
{
    var xx, yy, aux;
    var freno = 0;
    do
    {
        do
        {
            xx = x - m_vision + irandom(m_vision * 2);
            yy = y - m_vision + irandom(m_vision * 2);
        }
        until point_distance(x, y, xx, yy) <= m_vision * 0.5;
        
        aux = instance_nearest(xx, yy, o_papel);
        if point_distance(x, y, aux.x, aux.y) <= m_vision and
            !collision_line(x, y, aux.x, aux.y, oo_bloque, true, true)
        {
            blanco = aux;
        }
        
        freno++;
    }
    until freno > 20 or blanco != -1;
}}
