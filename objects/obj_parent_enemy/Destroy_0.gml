/// @description Enemy destroy logic
check_sound(snd_die, 1, false);

// Particle FX
var _xx = x , _yy = y, _ib = image_blend;
with(obj_particles) {
	part_particles_create_color(partSys, _xx, _yy, partTypeShipDebris, _ib, 10);
}

switch(object_index) {
	case obj_raider: 
		score += 15;
		global.cameraShake = 4;
		break;
	case obj_hunter: 
		score += 30;
		global.cameraShake = 6;
		break;
	case obj_brute:
		score += 50;
		global.cameraShake = 8;
		break;
}

// Chance to drop powerup
if(irandom_range(0, 2) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);
}