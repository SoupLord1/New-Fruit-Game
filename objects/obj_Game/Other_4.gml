/// @description Insert description here
// You can write your code in this editor
var cell_size = 64;

global.grid = mp_grid_create(-64, -64, room_width/cell_size + 1, room_height/cell_size + 1, cell_size, cell_size);
mp_grid_add_instances(global.grid, Wall, 0);

