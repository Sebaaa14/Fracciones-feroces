// Evento Step del objeto




// Variables de configuración
var border_width = 2; // Ancho del borde
var padding = 10; // Espacio de relleno alrededor del texto

// Obtener las dimensiones de las alternativas y la respuesta correcta
var alternativaA_width = string_width(alternativaA) + 2 * padding;
var alternativaA_height = string_height(alternativaA) + 2 * padding;
var alternativaB_width = string_width(alternativaB) + 2 * padding;
var alternativaB_height = string_height(alternativaB) + 2 * padding;
var alternativaC_width = string_width(alternativaC) + 2 * padding;
var alternativaC_height = string_height(alternativaC) + 2 * padding;
var respuesta_correcta_width = string_width(respuesta_correcta) + 2 * padding;
var respuesta_correcta_height = string_height(respuesta_correcta) + 2 * padding;



// Verificar clic del mouse
if mouse_check_button_pressed(mb_left) {
    // Verificar si el clic está dentro del cuadrado de Alternativa A
    if point_in_rectangle(mouse_x, mouse_y, display_get_width() / 1.5 - border_width, 300 - border_width, display_get_width() / 1.5 + alternativaA_width + border_width, 300 + alternativaA_height + border_width) {
        // Verificar si Alternativa A es la respuesta correcta
        if alternativa_correcta == "alternativaA" {
            show_message("¡Correcto!");
        } else {
            show_message("¡Incorrecto!");
        }
    }
    // Repetir el proceso para Alternativa B y Alternativa C
    // Alternativa B
    if point_in_rectangle(mouse_x, mouse_y, display_get_width() / 2.5 - border_width, 300 - border_width, display_get_width() / 2.5 + alternativaB_width + border_width, 300 + alternativaB_height + border_width) {
        if alternativa_correcta == "alternativaB" {
            show_message("¡Correcto!");
        } else {
            show_message("¡Incorrecto!");
        }
    }
    // Alternativa C
    if point_in_rectangle(mouse_x, mouse_y, display_get_width() / 1.5 - border_width, 400 - border_width, display_get_width() / 1.5 + alternativaC_width + border_width, 400 + alternativaC_height + border_width) {
        if alternativa_correcta == "alternativaC" {
            show_message("¡Correcto!");
        } else {
            show_message("¡Incorrecto!");
        }
    }
    // Verificar si el clic está dentro del cuadrado de la Respuesta Correcta
    if point_in_rectangle(mouse_x, mouse_y, display_get_width() / 2.5 - border_width, 400 - border_width, display_get_width() / 2.5 + respuesta_correcta_width + border_width, 400 + respuesta_correcta_height + border_width) {
        // Verificar si la Respuesta Correcta es la respuesta seleccionada
        if alternativa_correcta == "respuesta_correcta" {
            show_message("¡Correcto!");
			room_goto(rm_level3);
			
        } else {
            show_message("¡Incorrecto!");
        }
    }
}
