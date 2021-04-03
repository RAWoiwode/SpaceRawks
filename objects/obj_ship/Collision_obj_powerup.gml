/// @description Check which powerup 

with(other) {
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type) {
	case powerups.invincible:
		invincible = true;
		alarm[1] = 8 * room_speed;
		break;
	default:
		guns = powerup_type;
		alarm[0] = 7 * room_speed;
		break;
}