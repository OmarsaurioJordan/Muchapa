//realiza el desplazamiento en el mundo, del jugador
//arg0: id quien llama
//arg1: velocidad

with argument0
{
    //colision con objetos solidos, muros y otros personajes
    var dir;
    var maneja = true;
    var otro = instance_place(x, y, oo_bloque);
    if otro != noone
    {
        dir = point_direction(otro.x, otro.y, x, y);
        x += lengthdir_x(delta_time * m_velrebote, dir);
        y += lengthdir_y(delta_time * m_velrebote, dir);
        maneja = false;
    }
    else
    {
        otro = instance_place(x, y, o_player);
        if otro != noone
        {
            dir = point_direction(otro.x, otro.y, x, y);
            x += lengthdir_x(delta_time * m_velrebote * 0.75, dir);
            y += lengthdir_y(delta_time * m_velrebote * 0.75, dir);
        }
        else
        {
            otro = instance_place(x, y, oo_enemy);
            if otro != noone
            {
                dir = point_direction(otro.x, otro.y, x, y);
                x += lengthdir_x(delta_time * m_velrebote * 0.5, dir);
                y += lengthdir_y(delta_time * m_velrebote * 0.5, dir);
            }
        }
    }
    
    //comandos de movimiento
    if maneja
    {
        var movio = false;
        if keyboard_check(s_gamepad(pad_up, origen.jugador))
        {
            if keyboard_check(s_gamepad(pad_left, origen.jugador))
            {
                direction = 135;
                movio = true;
            }
            else if keyboard_check(s_gamepad(pad_right, origen.jugador))
            {
                direction = 45;
                movio = true;
            }
            else
            {
                direction = 90;
                movio = true;
            }
        }
        else if keyboard_check(s_gamepad(pad_down, origen.jugador))
        {
            if keyboard_check(s_gamepad(pad_left, origen.jugador))
            {
                direction = 225;
                movio = true;
            }
            else if keyboard_check(s_gamepad(pad_right, origen.jugador))
            {
                direction = 315;
                movio = true;
            }
            else
            {
                direction = 270;
                movio = true;
            }
        }
        else if keyboard_check(s_gamepad(pad_left, origen.jugador))
        {
            direction = 180;
            movio = true;
        }
        else if keyboard_check(s_gamepad(pad_right, origen.jugador))
        {
            direction = 0;
            movio = true;
        }
        if movio
        {
            x += lengthdir_x(delta_time * argument1, direction);
            y += lengthdir_y(delta_time * argument1, direction);
        }
    }
    
    //limites del mundo, camara y profundidad dibujado
    x = clamp(x, o_camara.x - 1000, o_camara.x + 1000);
    y = clamp(y, o_camara.y - 775, o_camara.y + 925);
    x = clamp(x, 144, room_width - 144);
    y = clamp(y, 432, room_height - 144);
    depth = -y;
}
