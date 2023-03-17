/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_bow) {instance_destroy(obj_bow);};
if instance_exists(obj_sword) {instance_destroy(obj_sword);};
if global.currentWeapon = "sword" {instance_create_layer(x,y,"Players", obj_sword);};
else if global.currentWeapon = "bow" {instance_create_layer(x,y, "Players", obj_bow);};
else {global.currentWeapon = choose("bow", "sword");};
player_speed = 5;
player_size = [64, 64];
maxHealth = 100;
health = maxHealth;
damage_delay = 0;
canChangeWeapon = true;
canTakeSwordDamage = true;
