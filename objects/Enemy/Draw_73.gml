/// @description Insert description here
// You can write your code in this editor

enemyHealth = (self.health / maxHealth) * 100;
draw_healthbar(x - 37, y - 35, x + 37, y - 45, enemyHealth, c_black, c_red, c_green, 0, true, true);

