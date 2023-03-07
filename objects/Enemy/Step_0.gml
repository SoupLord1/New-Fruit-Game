/// @description Insert description here
// You can write your code in this editor




//mp_linear_path(Follow_Path, mouse_x - player_size[0]/2, mouse_y - player_size[1]/2, 1, false);

self.path = path_add();

disToPlayer = distance_to_object(Player);

if (mp_grid_path(global.grid, path, x, y, Player.x, Player.y, irandom(1)) and disToPlayer > 10 and disToPlayer < 300) {
	path_set_kind(path, 1);
	pathPossible = 1;
	path_start(path, 5, path_action_stop, 0);
}
else { pathPossible = 0; path_end(); };

