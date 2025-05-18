//transforma a alguien en elite
//arg0: que clase debe ascender, si -1 cualquiera

var ascendio = false;
var numero = instance_number(o_papel) - 1;
var freno = 0;
var aux;
do
{
    aux = instance_find(o_papel, irandom(numero));
    freno++;
    if aux.elite == 1
    {
        if aux.clase == argument0 or (argument0 == -1 and
            aux.clase != m_pliego and aux.clase != m_carta)
        {
            ascendio = true;
            aux.elite = 2;
            aux.alarm[0] = 1;
            aux.alarm[1] = 1;
        }
    }
}
until ascendio or freno > numero;
if !ascendio and argument0 == -1
{
    freno = 0;
    do
    {
        aux = instance_find(o_papel, irandom(numero));
        freno++;
        if aux.elite == 1
        {
            ascendio = true;
            aux.elite = 2;
            aux.alarm[0] = 1;
            aux.alarm[1] = 1;
        }
    }
    until ascendio or freno > numero;
}
