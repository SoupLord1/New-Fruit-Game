/// @description Insert description here
// You can write your code in this editor
if canTakeSwordDamage and obj_sword.visible {self.health -= 50; canTakeSwordDamage = false; alarm[0] = obj_sword.attackRate;};
