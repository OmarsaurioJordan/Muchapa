//aumenta un poco la vida, segun parametro dado
//arg0: porcentaje aumentar vida

with o_ficha
{
    if actor != -1 { switch clase
    {
        case m_mele:
            vida = clamp(vida + m_mvida * argument0, 0, m_mvida);
        break;
        
        case m_dist:
            vida = clamp(vida + m_dvida * argument0, 0, m_dvida);
        break;
        
        case m_apoyo:
            vida = clamp(vida + m_avida * argument0, 0, m_avida);
        break;
    }}
}
