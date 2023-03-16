

x = nearestEnemy.x;
y = nearestEnemy.y;

if distance_to_object(Player) < 150 and !isAttacking and path_get_length(nearestEnemy.path) < 400 and  path_get_length(nearestEnemy.path) > 0  {
	aim_dir = point_direction(x, y, Player.x, Player.y);
	starting_dir = aim_dir - 90;
	visible = 1;
	isAttacking = true;
	alarm[0] = attackRate;
}


if !isAttacking {
	aim_dir = point_direction(x, y, Player.x, Player.y);
	x = Player.x + lengthdir_x(swordDis, aim_dir);
	y = Player.y + lengthdir_y(swordDis, aim_dir);
	image_angle = aim_dir - 90;
}
else {
	if starting_dir < aim_dir + 90 {starting_dir += 10;};
	else { visible = 0;};
	x = nearestEnemy.x + lengthdir_x(swordDis, starting_dir);
	y = nearestEnemy.y + lengthdir_y(swordDis, starting_dir);
	image_angle = starting_dir - 90;

}


