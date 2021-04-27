/// @description Start of the game
if(room == rm_game) {
	if (!levelStarted) {
		global.asteroids = 10;
		global.raiders = 8;
		global.brutes = 3;
		global.hunters = 5;
		spawn_off_camera(obj_asteroid, 1);
		spawn_off_camera(obj_raider, 1);
		spawn_off_camera(obj_brute, 1);
		spawn_off_camera(obj_hunter, 1);
		levelStarted = true
	}
	
	alarm[0] = 60;
}