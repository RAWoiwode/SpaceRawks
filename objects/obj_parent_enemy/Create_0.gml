/// @description Initialize enemy
event_inherited();

speed = 1;
direction = random_range(0, 359);
image_angle = direction;

HP = 1;
originalSpeed = speed;
bulletCounter = 0;
originalBulletCounter = bulletCounter;
exhaustCounter = 0;