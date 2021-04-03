/// @description Look of laser
var length = 500;

draw_line_width_color(x, y, 
	x + lengthdir_x(length, direction),
	y + lengthdir_y(length, direction),
	4, image_blend, c_white
);

// Draw collision
var inst = collision_line(x, y, 
	x + lengthdir_x(length, direction),
	y + lengthdir_y(length, direction),
	obj_faction, false, false
);

// Laser hit an object
if(inst != noone) {
	if(inst.faction != faction) {
		with(inst) {
			if(!immuneToLaser) event_perform(ev_other, ev_user1);
		}
	}
}