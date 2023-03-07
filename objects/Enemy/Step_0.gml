/// @description Insert description here
// You can write your code in this editor

var cell_size = 64;

grid = mp_grid_create(0, 0, room_width/cell_size, room_height/cell_size, cell_size, cell_size);
mp_grid_add_instances(grid, Wall, 0);


//mp_linear_path(Follow_Path, mouse_x - player_size[0]/2, mouse_y - player_size[1]/2, 1, false);
pathPossible = 0;
self.path = path_add();
mp_grid_add_cell(grid, x, y);

if mp_grid_path(grid, path, x, y, Player.x, Player.y, 1) {
	path_set_kind(path, 1);
	pathPossible = 1;
	path_start(path, 5, path_action_stop, 0);
}

