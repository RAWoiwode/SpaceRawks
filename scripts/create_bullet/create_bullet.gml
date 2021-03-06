/// @description Create Bullet
/// @arg _direction
/// @arg _speed
/// @arg _faction
/// @arg _creator
/// @arg [_gun_type]

function create_bullet(_direction, _speed, _faction, _creator, _gun_type){
	if 0 return argument[0]; // Get rid of warning
	
	if (_gun_type == undefined) _gun_type = -1;
	
	// Choose gun type
	switch(_gun_type) {
		case powerups.three_bullets:
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(_direction, _speed, _faction, _creator, inst);
		case powerups.two_bullets:
			var _sep = 12; // How far to be from the ship center line
			check_sound(snd_zap, 1, false);
			
			var inst = instance_create_layer(
				x + lengthdir_x(_sep, _direction + 90), 
				y + lengthdir_y(_sep, _direction + 90), 
				"Instances", obj_bullet
			);
			initialize_bullet(_direction, _speed, _faction, _creator, inst);
			
			var inst = instance_create_layer(
				x + lengthdir_x(_sep, _direction - 90), 
				y + lengthdir_y(_sep, _direction - 90), 
				"Instances", obj_bullet
			);
			initialize_bullet(_direction, _speed, _faction, _creator, inst);
			break;
		case powerups.four_bullets:
			var _sep = 6, bullet_angle;
			check_sound(snd_zap, 1, false);
			for(i = 0; i < 4; i++) {
				bullet_angle = _direction + (i * 90);
				var inst = instance_create_layer(
					x + lengthdir_x(_sep, bullet_angle), 
					y + lengthdir_y(_sep, bullet_angle), 
					"Instances", obj_bullet
				);
				initialize_bullet(bullet_angle, _speed, _faction, _creator, inst);
			}
			break;
		case powerups.star_shot:
			var _sep = 6, bullet_angle;
			check_sound(snd_zap, 1, false);
			for(i = 0; i < 8; i++) {
				bullet_angle = _direction + (i * 45);
				var inst = instance_create_layer(
					x + lengthdir_x(_sep, bullet_angle), 
					y + lengthdir_y(_sep, bullet_angle), 
					"Instances", obj_bullet
				);
				initialize_bullet(bullet_angle, _speed, _faction, _creator, inst);
			}
			break;
		case powerups.laser:
			check_sound(snd_laser, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_laser);
			initialize_bullet(_direction, _speed, _faction, _creator, inst);
			break;
		default:
			check_sound(snd_zap, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(_direction, _speed, _faction, _creator, inst);
			break;
	}
	
}
