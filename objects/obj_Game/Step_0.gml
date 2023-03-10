/// @description Insert description here
// You can write your code in this editor
if instance_number(Enemy) == 0 and room != Main_Menu and room != InbetweenLevel_Menu and room != Shop {
	if global.currentLevel == Level1 { global.currentLevel = Level2;};
	else if global.currentLevel == Level2 { global.currentLevel = Level3;};
	else if global.currentLevel == Level3 { global.currentLevel = Level4;};
	else if global.currentLevel == Level4 { global.currentLevel = Level5;};
	else if global.currentLevel == Level5 { global.currentLevel = Level6;};
	else if global.currentLevel == Level6 { global.currentLevel = Level7;};
	else if global.currentLevel == Level7 { global.currentLevel = Level8;};
	else if global.currentLevel == Level8 { global.currentLevel = Level9;};
	else if global.currentLevel == Level9 { global.currentLevel = Level10;};
	else if global.currentLevel == Level10 { global.currentLevel = Main_Menu;};
	
	room_goto(InbetweenLevel_Menu);
}