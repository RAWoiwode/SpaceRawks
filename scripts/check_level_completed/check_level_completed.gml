// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_level_completed(){
	return (global.asteroids == global.destroyedAsteroids = 0 and
		global.raiders == global.destroyedRaiders and global.brutes == global.destroyedBrutes and
		global.hunters == global.destroyedHunters)
}