/// @description Initialize powerup

image_index = irandom_range(0, image_number - 1);
image_blend = c_green;
alarm[0] = 7 * room_speed; // How long the powerup will stay before destroying itself
image_speed = 0; // Stop animating