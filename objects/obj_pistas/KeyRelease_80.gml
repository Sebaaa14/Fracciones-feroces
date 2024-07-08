/// @description Evento Key Press "P" del obj_control
if (global.pistas_usadas < global.pistas_disponibles) {
    //var pregunta_actual = global.enunciado_value; // Reemplaza con la lógica para obtener la pregunta actual
	//test 
	//show_debug_message("ENUNCIADO" + pregunta_actual);
    global.pista_actual = dar_pista(global.enunciado_value); // Llama a la función dar_pista con la pregunta actual
    global.pistas_usadas++;
} else {
    global.pista_actual = "No tienes más pistas disponibles.";
}

