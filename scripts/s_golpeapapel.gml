//ataca en una direccion a un solo papel
//arg0: id quien llama

with argument0
{
    var ledio = false;
    var otro = collision_circle(x + lengthdir_x(96, direction),
        y + lengthdir_y(96, direction), 96, o_papel, true, true);
    if otro != noone
    {
        otro = instance_nearest(x + lengthdir_x(72, direction),
            y + lengthdir_y(72, direction), o_papel);
        if !collision_line(x, y, otro.x, otro.y, oo_bloque, true, true)
        {
            otro.vida = clamp(otro.vida - m_tijerazo, 0, 10000);
            ledio = true;
            if otro.vida == 0
            {
                origen.puntos += s_puntospaper(otro.clase) * otro.elite;
                s_puntospoder(origen, s_puntospaper(otro.clase) * otro.elite);
                s_muertep(otro, mu_mele);
            }
            else
            {
                audio_play_sound_at(a_impacto, otro.x, otro.y, 0, ma_ref, ma_max, ma_fac, false, 10);
                otro.golperojo = m_golperojo;
            }
        }
    }
    if !ledio
    {
        if collision_circle(x + lengthdir_x(96, direction),
            y + lengthdir_y(96, direction), 96, oo_bloque, true, true)
        {
            audio_play_sound_at(a_filomuro, x, y, 0, ma_ref, ma_max, ma_fac, false, 50);
        }
        else
        {
            ledio = true;
        }
    }
    if ledio
    {
        audio_play_sound_at(a_filoaire, x, y, 0, ma_ref, ma_max, ma_fac, false, 50);
    }
}
