/// @description Insert description here
// You can write your code in this editor

//movement controls

if keyboard_check(ord("A")) {x -= player_speed;};
if keyboard_check(ord("D")) {x += player_speed;};
if keyboard_check(ord("W")) {y -= player_speed;};
if keyboard_check(ord("S")) {y += player_speed;};
if keyboard_check_released(ord("R")) {room_restart();};
if keyboard_check(vk_space) and canChangeWeapon {
	if currentWeapon == "sword" {
		instance_destroy(obj_sword); 
		instance_create_depth(x, y, Player.depth - 1, obj_bow);
		currentWeapon = "bow"; 
	}
	else if currentWeapon == "bow" {
		instance_destroy(obj_bow); 
		instance_create_depth(x, y, Player.depth - 1, obj_sword);
		currentWeapon = "sword"; 
	}
	canChangeWeapon = false;
	alarm[0] = 30;
}

//wall collision
if x < + player_size[0]/2 { x = xprevious;};
if x > room_width - 32 { x = xprevious;};
if y < + player_size[1]/2 { y = yprevious;};
if y > room_height - 32 { y = yprevious;};

//if health <= 10 {instance_destroy(); room_restart();};

if damage_delay > 0 {damage_delay--;};