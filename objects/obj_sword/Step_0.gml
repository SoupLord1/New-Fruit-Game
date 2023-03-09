/// @description Insert description here
// You can write your code in this editor

if mouse_check_button(mb_left) and !isAttacking{
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	starting_dir = aim_dir - 90;
	visible = 1;
	isAttacking = true;
	alarm[0] = attackRate;
}


if !isAttacking {
	aim_dir = point_direction(x, y, mouse_x, mouse_y);
	x = Player.x + lengthdir_x(swordDis, aim_dir);
	y = Player.y + lengthdir_y(swordDis, aim_dir);
	image_angle = aim_dir - 90;
}
else {
	if starting_dir < aim_dir + 90 {starting_dir += 10;};
	else { visible = 0;};
	x = Player.x + lengthdir_x(swordDis, starting_dir);
	y = Player.y + lengthdir_y(swordDis, starting_dir);
	image_angle = starting_dir - 90;

}




