/// @description Insert description here
// You can write your code in this editor
draw_sprite_stretched(s_arrow, s_arrow, window_get_width() - 200, -10 , 128, 128);
draw_set_color(c_white);
if global.arrows > 99 {draw_text(window_get_width() - 290, 10, string(global.arrows));};
else if global.arrows > 9 {draw_text(window_get_width() - 250, 10, string(global.arrows));};
else {draw_text(window_get_width() - 200, 10, string(global.arrows));};
