/// @description Insert description here
// You can write your code in this editor
playerHealth = (health / Player.maxHealth) * 100;
draw_healthbar(x - 37, y - 35, x + 37, y - 45, playerHealth, c_black, c_red, c_green, 0, true, true);

