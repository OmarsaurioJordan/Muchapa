//devuelve la velocidad de andar en funcion de la clase
//arg0: clase del papel

var resultado = m_velpaper;
switch argument0
{
    case m_pliego: resultado *= m_velpliego; break;
    case m_decreto: resultado *= m_veldecreto; break;
    case m_basura: resultado *= m_velbasura; break;
    case m_hoja: resultado *= m_velhoja; break;
    case m_folder: resultado *= m_velfolder; break;
    case m_libro: resultado *= m_vellibro; break;
    case m_carta: resultado *= m_velcarta; break;
    case m_rollo: resultado *= m_velrollo; break;
    case m_avion: resultado *= m_velavion; break;
}
return resultado;
