/// @description Insert description here
// You can write your code in this editor
nearestEnemy = instance_nearest(x, y, Enemy);
swordDis = 64;
attackRate = 30;
depth = nearestEnemy.depth - 1;
isAttacking = false;
visible = 0;
aim_dir = point_direction(x, y, Player.x, Player.y);