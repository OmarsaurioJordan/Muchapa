//para dibujar un minimapa o exportarlo, en base al mapa actual
//requiere m_escala para definir tamanno del mapita
//puede modificarse para no usar mapa .ini sino tomar los objetos actuales del juego
//arg0: nombre ruta donde guardar la imagen
//arg1: true guarda en arg1, false da id de sprite
//ret: da el id del sprite creado o -1

var foto = -1;
if !file_exists(argument0 + ".png")
{
    var xx, yy, cc, lienzo;
    xx = room_width * m_escala;
    yy = room_height * m_escala;
    cc = make_colour_rgb(201,173,133); //color para pintar el fondo
    lienzo = surface_create(xx, yy);
    surface_set_target(lienzo);
    draw_rectangle_colour(0, 0, xx, yy, cc, cc, cc, cc, false);
    
    with o_muro
    {
        draw_sprite_ext(d_basem, 0, x * m_escala, y * m_escala, m_escala, m_escala, 0, c_white, 1);
    }
    with o_spawn
    {
        draw_sprite_ext(d_spawn, 0, x * m_escala, y * m_escala, m_escala * 3, m_escala * 3, 0, c_white, 1);
    }
    with o_meta
    {
        draw_sprite_ext(d_meta, 0, x * m_escala, y * m_escala, m_escala * 3, m_escala * 3, 0, c_white, 1);
    }
    
    surface_reset_target();
    
    foto = sprite_create_from_surface(lienzo, 0, 0, xx, yy, false, false, 0, 0);
    surface_free(lienzo);
    if argument1
    {
        sprite_save(foto, 0, argument0 + ".png");
        sprite_delete(foto);
        foto = -1;
    }
}
return foto;
