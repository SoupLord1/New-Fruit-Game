/// @description Insert description here
// You can write your code in this editor


aim_dir = point_direction(x, y, mouse_x, mouse_y);

x = Player.x+ lengthdir_x(bowDis, aim_dir);
y = Player.y + lengthdir_y(bowDis, aim_dir);

image_angle = aim_dir;


if mouse_check_button(mb_left) and canFire and global.arrows > 0{
	global.arrows -= 1;
	visible = 1;
	instance_create_layer(x, y, "Players", obj_arrow);
	canFire = false;
	alarm[0] = fireRate;
}
