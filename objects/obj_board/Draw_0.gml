// Obtener enunciado preguntas
global.enunciado_value = ds_grid_get(global.selected_exercises, 1, global.cont_pregunta);

// Dibujar la imagen del objeto
draw_self();

var _escala_x = 1.5;
var _escala_y = 1.5;

// Configurar el color del texto
draw_set_color(c_white);

// Configurar la alineación del texto
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Obtener las dimensiones y posición del objeto
var obj_x = self.x;
var obj_y = self.y;
var obj_width = sprite_get_width(self.sprite_index);
var obj_height = sprite_get_height(self.sprite_index);

// Definir los márgenes
var margin_left = 60;
var margin_top = 100;
var margin_right = 60;

// Calcular la posición del texto basada en los márgenes y la posición del objeto
var x_pos = obj_x + margin_left;
var y_pos = obj_y + margin_top;

// Definir el ancho máximo para el texto
var max_text_width = obj_width - 2 * margin_left;

if (global.cont_pregunta < 4) {
    var texto = ds_grid_get(global.selected_exercises, 1, global.cont_pregunta);

    // Dibujar el texto transformado y respetando los márgenes
    draw_text_ext_transformed_color(
        x_pos,
        y_pos,
        texto,
        max_text_width,
        -1,
        _escala_x,
        _escala_y,
        0,
        c_white,
        c_white,
        c_white,
        c_white,
        1
    );

    global.pregunta = texto;
}
// Restablecer la alineación del texto a los valores por defecto
draw_set_halign(fa_left);
draw_set_valign(fa_top);
