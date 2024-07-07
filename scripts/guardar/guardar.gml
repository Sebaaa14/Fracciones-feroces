//limpiar_csv();
function guardar() {
guardar_ranking();//guarda el historial de juego
//guardar_estd();//guarda las estadisticas del juego
}

function guardar_ranking() {
	//show_message("YA GUARDO");
    var _file = file_text_open_append("guardarRanking.csv");
	//Hora y fecha de cuando el jugador inicia el juego
	var fecha_hora_inicio = global.tiempo_inicio;   
    var fecha = date_date_string(fecha_hora_inicio);
	var hora_str_i = date_time_string(fecha_hora_inicio);
	
	//Hora y fecha de cuando el jugador termina el juego
	var fecha_hora_final = date_current_datetime();   
	var hora_str_f = date_time_string(fecha_hora_final);
	
	//Calculo de segundos invertidos
	// Función para convertir hh:mm:ss a segundos
	function time_to_seconds(time_string) {
	    var parts = string_split(time_string, ":");
	    var hours = real(parts[0]);
	    var minutes = real(parts[1]);
	    var seconds = real(parts[2]);
	    return hours * 3600 + minutes * 60 + seconds;
	}

	// Convertir tiempos a segundos
	var inicio_segundos = time_to_seconds(hora_str_i);
	var final_segundos = time_to_seconds(hora_str_f);

	// Calcular la diferencia en segundos
	var diferencia_segundos = (final_segundos - inicio_segundos);
	var segundos = string(diferencia_segundos);
	
    // Escribir datos del jugador
    var data_line = string(global.id_jugador) + "," 
	+ string(global.cont_puntaje_total) + "," + segundos + ","
	+ hora_str_i +","
	+ hora_str_f + ","+ fecha + ","+ string(global.cont_nivel)+ "\n";
    file_text_write_string(_file, data_line);
    
    file_text_close(_file);
}
function guardar_nombre(){
	var _file = file_text_open_append("guardarEstadisticas.csv");
	//guardar el nombre
	file_text_write_string(_file, global.id_jugador+"\n"+
	"Nivel,NumeroPregunta,Pregunta,Alternativa,ContenidoAlternativa,Correcta,Puntaje,Segundos,HoraInicio,HoraFin,Fecha"+"\n");
    
    file_text_close(_file);
}
function guardar_estd(){
	var _file = file_text_open_append("guardarEstadisticas.csv");
	//Hora y fecha de cuando el jugador inicia el juego
	var fecha_hora_inicio = global.tiempo_i_pregunta;  
    var fecha = date_date_string(fecha_hora_inicio);
	var hora_str_i = date_time_string(fecha_hora_inicio);
	//show_message(fecha + hora_str_i);
	//Hora y fecha de cuando el jugador termina la pregunta
	var fecha_hora_final = date_current_datetime();   
	var hora_str_f = date_time_string(fecha_hora_final);
	
	//Calculo de segundos invertidos
	// Función para convertir hh:mm:ss a segundos
	function time_to_seconds(time_string) {
	    var parts = string_split(time_string, ":");
	    var hours = real(parts[0]);
	    var minutes = real(parts[1]);
	    var seconds = real(parts[2]);
	    return hours * 3600 + minutes * 60 + seconds;
	}

	// Convertir tiempos a segundos
	//show_message("ACA1");
	var inicio_segundos = time_to_seconds(hora_str_i);
	//show_message("ACA2");
	var final_segundos = time_to_seconds(hora_str_f);
//show_message("ACA3");
	// Calcular la diferencia en segundos
	var diferencia_segundos = (final_segundos - inicio_segundos);
	var segundos = string(diferencia_segundos);
	
    // Escribir datos del jugador
    var data_line = 
	string(global.cont_nivel) + "," 
	+ string(global.cont_pregunta) + ","
	+ global.pregunta + ","
	+ string(global.alternativa_seleccionada) + ","
	+ global.alternativa_contenido + ","
	+ string(global.alternativa_correcta) + ","
	+ string(global.cont_puntaje_total) + "," + segundos + ","
	+ hora_str_i +","
	+ hora_str_f + ","+ fecha +"\n";
    file_text_write_string(_file, data_line);
    
    file_text_close(_file);
}