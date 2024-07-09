// se cargan los ejercicios del nivel
load_level_exercises(global.cont_nivel);

// se cargan los 4 ejercicios seleccionadas
load_selected_level_exercises();

// contador puntaje nivel
global.cont_puntaje_nivel = 0;

// contador pregunta nivel
global.cont_pregunta = 0;

// contador preguntas incorrectas por nivel
global.cont_incorrectas = 0;

// reiniciar la salud al comienzo del nivel
global.health = 70;

// se resetan los marcadores de alternativas
global.alternativa_correcta = 0;
global.es_correcta = 0;
global.alternativa_seleccionada = 0;

