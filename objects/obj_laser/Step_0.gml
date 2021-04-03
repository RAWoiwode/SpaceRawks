/// @description Laser logic
if(!instance_exists(obj_ship)) {
	instance_destroy();
	exit;
}

// Shoot out of player ship
x = creator.x;
y = creator.y;
direction = creator.image_angle;