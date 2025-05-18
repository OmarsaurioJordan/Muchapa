//escoger un sonido de golpeado al azar
//arg0: posicion x
//arg1: posicion y

switch irandom(5)
{
    case 0:
        audio_play_sound_at(a_auch1, argument0, argument1, 0,
            ma_ref, ma_max, ma_fac, false, 40); break;
    case 1:
        audio_play_sound_at(a_auch2, argument0, argument1, 0,
            ma_ref, ma_max, ma_fac, false, 40); break;
    case 2:
        audio_play_sound_at(a_auch3, argument0, argument1, 0,
            ma_ref, ma_max, ma_fac, false, 40); break;
    case 3:
        audio_play_sound_at(a_auch4, argument0, argument1, 0,
            ma_ref, ma_max, ma_fac, false, 40); break;
    case 4:
        audio_play_sound_at(a_auch5, argument0, argument1, 0,
            ma_ref, ma_max, ma_fac, false, 40); break;
    case 5:
        audio_play_sound_at(a_auch6, argument0, argument1, 0,
            ma_ref, ma_max, ma_fac, false, 40); break;
}
