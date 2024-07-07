global.main_menu = self;

//window_set_fullscreen(true);

// Cargar el banco de ejercicios desde un archivo *.csv
global.exercises_bank = load_csv("banco_preguntas.csv");


// Se crea la grid del nivel n
global.exercises_bank_level = ds_grid_create(8, 10);

// Se crea la grid con los 4 ejercicios seleccionados
global.selected_exercises = ds_grid_create(8, 4);

// Imprime los valores del banco de ejercicios
/*for (var row = 1; row < ds_grid_height(global.exercises_bank_level); row++) {
    for (var col = 1; col < ds_grid_width(global.exercises_bank_level); col++) {
        var value = ds_grid_get(global.exercises_bank_level, col, row);
        show_message("Valor en (" + string(col) + ", " + string(row) + "): " + string(value));
    }
}*/

// contador del nivel
global.cont_nivel = 0;

// contador puntaje total
global.cont_puntaje_total = 0;

// contador puntaje nivel (equivalente a las correctas)
global.cont_puntaje_nivel = 0;

// indica la alternativa seleccionada
// espacio (" ") niguna
// a
// b
// c
// d
global.alternativa_seleccionada = " ";

// indica si la alternativa fue correcta.
// 0 no seleccionada
// 1 incorrecta
// 2 correcta
global.es_correcta = 0;

// indica la alternativa seleccionada
// espacio (" ") niguna
// a
// b
// c
// d
global.alternativa_correcta = " ";


// contador pregunta nivel
global.cont_pregunta = 0;


global.control = 0;


global.level=0;

// guarda el nombre del jugador
global.id_jugador = "";



