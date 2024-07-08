/// @description Inserte aquí la lógica de actualización de salud y dibujo de vidas
// Actualización de salud en base al número de respuestas incorrectas

if(global.cont_incorrectas == 1){ global.health = 45; }  // Primera incorrecta
else if(global.cont_incorrectas == 2){ global.health = 20; }  // Segunda incorrecta
else if(global.cont_incorrectas >= 3){ global.health = 0; }  // Tercera o más incorrectas

// Verificar si la salud ha llegado a 0 y volver a la sala anterior si es necesario
if(global.health <= 0) {
    room_goto_previous();
}

// Dibujar las vidas basadas en la salud actual
var porcentaje_salud = ceil(global.health / 100 * 3);

for(var i = 0; i < porcentaje_salud; i++) {
    draw_sprite(sprVida, 0, 90 + 90 * i, 20);
}
