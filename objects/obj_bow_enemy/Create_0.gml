/// @description Insert description here
// You can write your code in this editor
canFire = true;
fireRate = 30;
bowDis = 10;
visible = 0;
nearestEnemy = instance_nearest(x, y, Enemy);
depth = nearestEnemy.depth - 1;