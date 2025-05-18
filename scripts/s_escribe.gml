//funcion para escribir
//arg0: texto actualmente en la caja
//arg1: numero limite de caracteres del texto
//arg2: true si el espacio debe ser "_"
//arg3: true para auto-poner mayusculas
//arg4: true solo digitar numeros
//ret: texto modificado por el teclado

var cadena = argument0;
var largo = string_length(cadena);
if keyboard_check_pressed(vk_backspace)
{
    if largo <= 1
    {
        cadena = "";
    }
    else
    {
        cadena = string_copy(cadena, 1, largo - 1);
    }
}
else if keyboard_check_pressed(vk_delete)
{
    cadena = "";
}
else if largo < argument1 and keyboard_check_pressed(vk_anykey)
{
    switch(keyboard_key)
    {
        case vk_space:
            if argument4 { if string_count(".", cadena) == 0 { cadena += "."; } }
            else if argument2 or keyboard_check(vk_shift) { cadena += "_"; }
            else if keyboard_check(vk_control) { cadena += "."; }
            else { cadena += " "; }
            break;
        case ord("0"): case vk_numpad0:
            cadena += "0";
            break;
        case ord("1"): case vk_numpad1:
            cadena += "1";
            break;
        case ord("2"): case vk_numpad2:
            cadena += "2";
            break;
        case ord("3"): case vk_numpad3:
            cadena += "3";
            break;
        case ord("4"): case vk_numpad4:
            cadena += "4";
            break;
        case ord("5"): case vk_numpad5:
            cadena += "5";
            break;
        case ord("6"): case vk_numpad6:
            cadena += "6";
            break;
        case ord("7"): case vk_numpad7:
            cadena += "7";
            break;
        case ord("8"): case vk_numpad8:
            cadena += "8";
            break;
        case ord("9"): case vk_numpad9:
            cadena += "9";
            break;
        case ord("A"):
            if keyboard_check(vk_shift) { cadena += "A"; }
            else { cadena += "a"; }
            break;
        case ord("B"):
            if keyboard_check(vk_shift) { cadena += "B"; }
            else { cadena += "b"; }
            break;
        case ord("C"):
            if keyboard_check(vk_shift) { cadena += "C"; }
            else { cadena += "c"; }
            break;
        case ord("D"):
            if keyboard_check(vk_shift) { cadena += "D"; }
            else { cadena += "d"; }
            break;
        case ord("E"):
            if keyboard_check(vk_shift) { cadena += "E"; }
            else { cadena += "e"; }
            break;
        case ord("F"):
            if keyboard_check(vk_shift) { cadena += "F"; }
            else { cadena += "f"; }
            break;
        case ord("G"):
            if keyboard_check(vk_shift) { cadena += "G"; }
            else { cadena += "g"; }
            break;
        case ord("H"):
            if keyboard_check(vk_shift) { cadena += "H"; }
            else { cadena += "h"; }
            break;
        case ord("I"):
            if keyboard_check(vk_shift) { cadena += "I"; }
            else { cadena += "i"; }
            break;
        case ord("J"):
            if keyboard_check(vk_shift) { cadena += "J"; }
            else { cadena += "j"; }
            break;
        case ord("K"):
            if keyboard_check(vk_shift) { cadena += "K"; }
            else { cadena += "k"; }
            break;
        case ord("L"):
            if keyboard_check(vk_shift) { cadena += "L"; }
            else { cadena += "l"; }
            break;
        case ord("M"):
            if keyboard_check(vk_shift) { cadena += "M"; }
            else { cadena += "m"; }
            break;
        case ord("N"):
            if keyboard_check(vk_control)
            {
                if keyboard_check(vk_shift) { cadena += "Ñ"; }
                else { cadena += "ñ"; }
            }
            else
            {
                if keyboard_check(vk_shift) { cadena += "N"; }
                else { cadena += "n"; }
            }
            break;
        case ord("O"):
            if keyboard_check(vk_shift) { cadena += "O"; }
            else { cadena += "o"; }
            break;
        case ord("P"):
            if keyboard_check(vk_shift) { cadena += "P"; }
            else { cadena += "p"; }
            break;
        case ord("Q"):
            if keyboard_check(vk_shift) { cadena += "Q"; }
            else { cadena += "q"; }
            break;
        case ord("R"):
            if keyboard_check(vk_shift) { cadena += "R"; }
            else { cadena += "r"; }
            break;
        case ord("S"):
            if keyboard_check(vk_shift) { cadena += "S"; }
            else { cadena += "s"; }
            break;
        case ord("T"):
            if keyboard_check(vk_shift) { cadena += "T"; }
            else { cadena += "t"; }
            break;
        case ord("U"):
            if keyboard_check(vk_shift) { cadena += "U"; }
            else { cadena += "u"; }
            break;
        case ord("V"):
            if keyboard_check(vk_shift) { cadena += "V"; }
            else { cadena += "v"; }
            break;
        case ord("W"):
            if keyboard_check(vk_shift) { cadena += "W"; }
            else { cadena += "w"; }
            break;
        case ord("X"):
            if keyboard_check(vk_shift) { cadena += "X"; }
            else { cadena += "x"; }
            break;
        case ord("Y"):
            if keyboard_check(vk_shift) { cadena += "Y"; }
            else { cadena += "y"; }
            break;
        case ord("Z"):
            if keyboard_check(vk_shift) { cadena += "Z"; }
            else { cadena += "z"; }
            break;
    }
}
largo = string_length(cadena);
if largo >= 1
{
    if argument4
    {
        var c = string_lower(string_char_at(cadena, largo));
        switch c
        {
            case "a": case "b": case "c": case "d":
            case "e": case "f": case "g": case "h":
            case "i": case "j": case "k": case "l":
            case "m": case "n": case "ñ": case "o":
            case "p": case "q": case "r": case "s":
            case "t": case "u": case "v": case "w":
            case "x": case "y": case "z": case "_":
            case " ":
                cadena = string_copy(cadena, 1, largo - 1);
            break;
        }
    }
    else if argument3
    {
        if largo == 1
        {
            cadena = string_upper(cadena);
        }
        else
        {
            var c = string_char_at(cadena, largo - 1);
            if c == " " or c == "_" or c == "."
            {
                c = string_upper(string_char_at(cadena, largo));
                cadena = string_copy(cadena, 1, largo - 1) + c;
            }
        }
    }
}
return cadena;
