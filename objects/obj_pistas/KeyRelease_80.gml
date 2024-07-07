/// @description Evento Key Press "P" del obj_control
if (global.pistas_usadas < global.pistas_disponibles) {
    var pregunta_actual = "¿Cuál es el numerador en la fracción 3/5?"; // Reemplaza con la lógica para obtener la pregunta actual
    global.pista_actual = dar_pista(pregunta_actual); // Llama a la función dar_pista con la pregunta actual
    global.pistas_usadas++;
    show_debug_message("Pista usada. Pistas usadas: " + string(global.pistas_usadas));
    show_debug_message("Pistas disponibles: " + string(global.pistas_disponibles));
} else {
    global.pista_actual = "No tienes más pistas disponibles.";
    show_debug_message("No hay más pistas disponibles");
}

