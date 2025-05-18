//devuelve texto listo para mostrarse

var msj = "Muchapa Statistics:";
ini_open("config.ini");

msj += "#NumPlays: " + ini_read_string("info", "games", "0");
msj += "#MaxTime: " + ini_read_string("info", "time", "0:0");
msj += "#MaxPowers: " + ini_read_string("info", "powers", "0");
msj += "#MaxPoints: " + ini_read_string("info", "general", "0");
msj += "#BestPlayer: " + ini_read_string("info", "bplayer", "?");
msj += "#BestPoints: " + ini_read_string("info", "bpoints", "0");
msj += "#PlayerWeb: " + ini_read_string("tablaweb", "j0", "?");
msj += "#PointsWeb: " + ini_read_string("tablaweb", "p0", "0");
msj += "#PlayerCup: " + ini_read_string("info", "cplayer", "?");
msj += "#PointsCup: " + ini_read_string("info", "cpoints", "0");

ini_close();
return msj;
