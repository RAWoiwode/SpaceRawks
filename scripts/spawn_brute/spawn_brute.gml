function spawn_brute() {
	if (instance_number(obj_brute) <= global.brutes * 1.5 and global.brutes != global.destroyedBrutes) {
		spawn_off_camera(obj_brute, 1);
	}
}