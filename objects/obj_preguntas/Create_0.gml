file_grid = load_csv("banco_preguntas.csv");
alternativa_correcta = "respuesta_correcta";

// Obtener el número total de filas en el archivo (excluyendo la fila de encabezados)
var total_rows = ds_grid_height(file_grid)-1;
// Elegir una fila aleatoria (ignorando la fila de encabezados)
random_row = round(random_range(0, total_rows));
show_debug_message("Número aleatorio: " + string(random_row));


// Obtener los datos de la fila aleatoria

enunciado = file_grid[#1, random_row]; // La segunda columna contiene los enunciados
alternativaA = file_grid[#2, random_row]; // La tercera columna contiene la alternativa A
alternativaB = file_grid[#3, random_row]; // La cuarta columna contiene la alternativa B
alternativaC = file_grid[#4, random_row]; // La quinta columna contiene la alternativa C
global.respuesta_correcta = file_grid[#5, random_row]; // La sexta columna contiene la respuesta correctaspuesta correcta


global.playerControl = true; // para cambiar de room