function dar_pista(_pregunta) {
    // Crear el diccionario de preguntas y pistas
    var pistas = ds_map_create();
    
    // Agregar pares pregunta-pista al diccionario
    ds_map_add(pistas, "Cual es el numerador en la fraccion 3/5", "El numerador es el numero de arriba en una fraccion.");
    ds_map_add(pistas, "Cual es el denominador en la fraccion 4/7", "El denominador es el numero de abajo en una fraccion.");
    ds_map_add(pistas, "Cual es una fraccion impropia", "Una fraccion impropia tiene un numerador mayor o igual al denominador.");
    ds_map_add(pistas, "Cual es la fraccion decimal equivalente a 2/3 con denominador 9", "Multiplica el numerador y el denominador por el mismo numero.");
    ds_map_add(pistas, "Cual de las siguientes fracciones es equivalente a 3/9", "Simplifica la fraccion para encontrar su equivalente.");
    ds_map_add(pistas, "Cual es la fraccion decimal equivalente a 3/4", "Divide el numerador por el denominador.");
    ds_map_add(pistas, "Cual es la fraccion propia", "Una fraccion propia tiene un numerador menor que el denominador.");
    ds_map_add(pistas, "Cual de las siguientes es una fraccion impropia", "Una fraccion impropia tiene un numerador mayor o igual al denominador.");
    ds_map_add(pistas, "Cual es el numerador de la fraccion 5/6", "El numerador es el numero de arriba en una fraccion.");
    ds_map_add(pistas, "Cual es el denominador de la fraccion 2/9", "El denominador es el numero de abajo en una fraccion.");
    ds_map_add(pistas, "Cual es una fraccion impropia", "Una fraccion impropia tiene un numerador mayor o igual al denominador.");
    ds_map_add(pistas, "Cual es la fraccion decimal equivalente a 5/6 con denominador 9", "Multiplica el numerador y el denominador por el mismo numero.");
    ds_map_add(pistas, "Cual de las siguientes fracciones es equivalente a 7/8", "Simplifica la fraccion para encontrar su equivalente.");
    ds_map_add(pistas, "Cual es la fraccion decimal equivalente a 3/8", "Divide el numerador por el denominador.");
    ds_map_add(pistas, "Cual es la fraccion propia", "Una fraccion propia tiene un numerador menor que el denominador.");
    ds_map_add(pistas, "Cual de las siguientes es una fraccion impropia", "Una fraccion impropia tiene un numerador mayor o igual al denominador.");
    ds_map_add(pistas, "Que fraccion es mayor: 3/4 o 5/6", "Convierte las fracciones a decimales para compararlas.");
    ds_map_add(pistas, "Convierte 2/5 a su forma decimal", "Divide el numerador por el denominador.");
    ds_map_add(pistas, "Que fraccion es equivalente a 0.6", "0.6 se puede expresar como una fraccion con un denominador de 10.");
    ds_map_add(pistas, "Como se compara 4/7 y 5/8", "Convierte las fracciones a decimales para compararlas.");
    ds_map_add(pistas, "Cual es la fraccion equivalente a 4/5", "Convierte la fraccion a su forma decimal.");
    ds_map_add(pistas, "Convierte 0.75 a su forma fraccionaria en su minima expresion", "0.75 se puede expresar como una fraccion con un denominador de 100 y luego simplificar.");
    ds_map_add(pistas, "Cual es mayor: 0.5 o 3/4", "Convierte las fracciones a decimales para compararlas.");
    ds_map_add(pistas, "Convierte 3/10 a su forma decimal", "Divide el numerador por el denominador.");
    ds_map_add(pistas, "Como se compara 2/3 y 0.7", "Convierte las fracciones a decimales para compararlas.");
    ds_map_add(pistas, "Cual es la fraccion equivalente a 0.25", "0.25 se puede expresar como una fraccion con un denominador de 100.");
    ds_map_add(pistas, "Convierte 7/8 a su forma decimal", "Divide el numerador por el denominador.");
    ds_map_add(pistas, "Que fraccion es equivalente a 0.3333", "0.3333 se puede expresar como una fraccion con un denominador de 3.");
    ds_map_add(pistas, "Cual es la fraccion equivalente a 2/5", "Convierte la fraccion a su forma decimal.");
    ds_map_add(pistas, "Convierte 0.375 a su forma fraccionaria en su minima expresion", "0.375 se puede expresar como una fraccion con un denominador de 1000 y luego simplificar.");
    ds_map_add(pistas, "Convierte 2/7 a su forma decimal", "Divide el numerador por el denominador.");
    ds_map_add(pistas, "Cual es la fraccion equivalente a 0.55", "0.55 se puede expresar como una fraccion con un denominador de 100.");
    ds_map_add(pistas, "Cual es la suma de 25/49 y 5/6", "Convierte las fracciones a un denominador comun antes de sumarlas.");
    ds_map_add(pistas, "Convierte 10.25 a su forma fraccionaria en su minima expresion", "La parte decimal se puede expresar como una fraccion.");
    ds_map_add(pistas, "Como se compara 15/16 y 0.9375", "Convierte las fracciones a decimales para compararlas.");
    ds_map_add(pistas, "Resuelve la ecuacion: 3/X = 15/18", "Multiplica cruzado para despejar X.");
    ds_map_add(pistas, "Cual es mayor: 0.655 o 2/3", "Convierte las fracciones a decimales para compararlas.");
    ds_map_add(pistas, "Convierte 0.625 a su forma fraccionaria en su minima expresion", "0.625 se puede expresar como una fraccion con un denominador de 1000 y luego simplificar.");
    ds_map_add(pistas, "Cual es la resta de 17/18 menos 1/2", "Convierte las fracciones a un denominador comun antes de restarlas.");
    ds_map_add(pistas, "Convierte 41.2 a su forma fraccionaria en su minima expresion", "La parte decimal se puede expresar como una fraccion.");
    ds_map_add(pistas, "Como se compara 0.743 y 3/4", "Convierte las fracciones a decimales para compararlas.");
    ds_map_add(pistas, "Resuelve la ecuacion: 23/X = 72/100", "Multiplica cruzado para despejar X.");
    ds_map_add(pistas, "Cual es la suma de 15/18 y 7/9", "Convierte las fracciones a un denominador comun antes de sumarlas.");
    ds_map_add(pistas, "Convierte 15.65 a su forma fraccionaria en su minima expresion", "La parte decimal se puede expresar como una fraccion.");
    ds_map_add(pistas, "Resuelve la ecuacion: 4/X = 13/16", "Multiplica cruzado para despejar X.");
    ds_map_add(pistas, "Convierte 0.66666 a su forma fraccionaria en su minima expresion", "0.66666 se puede expresar como una fraccion con un denominador de 100.");
    ds_map_add(pistas, "Cual es la resta de 10/15 menos 2/7", "Convierte las fracciones a un denominador comun antes de restarlas.");
    ds_map_add(pistas, "Convierte 78.125 a su forma fraccionaria en su minima expresion", "La parte decimal se puede expresar como una fraccion.");
    
    // Buscar la pista correspondiente a la pregunta
    _pista = ds_map_find_value(pistas, _pregunta);
    
    // Verificar si la pista es indefinida y asignar un mensaje por defecto si es necesario
    if (_pista == undefined) {
        _pista = "Lo siento, no hay una pista especifica para esta pregunta.";
    }
    
    // Destruir el diccionario para liberar memoria
    ds_map_destroy(pistas);
    
    // Devolver la pista
    return _pista;
}
