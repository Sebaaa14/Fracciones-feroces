/// @description Evento Draw del objeto de control
// Configurar el color del texto
draw_set_color(c_white);
// Configurar la alineación del texto
draw_set_halign(fa_right);
draw_set_valign(fa_top);

// Calcular las pistas restantes
var pistas_restantes = max(0, global.pistas_disponibles - global.pistas_usadas);
// Definir la posición del texto
var x_pos = room_width - 10; // 10 píxeles desde el borde derecho
var y_pos = 10; // 10 píxeles desde el borde superior
// Dibujar el texto de pistas disponibles
draw_text(x_pos, y_pos, "Pistas disponibles: " + string(pistas_restantes));
// Dibujar el texto del nivel actual
draw_text(x_pos, y_pos + 30, "Nivel: " + string(global.nivel));
// Dibujar la pista actual
draw_text(x_pos, y_pos + 60, "Pista actual: " + global.pista_actual);

// Restablecer la alineación del texto a los valores por defecto
draw_set_halign(fa_left);
draw_set_valign(fa_top);
