draw_self();

draw_text_transformed_color(
	obj_alternativa_d.bbox_left + obj_alternativa_d.sprite_width/2,
	obj_alternativa_d.bbox_top + obj_alternativa_d.sprite_height/4,
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