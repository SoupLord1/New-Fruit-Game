/// @description Insert description here
// You can write your code in this editor
//draws background
draw_set_color(c_gray);
draw_rectangle(0, 0 , room_width, room_height, false);

//draws buttons
draw_set_color(c_ltgray);
if mouse_x > room_width/2 - 200 and mouse_x < room_width/2 + 200 and mouse_y > 300 and mouse_y < 400 {
	draw_set_color(c_dkgray);
	if mouse_check_button(mb_left) {room_goto(Shop); };
}
draw_rectangle(room_width/2 - 200, 300, room_width/2 + 200, 400, false);
draw_set_color(c_ltgray);
if mouse_x > room_width/2 - 200 and mouse_x < room_width/2 + 200 and mouse_y > 450 and mouse_y < 550 {
	draw_set_color(c_dkgray);
	if mouse_check_button(mb_left) {room_goto(global.currentLevel); };
}
draw_rectangle(room_width/2 - 200, 450, room_width/2 + 200, 550, false);

//draws text
draw_set_color(c_black);
draw_set_font(Menu_Selection_Font);
draw_text(room_width/2 - 70, 325, "SHOP");
draw_text(room_width/2 - 160, 475, "NEXT LEVEL");