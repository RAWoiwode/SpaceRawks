/// @description Start of the game
if(room == rm_game) {
	// Spawn asteroids and enemies
	spawn_off_camera(obj_asteroid, 40);
	spawn_off_camera(obj_raider, 12);
	spawn_off_camera(obj_brute, 20);
	spawn_off_camera(obj_hunter, 5);
	
	//if(audio_is_playing(mscBurning)) {
	//	audio_stop_sound(mscBurning);
	//}
	//audio_play_sound(mscBurning, 2, true);
	
	alarm[0] = 60;
}