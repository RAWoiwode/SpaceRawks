/// @description Drop powerup
if(irandom_range(0, 5) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);
}