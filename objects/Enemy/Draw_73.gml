/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_color(c_white);
//if pathPossible {
path_set_kind(path, 1);
draw_path(path, x, y, 0);//};
//draw_set_alpha(0.2);
//mp_grid_draw(global.grid);
draw_text(x,y,string(enemy_speed));

draw_bar(x - 32, y - 32, 64, 16, 1, c_green, c_white, 100, self.health);