/// @description Proceed to gameplay
global.control=0;
global.id_jugador=" ";
// Press Enter to play
if (room == rm_mainTitle)
{
	if (global.gameStart == false)
	{
		audio_stop_all();
		global.gameStart = true;
		room_goto(rm_gameMain);
	}
}