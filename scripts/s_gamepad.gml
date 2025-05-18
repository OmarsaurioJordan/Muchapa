//este script devuelve el comando de teclado adecuado segun jugador
//arg0: accion del gamepad
//arg1: jugador que la realiza
//ret: codigo de tecla

var resultado = -1;
switch argument1
{
    case m_rojo:
        switch argument0
        {
            case pad_up:
                resultado = ord('W'); break;
            case pad_left:
                resultado = ord('A'); break;
            case pad_down:
                resultado = ord('S'); break;
            case pad_right:
                resultado = ord('D'); break;
            case pad_poder0:
                resultado = vk_space; break;
            case pad_poder1:
                resultado = ord('B'); break;
            case pad_poder2:
                resultado = ord('N'); break;
            case pad_poder3:
                resultado = ord('M'); break;
        }
    break;
    
    case m_azul:
        switch argument0
        {
            case pad_up:
                resultado = vk_up; break;
            case pad_left:
                resultado = vk_left; break;
            case pad_down:
                resultado = vk_down; break;
            case pad_right:
                resultado = vk_right; break;
            case pad_poder0:
                resultado = vk_numpad0; break;
            case pad_poder1:
                resultado = vk_numpad1; break;
            case pad_poder2:
                resultado = vk_numpad2; break;
            case pad_poder3:
                resultado = vk_numpad3; break;
        }
    break;
    
    case m_verde:
        switch argument0
        {
            case pad_up:
                resultado = ord('U'); break;
            case pad_left:
                resultado = ord('I'); break;
            case pad_down:
                resultado = ord('O'); break;
            case pad_right:
                resultado = ord('P'); break;
            case pad_poder0:
                resultado = ord('0'); break;
            case pad_poder1:
                resultado = ord('9'); break;
            case pad_poder2:
                resultado = ord('8'); break;
            case pad_poder3:
                resultado = ord('7'); break;
        }
    break;
    
    case m_amarillo:
        switch argument0
        {
            case pad_up:
                resultado = ord('5'); break;
            case pad_left:
                resultado = ord('6'); break;
            case pad_down:
                resultado = ord('T'); break;
            case pad_right:
                resultado = ord('Y'); break;
            case pad_poder0:
                resultado = vk_delete; break;
            case pad_poder1:
                resultado = vk_numpad9; break;
            case pad_poder2:
                resultado = vk_numpad8; break;
            case pad_poder3:
                resultado = vk_numpad7; break;
        }
    break;
}
return resultado;
