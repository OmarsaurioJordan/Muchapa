//devuelve la cantidad de danno en funcion de la clase
//arg0: clase del papel

var resultado = 0;
switch argument0
{
    case m_pliego: resultado = m_papelazo; break;
    case m_decreto: resultado = m_papelazo * 1.25; break;
    case m_basura: resultado = m_papelazo * 4; break;
    case m_hoja: resultado = m_papelazo * 1.25; break;
    case m_folder: resultado = m_papelazo * 4; break;
    case m_libro: resultado = m_papelazo * 3; break;
    case m_carta: resultado = m_papelazo; break;
    case m_rollo: resultado = m_papelazo * 5; break;
    case m_avion: resultado = m_papelazo * 1.75; break;
}
return resultado;
