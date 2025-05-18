//destruir al papel
//arg0: id quien llama
//arg1: tipo de muerte

with argument0
{
    var aux;
    var ccc = c_white;
    if calor >= o_game.calormax[clase] * elite
    {
        ccc = c_gray;
    }
    else if calor <= -(o_game.calormax[clase] * elite)
    {
        ccc = c_miazul;
    }
    switch argument1
    {
        case mu_mele:
            aux = instance_create(x, y, o_diemele);
            aux.clase = clase;
            aux.quemamoja = ccc;
            o_game.caidos++;
            o_game.puntos += s_puntospaper(clase) * elite;
            audio_play_sound_at(a_destruido, x, y, 0, ma_ref, ma_max, ma_fac, false, 30);
        break;
        
        case mu_dist:
            aux = instance_create(x, y, o_diedist);
            aux.clase = clase;
            aux.quemamoja = ccc;
            o_game.caidos++;
            o_game.puntos += s_puntospaper(clase) * elite;
            audio_play_sound_at(a_destruido, x, y, 0, ma_ref, ma_max, ma_fac, false, 30);
        break;
        
        case mu_fire:
            aux = instance_create(x, y, o_diefire);
            aux.clase = clase;
            o_game.caidos++;
            o_game.puntos += s_puntospaper(clase) * elite;
            audio_play_sound_at(a_quemado, x, y, 0, ma_ref, ma_max, ma_fac, false, 30);
        break;
        
        case mu_water:
            aux = instance_create(x, y, o_diewater);
            aux.clase = clase;
            o_game.caidos++;
            o_game.puntos += s_puntospaper(clase) * elite;
            audio_play_sound_at(a_aguado, x, y, 0, ma_ref, ma_max, ma_fac, false, 30);
        break;
        
        case mu_explo:
            aux = instance_create(x, y, o_explo);
            aux.clase = clase;
            aux.quemamoja = ccc;
            audio_play_sound_at(a_exploto, x, y, 0, ma_ref, ma_max, ma_fac, false, 30);
        break;
    }
    instance_destroy();
}

if o_game.enemigos == 0 and o_motor.relojverificador > 7000000
{
    o_motor.relojverificador = 6000000;
}
