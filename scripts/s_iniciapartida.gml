//va al room adecuado para iniciar partida
//arg0: mapa escogido

switch argument0
{
    case 0:
        room_goto(w_mapa0); break;
    case 1:
        room_goto(w_mapa1); break;
    case 2:
        room_goto(w_mapa2); break;
    case 3:
        room_goto(w_mapa3); break;
    case 4:
        room_goto(w_mapa4); break;
    case 5:
        room_goto(w_mapa5); break;
    case 6:
        room_goto(w_mapa6); break;
    case 7:
        room_goto(w_mapa7); break;
}
