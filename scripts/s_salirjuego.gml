//pone pantalla negra o escoge si cerrar juego o ir a menu
//arg0: id quien llama

if argument0.pantallanegra == -1
{
    argument0.pantallanegra = 1000000;
    audio_play_sound(a_cambiogeneral, 100, false);
}
else
{
    if room == w_menu
    {
        game_end();
    }
    else
    {
        room_goto(w_menu);
    }
}
