function leer_csv() {
    // Verificar si el archivo existe
    if (file_exists("guardarRanking.csv")) {
        var _file = file_text_open_read("guardarRanking.csv");

        // Crear una grid para almacenar los datos
        global.data_grid = ds_grid_create(7, 0); // Crear una grid con 4 columnas y ninguna fila inicial
        
        // Leer la primera línea para omitir los encabezados
        var headers = file_text_readln(_file);
        
        // Leer los datos de los jugadores
        var row = 0;
        while (!file_text_eof(_file)) {
            var data_line = file_text_readln(_file);
            var data_values = string_split(data_line, ",");
            
            // Verificar que la línea tenga al menos 4 valores
            if (array_length(data_values) >= 7) {
                // Asegurarse de que la grid tenga suficientes filas
                ds_grid_resize(global.data_grid, 7, row + 1);
                
                // Almacenar los datos en la grid
                global.data_grid[# 0, row] = data_values[0];  // Nombre
                global.data_grid[# 1, row] = real(data_values[1]);  // Puntaje
                global.data_grid[# 2, row] = real(data_values[2]);  // Tiempo
                global.data_grid[# 3, row] = data_values[3];  // Tiempo inicio
                global.data_grid[# 4, row] = data_values[4];  // Tiempo final
				global.data_grid[# 5, row] = data_values[5];  // Fecha
				global.data_grid[# 6, row] = data_values[6];  // Fecha
				row += 1;
            } else {
                // Imprimir un mensaje de depuración si la línea no tiene suficientes valores
                show_debug_message("Línea " + string(row) + " no tiene suficientes valores: " + data_line);
            }
        }
        
        file_text_close(_file);
    }
}
