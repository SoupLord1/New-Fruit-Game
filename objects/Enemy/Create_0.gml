/// @description Insert description here
// You can write your code in this editor
timer = irandom_range(0, 100);
path = path_add();
enemy_speed = irandom_range(4, 5);
allowedDisToPlayer = 30;
self.health = 100;
canTakeSwordDamage = true;
enemyAlerted = false;
randomWeapon = irandom_range(1, 4);

switch (randomWeapon) {
    case 4:
        instance_create_layer(x, y, "Players", obj_bow_enemy);
		weapon = instance_nearest(x, y, obj_bow_enemy);
        break;
    default:
        instance_create_layer(x, y, "Players", obj_sword_enemy);
		weapon = instance_nearest(x, y, obj_sword_enemy);
        break;
}



