//hace aparecer papeles en algun spawn
//arg0: clase a crear, -1 probabilidad

var xx, yy, aux, select, freno;

repeat 1 + irandom(o_game.nivel - 1)
{
    //hubicar punto de aparicion
    freno = 0;
    do
    {
        if !instance_exists(o_spawn)
        {
            xx = irandom(room_width);
            yy = irandom(room_height);
        }
        else
        {
            aux = instance_find(o_spawn, irandom(instance_number(o_spawn) - 1));
            xx = aux.x;
            yy = aux.y;
        }
        freno++;
    }
    until !(xx > view_xview[0] - 144 and xx < view_xview[0] + view_wview[0] + 144 and
        yy > view_yview[0] - 144 and yy < view_yview[0] + view_hview[0] + 432) or freno > 20;
    
    //seleccionar clase segun disponibilidad
    select = argument0;
    do
    {
        if select == -1
        {
            select = choose(m_pliego, m_decreto, m_hoja, m_basura,
                m_avion, m_libro, m_folder, m_rollo, o_motor.tendencia1,
                o_motor.tendencia2, o_motor.tendencia3);
        }
        if select != -1
        {
            switch select
            {
                case m_decreto:
                    if o_game.opciones[opc_decreto] == 0 {
                        select = -1; } break;
                
                case m_hoja:
                    if o_game.opciones[opc_hoja] == 0 {
                        select = -1; } break;
                
                case m_basura:
                    if o_game.opciones[opc_basura] == 0 {
                        select = -1; } break;
                
                case m_avion:
                    if o_game.opciones[opc_avion] == 0 {
                        select = -1; } break;
                
                case m_folder:
                    if o_game.opciones[opc_folder] == 0 {
                        select = -1; } break;
                
                case m_libro:
                    if o_game.opciones[opc_libro] == 0 {
                        select = -1; } break;
                
                case m_rollo:
                    if o_game.opciones[opc_rollo] == 0 {
                        select = -1; } break;
            }
        }
    }
    until select != -1;
    
    if o_motor.oleada == 1
    {
        select = m_pliego;
    }
    
    //crearlo como tal
    aux = instance_create(xx, yy, o_papel);
    aux.clase = select;
}
