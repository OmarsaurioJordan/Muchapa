//mira si hay un orbe que tenga en mira al poder
//arg0: id poder quien llama
//res: true si hay un orbe mirandolo

var resultado = false;

with o_orbe
{
    if blanco == argument0
    {
        resultado = true;
        break;
    }
}

return resultado;
