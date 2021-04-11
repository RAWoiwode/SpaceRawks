function spawn_hunter() {
	if (instance_number(obj_hunter) <= global.hunters * 1.5 and global.hunters != global.destroyedHunters) {
		spawn_off_camera(obj_hunter, 1);
	}
}