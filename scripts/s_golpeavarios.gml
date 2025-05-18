//ataca a multiples papeles
//arg0: id quien llama

var intensidad;
with o_papel
{
    if collision_circle(argument0.x, argument0.y, 288, id, true, false)
    {
        if !collision_line(argument0.x, argument0.y, x, y, oo_bloque, true, true)
        {
            intensidad = 1.5 - clamp(point_distance(x, y, argument0.x, argument0.y) / 576, 0, 1);
            vida = clamp(vida - m_tijerazo * intensidad, 0, 10000);
            if vida == 0
            {
                argument0.origen.puntos += s_puntospaper(clase) * elite;
                s_puntospoder(argument0.origen, s_puntospaper(clase) * elite);
                s_muertep(id, mu_mele);
            }
            else
            {
                audio_play_sound_at(a_impacto, x, y, 0, ma_ref, ma_max, ma_fac, false, 10);
                golperojo = m_golperojo;
            }
        }
    }
}
with argument0
{
    audio_play_sound_at(a_gritisimo, x, y, 0, ma_ref, ma_max, ma_fac, false, 50);
    if collision_circle(x, y, 192, oo_bloque, true, true)
    {
        audio_play_sound_at(a_filomuro, x, y, 0, ma_ref, ma_max, ma_fac, false, 50);
    }
    else
    {
        audio_play_sound_at(a_filoaire, x, y, 0, ma_ref, ma_max, ma_fac, false, 50);
    }
}
