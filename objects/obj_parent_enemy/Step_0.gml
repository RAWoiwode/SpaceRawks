/// @description 
// Particle FX
exhaustCounter++;
if(exhaustCounter >= 4) {
	var length = sprite_height * 0.4;
	var _xx = x - lengthdir_x(length, image_angle), _yy = y - lengthdir_y(length, image_angle);
	with(obj_particles) {
		part_particles_create(partSys, _xx, _yy, partTypeEnemyExhaust, 1);
	}
}