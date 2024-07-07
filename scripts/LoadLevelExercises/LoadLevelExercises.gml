function load_level_exercises(_n_level){
	
	// Se limpia la grid del nivel
	ds_grid_clear(global.exercises_bank_level, 0);
	
	
	
	// Se obtiene el número de ejercicios del banco de preguntas
	var _n_exercises = ds_grid_height(global.exercises_bank);


	// Se inicializa contador para la grid de nivel n
	var _cont = 0;

	// Se llena la grid
	for(var _i = 0; _i < _n_exercises; _i++)
	{
		if(ds_grid_get(global.exercises_bank, 7, _i) = _n_level)
		{
			id_ejercicio = ds_grid_get(global.exercises_bank, 0, _i);
			enunciado = ds_grid_get(global.exercises_bank, 1, _i);
			alt_1 = ds_grid_get(global.exercises_bank, 2, _i);
			alt_2 = ds_grid_get(global.exercises_bank, 3, _i);
			alt_3 = ds_grid_get(global.exercises_bank, 4, _i);
			alt_4 = ds_grid_get(global.exercises_bank, 5, _i);
			alt_correcta = ds_grid_get(global.exercises_bank, 6, _i);
		
			ds_grid_set(global.exercises_bank_level, 0, _cont, id_ejercicio);
			ds_grid_set(global.exercises_bank_level, 1, _cont, enunciado);
			ds_grid_set(global.exercises_bank_level, 2, _cont, alt_1);
			ds_grid_set(global.exercises_bank_level, 3, _cont, alt_2);
			ds_grid_set(global.exercises_bank_level, 4, _cont, alt_3);
			ds_grid_set(global.exercises_bank_level, 5, _cont, alt_4);
			ds_grid_set(global.exercises_bank_level, 6, _cont, alt_correcta);
			
		
			_cont += 1;
		}
	}
	
}