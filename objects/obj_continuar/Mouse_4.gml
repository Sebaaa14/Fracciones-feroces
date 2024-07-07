// se muestran los objetos de las alternativas
show_alternatives();

// se cambian de pregunta
cambiar();

//se oculta el botón
instance_deactivate_object(self);

// se reinician los indicadores
global.alternativa_correcta = " ";
global.es_correcta = 0;
global.alternativa_seleccionada = " ";