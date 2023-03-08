// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_bar (x1, y1, w1, h1, borderThickness, barColor, borderColor, total, outOfTotal, isvertical) {
	draw_set_color(borderColor);
	draw_rectangle(x1, y1, x1 + w1, y1 + h1, false);
	var topForVert = borderThickness;
	if isvertical {
		//vertical is completely broken
		newW = w1;
		if total - outOfTotal <= total {
			newH = h1 / total * (total - outOfTotal);
		}
		else {
			var newH = h1;
		}
		draw_set_color(barColor);
		draw_rectangle(x1 + borderThickness, y1 + newH + borderThickness, x1 + w1 - borderThickness, y1 + h1 - borderThickness, false);
	}
	else {
		var newH = h1;
		if outOfTotal > 0 {
			var newW = w1 / total * outOfTotal;
		}
		else {
			newW = 0;
		}
		draw_set_color(barColor);
		draw_rectangle(x1 + borderThickness, y1 + borderThickness, x1 + newW - borderThickness, y1 + h1 - borderThickness, false);
	}
	
}