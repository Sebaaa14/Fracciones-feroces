/// @description Evento Draw del objeto de control

// Dibujar la imagen del objeto
draw_self();

// Configurar el color del texto
draw_set_color(c_white);

// Configurar la alineación del texto
draw_set_halign(fa_left); // Cambiar a fa_left para alinear el texto a la izquierda
draw_set_valign(fa_top);

// Calcular las pistas restantes
var pistas_restantes = max(0, global.pistas_disponibles - global.pistas_usadas);

// Obtener las dimensiones y posición del objeto obj_pistas
var obj_x = obj_pistas.x;
var obj_y = obj_pistas.y;
var obj_width = sprite_get_width(obj_pistas.sprite_index);
var obj_height = sprite_get_height(obj_pistas.sprite_index);

// Definir los márgenes
var margin_left = 20;
var margin_top = 20;

// Calcular la posición del texto basada en los márgenes y la posición del objeto
var x_pos = obj_x + margin_left;
var y_pos = obj_y + margin_top;

// Definir el ancho máximo para el texto
var max_text_width = obj_width - 2 * margin_left;

// Dibujar el texto de pistas disponibles
draw_text_ext(x_pos, y_pos, "Presiona P para usar una pista", -2, max_text_width);

draw_text_ext(x_pos, y_pos+40, "Pistas disponibles: " + string(pistas_restantes), -2, max_text_width);

// Dibujar el texto del nivel actual
draw_text_ext(x_pos, y_pos + 80, "Nivel: " + string(global.nivel), -2, max_text_width);

// Dibujar la pista actual
draw_text_ext(x_pos, y_pos + 120, "Pista actual: " + global.pista_actual, -2, max_text_width);

// Restablecer la alineación del texto a los valores por defecto
draw_set_halign(fa_left);
draw_set_valign(fa_top);
