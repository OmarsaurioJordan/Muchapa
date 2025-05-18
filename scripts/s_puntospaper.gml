//devuelve la cantidad de puntos en funcion de la clase
//arg0: clase del papel

var resultado = 0;
switch argument0
{
    case m_pliego: resultado = m_vpliego; break;
    case m_decreto: resultado = m_vdecreto; break;
    case m_basura: resultado = m_vbasura; break;
    case m_hoja: resultado = m_vhoja; break;
    case m_folder: resultado = m_vfolder; break;
    case m_libro: resultado = m_vlibro; break;
    case m_carta: resultado = m_vcarta; break;
    case m_rollo: resultado = m_vrollo; break;
    case m_avion: resultado = m_vavion; break;
}
return resultado;
