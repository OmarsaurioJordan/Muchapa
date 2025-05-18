//aumenta la barra del 3er poder con puntos
//arg0: id ficha del jugador
//arg1: puntos otorgados

with argument0
{
    switch clase
    {
        case m_mele:
            poder[3] = clamp(poder[3] + argument1, 0, m_mpoder3);
        break;
        
        case m_dist:
            poder[3] = clamp(poder[3] + argument1, 0, m_dpoder3);
        break;
        
        case m_apoyo:
            poder[3] = clamp(poder[3] + argument1, 0, m_apoder3);
        break;
    }
}
