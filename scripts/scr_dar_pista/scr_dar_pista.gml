
// @function dar_pista(pregunta)
/// @param {string} pregunta La pregunta actual

function dar_pista(_pregunta) {
    if (global.pistas_usadas >= global.pistas_disponibles) {
        return "No tienes más pistas disponibles para este nivel.";
    }

    var _pista = "";

    switch(_pregunta) {
        case "¿Cuál es el numerador en la fracción 3/5?":
            _pista = "El numerador es el número de arriba en una fracción.";
            break;
        case "¿Cuál es el denominador en la fracción 4/7?":
            _pista = "El denominador es el número de abajo en una fracción.";
            break;
        // Añade más casos para cada pregunta
        default:
            _pista = "Lo siento, no hay una pista específica para esta pregunta.";
    }

    return _pista;
}

