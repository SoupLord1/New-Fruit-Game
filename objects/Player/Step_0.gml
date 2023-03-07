/// @description Insert description here
// You can write your code in this editor

//movement controls

if keyboard_check(ord("A")) {x -= player_speed;};
if keyboard_check(ord("D")) {x += player_speed;};
if keyboard_check(ord("W")) {y -= player_speed;};
if keyboard_check(ord("S")) {y += player_speed;};
if keyboard_check(ord("R")) {room_restart();};

//wall collision
if x < + 32 { x = xprevious;};
if x > window_get_width() - 32 { x = xprevious;};
if y < + 32 { y = yprevious;};
if y > window_get_height() - 32 { y = yprevious;};