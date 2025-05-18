//disminuye el poder especial del jugador dado
//arg0: id ficha de jugador que se le disminuira
//arg1: pocentaje a disminuir

with argument0
{
    switch clase
    {
        case m_mele:
            poder[3] = clamp(poder[3] - m_mpoder3 * argument1, 0, m_mpoder3);
        break;
        
        case m_dist:
            poder[3] = clamp(poder[3] - m_dpoder3 * argument1, 0, m_dpoder3);
        break;
        
        case m_apoyo:
            poder[3] = clamp(poder[3] - m_apoder3 * argument1, 0, m_apoder3);
        break;
    }
}
