/// @description Insert description here
// You can write your code in this editor

if x < 0 or x > room_width or y < 0 or y > room_height {
	self.collided = true;
	speed = 0;
	self.readyToDispawn = true;
}