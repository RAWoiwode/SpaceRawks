/// @description 
event_inherited();

image_index = HP -1;

if(!instance_exists(obj_ship)) exit;

// If player is inside range
if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250) {
	// Turn to look at player
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	speed += 0.01;
	if(speed > 3) speed = 3;
} else { // otherwise, no change
	speed = lerp(speed, originalSpeed, 0.1);
}