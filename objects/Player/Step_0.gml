/// @description Insert description here
// You can write your code in this editor

//movement controls

if keyboard_check(ord("A")) {x -= player_speed;};
if keyboard_check(ord("D")) {x += player_speed;};
if keyboard_check(ord("W")) {y -= player_speed;};
if keyboard_check(ord("S")) {y += player_speed;};
if keyboard_check(ord("R")) {room_restart();};

//wall collision
if x < + player_size[0]/2 { x = xprevious;};
if x > window_get_width() - 32 { x = xprevious;};
if y < + player_size[1]/2 { y = yprevious;};
if y > window_get_height() - 32 { y = yprevious;};

if health <= 0 {room_restart();};