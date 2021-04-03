///@description create_bullet
///@arg _direction
///@arg _speed
///@arg _faction
///@arg _creator
///@arg _bullet_instance

function initialize_bullet(_direction, _speed, _faction, _creator, _bullet_instance){
	with(_bullet_instance) {
		direction = _direction;
		// Change speed if bullet; Laser doesn't have speed
		if(object_index == obj_bullet) speed = _speed;
		faction = _faction;
		creator = _creator;
		
		// Determine bullet color
		if(faction == factions.ally) {
			image_blend = c_blue;
		} else if(faction == factions.enemy) {
			image_blend = c_red;
		}
		
	}
}