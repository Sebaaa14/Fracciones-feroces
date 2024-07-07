function load_selected_level_exercises(){
	
	ds_grid_clear(global.selected_exercises, 0);
	
	var _n_exercises = ds_grid_height(global.exercises_bank_level);
	
	var _list_numbers = ds_list_create();
	
	for (var _i = 0; _i < _n_exercises; _i++)
	{
	    ds_list_set(_list_numbers, _i, _i);
	}
	
	// se reordena un número máximo random de veces para asegurar
	// que se no se repitan siempre las mismas preguntas
	var _i_max = round(random_range(2,10));
	for(var _i = 0; _i < _i_max; _i++)
	{
		ds_list_shuffle(_list_numbers);
	}
	
	for (var _i = 0; _i < 4; _i+=1)
	{
		// Cambiar orden de alternativas
		alternatives = ds_list_create();
		ds_list_set(alternatives, 0, 2);
		ds_list_set(alternatives, 1, 3);
		ds_list_set(alternatives, 2, 4);
		ds_list_set(alternatives, 3, 5);
		
		ds_list_shuffle(alternatives);
		pos_a = ds_list_find_value(alternatives, 0);
		pos_b = ds_list_find_value(alternatives, 1);
		pos_c = ds_list_find_value(alternatives, 2);
		pos_d = ds_list_find_value(alternatives, 3);
		
		pos = ds_list_find_value(_list_numbers, _i);
		//show_debug_message(string(pos));
		id_ejercicio = ds_grid_get(global.exercises_bank_level, 0, pos);
	    enunciado = ds_grid_get(global.exercises_bank_level, 1, pos);
		alt_1 = ds_grid_get(global.exercises_bank_level, pos_a, pos);
		alt_2 = ds_grid_get(global.exercises_bank_level, pos_b, pos);
		alt_3 = ds_grid_get(global.exercises_bank_level, pos_c, pos);
		alt_4 = ds_grid_get(global.exercises_bank_level, pos_d, pos);
		alt_correcta = ds_grid_get(global.exercises_bank_level, 6, pos);
		
		ds_grid_set(global.selected_exercises, 0, _i, id_ejercicio);
		ds_grid_set(global.selected_exercises, 1, _i, enunciado);
		ds_grid_set(global.selected_exercises, 2, _i, alt_1);
		ds_grid_set(global.selected_exercises, 3, _i, alt_2);
		ds_grid_set(global.selected_exercises, 4, _i, alt_3);
		ds_grid_set(global.selected_exercises, 5, _i, alt_4);
		ds_grid_set(global.selected_exercises, 6, _i, alt_correcta);
		
		//show_debug_message(string(_i));
		show_debug_message(ds_grid_get(global.selected_exercises, 1, _i));
		
	}
	

}