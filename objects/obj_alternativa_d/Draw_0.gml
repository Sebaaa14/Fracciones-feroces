draw_self();

draw_text_transformed_color(
	obj_alternativa_d.x+50,
	obj_alternativa_d.y,
	ds_grid_get(global.selected_exercises,5,global.cont_pregunta),
	2,
	3,
	0,
	c_black,
	c_black,
	c_black,
	c_black,
	1
);