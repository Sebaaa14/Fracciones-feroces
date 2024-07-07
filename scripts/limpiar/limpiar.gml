// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function limpiar_csv() {
    // Verificar si el archivo existe
    if (file_exists("guardar.csv")) {
        var _file = file_text_open_read("guardar.csv");

        // Leer la primera línea que contiene los encabezados
        var headers = file_text_readln(_file);
        
        // Cerrar el archivo de lectura
        file_text_close(_file);
        
        // Abrir el archivo en modo de escritura para sobrescribir el contenido
        _file = file_text_open_write("guardar.csv");
        
        // Escribir los encabezados de nuevo en el archivo
        file_text_write_string(_file, headers);
        
        // Cerrar el archivo de escritura
        file_text_close(_file);

        show_message("El archivo CSV ha sido limpiado, manteniendo solo los encabezados.");
    } else {
        show_message("No se encontró el archivo CSV para limpiar.");
    }
}
