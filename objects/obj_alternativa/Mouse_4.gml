// incialización de variables

// valor de la alternativa a
var a_value = ds_grid_get(global.selected_exercises,2,global.cont_pregunta);

// valor de la alternativa b
var b_value = ds_grid_get(global.selected_exercises,3,global.cont_pregunta);

// valor de la alternativa c
var c_value = ds_grid_get(global.selected_exercises,4,global.cont_pregunta);

// valor de la alternativa d
var d_value = ds_grid_get(global.selected_exercises,5,global.cont_pregunta);

// valor de la alternativa correcta
var correct = ds_grid_get(global.selected_exercises,6,global.cont_pregunta);



// Caso en que se seleccionó la alternativa a
if(position_meeting(mouse_x, mouse_y, obj_alternativa_a))
{
	// Se marca la alternativa a como seleccionada
	global.alternativa_seleccionada = "a";
	
	// Si la alternativa a es la correcta
	// Se marca que se seleccionó la alternativa correcta
	if( a_value == correct)
	{
		global.es_correcta = 2;
	
	}else
	{
		global.es_correcta = 1;
	}
	global.alternativa_contenido = a_value;
	//show_message(global.alternativa_contenido);
	
}

// Caso en que se seleccionó la alternativa b
if(position_meeting(mouse_x, mouse_y, obj_alternativa_b))
{
	// Se marca la alternativa b como seleccionada
	global.alternativa_seleccionada = "b";
	
	// Si la alternativa b es la correcta
	// Se marca que se seleccionó la alternativa correcta
	if( b_value == correct)
	{
		global.es_correcta = 2;
	}else
	{
		global.es_correcta = 1;	
	}
	global.alternativa_contenido = b_value;
	//show_message(global.alternativa_contenido);
}

// Caso en que se seleccionó la alternativa c
if(position_meeting(mouse_x, mouse_y, obj_alternativa_c))
{
	// Se marca la alternativa c como seleccionada
	global.alternativa_seleccionada = "c";
	
	// Si la alternativa c es la correcta
	// Se marca que se seleccionó la alternativa correcta
	if( c_value == correct)
	{
		global.es_correcta = 2;
	}else
	{
		global.es_correcta = 1;
	}
	global.alternativa_contenido = c_value;
	//show_message(global.alternativa_contenido);
}

// Caso en que se seleccionó la alternativa d
if(position_meeting(mouse_x, mouse_y, obj_alternativa_d))
{
	// Se marca la alternativa d como seleccionada
	global.alternativa_seleccionada = "d";
	
	// Si la alternativa d es la correcta
	// Se marca que se seleccionó la alternativa correcta
	if( d_value == correct)
	{
		global.es_correcta = 2;
	}else
	{
		global.es_correcta = 1;
	}
	global.alternativa_contenido = d_value;
	//show_message(global.alternativa_contenido);
}


// Se guarda la alternatica que es la correcta
if( a_value == correct)
{
	global.alternativa_correcta = "a";
	
}

if( b_value == correct)
{
	global.alternativa_correcta = "b";
}

if( c_value == correct)
{
	global.alternativa_correcta = "c";
}

if( d_value == correct)
{
	global.alternativa_correcta = "d";
}

