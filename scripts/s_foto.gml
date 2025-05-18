//toma una captura del juego

if !window_get_fullscreen()
{
    var papiro = get_save_filename("screenshot|*.png", "muchapa_img");
    if papiro != ""
    {
        screen_save(papiro);
    }
}
