//devuelve numero de papeles elite

var respuesta = 0;
with o_papel
{
    if elite != 1
    {
        respuesta++;
    }
}
with o_avion
{
    if elite != 1
    {
        respuesta++;
    }
}
with o_decreto
{
    if elite != 1
    {
        respuesta++;
    }
}
return respuesta;
