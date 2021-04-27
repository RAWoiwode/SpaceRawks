/// @description Take Damage
HP -= 1;
if(HP <= 0) {
	instance_destroy();
	if (object_index == obj_raider and 
		global.destroyedRaiders != global.raiders) global.destroyedRaiders++;
	if (object_index == obj_brute and 
		global.destroyedBrutes != global.brutes) global.destroyedBrutes++;
	if (object_index == obj_hunter and 
		global.destroyedHunters != global.hunters) global.destroyedHunters++;
}

if (check_level_completed()) {
	instance_create_layer(0, 0, "Instances", objLevelTransition);
}