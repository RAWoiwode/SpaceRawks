/// @description 

if(!instance_exists(obj_ship)) {
	instance_destroy();
	exit;
}

x = creator.x;
y = creator.y;
direction = creator.image_angle;