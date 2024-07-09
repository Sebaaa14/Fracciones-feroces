if(global.es_correcta == 1 or global.es_correcta == 2)
{
	//instance_activate_object(obj_feedback);
	instance_activate_object(obj_continuar);
}

//Aqui va cambiando de room segun el nivel - ANTIGUO 
if(global.cont_pregunta == 4 && global.cont_nivel = 1)
{
	global.cont_puntaje_total+=global.cont_puntaje_nivel;
	show_message("cambio de sala, movimiendo a level 2")
	room_goto(rm_nivel_superado1);
	
	
} else if(global.cont_pregunta == 4 && global.cont_nivel = 2)
{
	global.cont_puntaje_total+=global.cont_puntaje_nivel;
	show_message("cambio de sala, movimiendo a level 3")
	room_goto(rm_nivel_superado2);
}
if(global.cont_pregunta == 4 && global.cont_nivel = 3)
{
	show_message("cambio de sala, creditos")
	room_goto(rm_nivel_creditos);
}





