/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
// Evento de colisión entre el jugador y el bloque
if (place_meeting(x, y, obj_block2)) {
    room_goto(rm_level3); // Cambiar a la sala deseada
}