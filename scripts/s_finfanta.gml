//destruir al fantasma
//arg0: id quien llama

with argument0
{
    if instance_exists(invocador)
    {
        if invocador.fanta1 == id
        {
            invocador.fanta1 = -1;
        }
        else
        {
            invocador.fanta2 = -1;
        }
    }
    instance_destroy();
}
