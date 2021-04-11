function spawn_raider() {
	if (instance_number(obj_raider) <= global.raiders * 1.5 and global.raiders != global.destroyedRaiders) {
		spawn_off_camera(obj_raider, 1);
	}
}