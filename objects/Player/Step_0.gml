/// @description Insert description here
// You can write your code in this editor

//movement controls

if keyboard_check(ord("A")) {x -= player_speed;};
if keyboard_check(ord("D")) {x += player_speed;};
if keyboard_check(ord("W")) {y -= player_speed;};
if keyboard_check(ord("S")) {y += player_speed;};
if keyboard_check(ord("R")) {room_restart();};

//walls
if x < 0 {x=0;};
if x > window_get_width() - player_size[0] {x=window_get_width() - player_size[0];};
if y < 0 {y=0;};
if y > window_get_height() - player_size[1] {y=window_get_height() - player_size[1];};
