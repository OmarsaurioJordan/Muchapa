//muere un jugador
//arg0: id quien llama y muere

if instance_number(o_player) <= 1
{
    o_game.alarm[1] = room_speed * 2;
    o_game.enjuego = false;
    with o_ficha
    {
        revivir = -1;
        alarm[0] = -1;
    }
}
else if o_game.opciones[opc_infinito] == 1
{
    argument0.origen.revivir = m_timerevivir +
        (o_game.nivel - 2) * m_timerevivir * 0.25;
}

with argument0
{
    audio_play_sound_at(a_muere, x, y, 0, ma_ref, ma_max, ma_fac, false, 90);
    var mm = instance_create(x, y, o_muerto);
    mm.nombre = origen.nombre;
    origen.actor = -1;
    instance_destroy();
}

if !o_game.enjuego
{
    with o_muerto
    {
        eterno = true;
    }
    if o_game.minutos >= 30
    {
        s_contador_mysql(false);
    }
    s_guardaestadisticas();
}
