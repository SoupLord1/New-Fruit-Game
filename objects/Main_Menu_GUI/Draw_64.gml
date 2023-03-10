/// @description Insert description here
// You can write your code in this editor


// selections

//backfill
var buttonsepdis = 125;

draw_set_alpha(0.8);
draw_set_color(c_white);
if mouse_x > selections[0] and mouse_x < selections[2] and mouse_y > selections[1] and mouse_y < selections[3]{
	draw_set_color(c_gray);
	if mouse_check_button_pressed(mb_left) { room_goto(Level1);};
}
draw_rectangle(selections[0], selections[1], selections[2], selections[3], false);
draw_set_color(c_white);
if mouse_x > selections[0] and mouse_x < selections[2] and mouse_y > selections[1] + buttonsepdis and mouse_y < selections[3] + buttonsepdis{ draw_set_color(c_gray); };
draw_rectangle(selections[0], selections[1] + buttonsepdis, selections[2], selections[3] + buttonsepdis, false);
draw_set_color(c_white);
if mouse_x > selections[0] and mouse_x < selections[2] and mouse_y > selections[1] + buttonsepdis * 2 and mouse_y < selections[3] + buttonsepdis * 2{ draw_set_color(c_gray); };
draw_rectangle(selections[0], selections[1] + buttonsepdis * 2, selections[2], selections[3] + buttonsepdis * 2, false);

//text
draw_set_font(Menu_Selection_Font);
draw_set_color(c_black);
draw_text(selections[0] + 95, selections[1] + 25, "Play Game");
draw_text(selections[0] + 110, selections[1] + 150, "Tutorial");
draw_text(selections[0] + 110, selections[1] + 275,"Settings");

