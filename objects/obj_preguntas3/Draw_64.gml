// Configuración de la fuente y color del texto
draw_set_font(font_textbox);
draw_set_color(c_white);
draw_set_halign(fa_center);

// Dibujar el enunciado
var enunciado_width = string_width(enunciado);
var enunciado_height = string_height(enunciado);
draw_text(display_get_width() / 1.9, 200, enunciado);

// Dibujar las alternativas y la respuesta correcta con bordes
var border_width = 15; // Ancho del borde
var padding = 1; // Espacio de relleno alrededor del texto

// Alternativa A
var alternativaA_width = string_width(alternativaA) + 2 * padding;
var alternativaA_height = string_height(alternativaA) + 2 * padding;
draw_set_color(c_black); // Cambiar el color del borde a negro
draw_rectangle(display_get_width() / 1.5 - border_width, 300 - border_width, display_get_width() / 1.5 + alternativaA_width + border_width, 300 + alternativaA_height + border_width, false);
draw_set_color(c_white); // Restaurar el color del texto a blanco
draw_text(display_get_width() / 1.5 + padding, 300 + padding, alternativaA);

// Alternativa B
var alternativaB_width = string_width(alternativaB) + 2 * padding;
var alternativaB_height = string_height(alternativaB) + 2 * padding;
draw_set_color(c_black); // Cambiar el color del borde a negro
draw_rectangle(display_get_width() / 2.5 - border_width, 300 - border_width, display_get_width() / 2.5 + alternativaB_width + border_width, 300 + alternativaB_height + border_width, false);
draw_set_color(c_white); // Restaurar el color del texto a blanco
draw_text(display_get_width() / 2.5 + padding, 300 + padding, alternativaB);

// Alternativa C
var alternativaC_width = string_width(alternativaC) + 2 * padding;
var alternativaC_height = string_height(alternativaC) + 2 * padding;
draw_set_color(c_black); // Cambiar el color del borde a negro
draw_rectangle(display_get_width() / 1.5 - border_width, 400 - border_width, display_get_width() / 1.5 + alternativaC_width + border_width, 400 + alternativaC_height + border_width, false);
draw_set_color(c_white); // Restaurar el color del texto a blanco
draw_text(display_get_width() / 1.5 + padding, 400 + padding, alternativaC);

// Respuesta Correcta
var respuesta_correcta_width = string_width(respuesta_correcta) + 2 * padding;
var respuesta_correcta_height = string_height(respuesta_correcta) + 2 * padding;
draw_set_color(c_black); // Cambiar el color del borde a negro
draw_rectangle(display_get_width() / 2.5 - border_width, 400 - border_width, display_get_width() / 2.5 + respuesta_correcta_width + border_width, 400 + respuesta_correcta_height + border_width, false);
draw_set_color(c_white); // Restaurar el color del texto a blanco
draw_text(display_get_width() / 2.5 + padding, 400 + padding, respuesta_correcta);

// Opcional: resetear los ajustes después de dibujar
draw_set_font(font_textbox); // Vuelve a la fuente por defecto
draw_set_color(c_black); // Vuelve al color por defecto
draw_set_halign(fa_left); // Vuelve a la alineación por defecto
