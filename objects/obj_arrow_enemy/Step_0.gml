/// @description Insert description here
// You can write your code in this editor
if !self.collided {
	x = x + lengthdir_x(self.speed, self.aim_dir);
	y = y + lengthdir_y(self.speed, self.aim_dir);
}
else if self.readyToDispawn and !self.setDispawn {
	if !canFadeOut {self.setDispawn = true; alarm[0] = 1200;};
	if canFadeOut and fadeCooldown == 0 {
		image_alpha -= 0.1;
		self.setDispawn = false;
		fadeCooldown = 3;
	}
	if image_alpha == 0 {
		self.setDispawn = false;
		instance_destroy();
	}
}

if fadeCooldown > 0 {fadeCooldown -= 1;};