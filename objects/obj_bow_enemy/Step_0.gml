/// @description Insert description here
// You can write your code in this editor
aim_dir = point_direction(x, y,Player.x, Player.y);

x = nearestEnemy.x + lengthdir_x(bowDis, aim_dir);
y = nearestEnemy.y + lengthdir_y(bowDis, aim_dir);

image_angle = aim_dir;


if distance_to_object(Player) < 400 and path_get_length(nearestEnemy.path) < 400 and canFire and global.arrows > 0{
	visible = 1;
	instance_create_layer(x, y, "Players", obj_arrow_enemy);
	canFire = false;
	alarm[0] = fireRate;
}
