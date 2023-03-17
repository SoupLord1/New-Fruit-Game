/// @description Insert description here
// You can write your code in this editor




//mp_linear_path(Follow_Path, mouse_x - player_size[0]/2, mouse_y - player_size[1]/2, 1, false);



disToPlayer = distance_to_object(Player);


if timer = 0 {
	if (mp_grid_path(global.grid, path, x, y, Player.x, Player.y, irandom(1)) and disToPlayer > allowedDisToPlayer and path_get_length(path) < 400 or enemyAlerted and disToPlayer > allowedDisToPlayer) {
		enemyAlerted = true;
		path_set_kind(path, 1);
		path_start(path, enemy_speed, path_action_stop, 0);
	}
	else {path_end();};
	timer = 15;
}
else {
	timer--;
	if (disToPlayer < allowedDisToPlayer or path_get_length(path) > 400) {
		timer = 0;
	}
}

if self.health <= 0 {instance_destroy(weapon); instance_destroy();};

if x > room_width {x--;};
if x < 0 {x++;};
if y > room_height {y--;};
if y < 0 {y++;};