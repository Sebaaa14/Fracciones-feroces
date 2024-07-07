draw_self();

var _escala_x;
var _escala_y;

if(global.cont_nivel == 3)
{
	_escala_x = 1.5;
	_escala_y = 1.3;
}else
{
	_escala_x = 2;
	_escala_y = 2;
}

// Se dibuja el enunciado sobre el board
if(global.cont_pregunta < 4)
{
	draw_text_transformed_color
	(
		self.bbox_left+self.sprite_width/10,
		self.bbox_top+self.sprite_height*3/10,
		"",
		2,
		2,
		0,
		c_white,
		c_white,
		c_white,
		c_white,
		1
	);
	
	draw_text_transformed_color
	(
		self.bbox_left+self.sprite_width/10,
		self.bbox_top+self.sprite_height*5/10,
		ds_grid_get(global.selected_exercises,1,global.cont_pregunta),
		_escala_x,
		_escala_y,
		0,
		c_white,
		c_white,
		c_white,
		c_white,
		1
	);
	global.pregunta = ds_grid_get(global.selected_exercises,1,global.cont_pregunta);
	//show_message(global.pregunta);
	
}