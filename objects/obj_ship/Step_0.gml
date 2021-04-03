/// @description Ship Movement

if(keyboard_check(vk_left)) {
	image_angle += 5;
}

if(keyboard_check(vk_right)) {
	image_angle -= 5;
}

if(keyboard_check(vk_up)) {
	motion_add(image_angle, 0.025);
	if(speed > 4) speed = 4;
	
	// Particle FX
	exhaustCounter++;
	if(exhaustCounter >= 4) {
		var length = sprite_height * 0.4;
		var _xx = x - lengthdir_x(length, image_angle), _yy = y - lengthdir_y(length, image_angle);
		with(obj_particles) {
			part_particles_create(partSys, _xx, _yy, partTypeExhaust, 1);
		}
	}
}

if(keyboard_check_pressed(vk_space)) {
	create_bullet(image_angle, bulletSpeed, faction, id, guns);
}

move_wrap(true, true, sprite_width / 2);