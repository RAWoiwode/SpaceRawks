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
}

if(keyboard_check_pressed(vk_space)) {
	create_bullet(image_angle, bulletSpeed, faction, id, guns);
}

move_wrap(true, true, sprite_width / 2);