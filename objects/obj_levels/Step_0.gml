if(global.es_correcta == 1 or global.es_correcta == 2)
{
	//instance_activate_object(obj_feedback);
	instance_activate_object(obj_continuar);
}

//Aqui va cambiando de room segun el nivel 
if(global.cont_pregunta == 4 && global.cont_nivel = 1)
{
	global.cont_puntaje_total+=global.cont_puntaje_nivel;
	room_goto(rm_level2);
} else if(global.cont_pregunta == 4 && global.cont_nivel = 2)
{
	global.cont_puntaje_total+=global.cont_puntaje_nivel;
	room_goto(rm_level3);
}

if(global.cont_pregunta == 4 && global.cont_nivel = 3)
{
	game_end()
}