//mira si estan las clases dadas en arg0, arg1, arg2 o -1

var respuesta = false;
var c1 = false;
var c2 = false;
var c3 = false;
with o_ficha
{
    if clase == argument0
    {
        c1 = true;
    }
    if clase == argument1
    {
        c2 = true;
    }
    if clase == argument2
    {
        c3 = true;
    }
}
if argument0 == -1
{
    c1 = true;
}
if argument1 == -1
{
    c2 = true;
}
if argument2 == -1
{
    c3 = true;
}
if c1 and c2 and c3
{
    respuesta = true;
}
return respuesta;
