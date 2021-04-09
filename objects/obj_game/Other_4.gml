/// @description Start of the game
if(room == rm_game) {
	// Spawn asteroids and enemies
	spawn_off_camera(obj_asteroid, 40);
	spawn_off_camera(obj_raider, 12);
	spawn_off_camera(obj_brute, 20);
	spawn_off_camera(obj_hunter, 5);
	
	alarm[0] = 60;
}