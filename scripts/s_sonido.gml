//cambia el estado sonor y musical
//arg0: estado sonido

switch argument0
{
    case 0:
        audio_master_gain(0);
    break;
    
    case 1:
        audio_master_gain(1);
        audio_stop_sound(a_musica);
        audio_stop_sound(a_melodia);
    break;
    
    case 2:
        audio_master_gain(1); 
        if room == w_menu
        {
            var aux = audio_play_sound(a_melodia, 100, true);
            audio_sound_gain(aux, 0.75, 0);
            audio_stop_sound(a_musica);
            o_menu.alarm[0] = 1;
        }
        else
        {
            var aux = audio_play_sound(a_musica, 100, true);
            audio_sound_gain(aux, 0.75, 0);
            audio_stop_sound(a_melodia);
        }
    break;
}
