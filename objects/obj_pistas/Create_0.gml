// @description Evento Create del objeto de control

global.nivel = 1;
global.pistas_disponibles = 2;
global.pistas_usadas = 0;
global.pista_actual = ""; // Inicializar la pista actual

//show_debug_message("Nivel inicial: " + string(global.nivel));
//show_debug_message("Pistas disponibles iniciales: " + string(global.pistas_disponibles));

// Función para actualizar pistas al cambiar de nivel
function actualizar_pistas_por_nivel() {
    switch(global.cont_nivel) {
        case 1:
            global.pistas_disponibles = 3;
            break;
        case 2:
            global.pistas_disponibles = 2;
            break;
        case 3:
            global.pistas_disponibles = 1;
            break;
        default:
            global.pistas_disponibles = 1;
            break;
    }
    global.pistas_usadas = 0;
    //show_debug_message("Nivel actualizado: " + string(global.cont_nivel));
    ///show_debug_message("Pistas disponibles actualizadas: " + string(global.pistas_disponibles));
}

// Función para avanzar al siguiente nivel
function avanzar_nivel() {
    global.nivel++;
    actualizar_pistas_por_nivel();
    // Aquí puedes añadir cualquier otra lógica necesaria para la transición de nivel
}

// Inicializar las pistas para el primer nivel
actualizar_pistas_por_nivel();
