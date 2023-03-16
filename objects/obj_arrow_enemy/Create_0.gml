/// @description Insert description here
// You can write your code in this editor
self.aim_dir = point_direction(x, y, Player.x, Player.y);
self.speed = 5;
self.image_angle = self.aim_dir;
self.direction = self.aim_dir;
depth = obj_bow_enemy.depth - 1;
self.collided = false;
self.readyToDispawn = false;
self.setDispawn = false;
fadeCooldown = 5;
canFadeOut = false;