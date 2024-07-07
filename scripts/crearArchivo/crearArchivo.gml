// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function crearArchivo(){
	if(!file_exists("guardarRanking.csv"))
	{
		var _file = file_text_open_append("guardarRanking.csv");
		file_text_write_string(_file, "ID Jugador,Puntaje Total,Segundos Invertidos,Hora Inicio,Hora Fin,Fecha,Nivel\n");
		file_text_close(_file);
	}
}