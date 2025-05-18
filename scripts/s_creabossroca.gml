//hace aparecer al boss roca en algun lugar

var xx, yy, aux, select, freno, totalm;

//hubicar punto de aparicion
freno = 0;
do
{
    if !instance_exists(o_spawn) or freno > 20
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
    yy > view_yview[0] - 144 and yy < view_yview[0] + view_hview[0] + 432);

//buscar muro que lo origino
totalm = instance_number(o_muro) - 1;
freno = 0;
do
{
    freno++;
    select = instance_find(o_muro, irandom(totalm));
    if select.visible
    {
        select = -1;
    }
    else if !(select.x > 144 and select.x < room_width - 144 and
        select.y > 432 and select.y < room_height - 144)
    {
        select = -1;
    }
}
until select != -1 or freno > 100;

//crearlo como tal
if select != -1
{
    aux = instance_create(xx, yy, o_bossroca);
    aux.orix = select.x;
    aux.oriy = select.y;
    with select
    {
        instance_create(x, y, o_oriboss)
        instance_destroy();
    }
}
