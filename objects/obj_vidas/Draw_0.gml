/// @description Inserte aquí la descripción
// Puede escribir su código en este edito

//posición en pantalla 110, 1160, 497, 116

var porcentaje_salud = ceil(global.health / 100 * 3);

for(var i = 0; i < porcentaje_salud; i++) {
    draw_sprite(sprVida, 0, 90 + 90 * i, 20);
}