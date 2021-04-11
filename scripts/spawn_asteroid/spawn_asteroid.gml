function spawn_asteroid() {
	if (instance_number(obj_asteroid) <= global.asteroids * 1.5 and global.asteroids != global.destroyedAsteroids) {
		spawn_off_camera(obj_asteroid, 1);
	}
}