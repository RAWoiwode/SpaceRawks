/// @description 
instance_destroy();
score += 10;
audio_play_sound(snd_die, 1, false);
var _xx = x, _yy = y;

if(irandom_range(0, 5) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);
}
	
if(sprite_index == spr_asteroid_large) {
	global.cameraShake = 4;
	
	with(obj_particles) {
		part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 15);	
	}
	repeat(2) {
		var asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		asteroid.sprite_index = spr_asteroid_med;
	}
} else if(sprite_index == spr_asteroid_med) {
	global.cameraShake = 2;
	
	with(obj_particles) {
		part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 9);
	}
	repeat(2) {
		var asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
		asteroid.sprite_index = spr_asteroid_small;
	}
} else {
	global.cameraShake = 1;
	
	with(obj_particles) {
		part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 5);
	}
}