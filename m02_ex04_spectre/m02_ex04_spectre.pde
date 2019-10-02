void setup() {
	size(640,480);
	colorMode(HSB,360,100,100);
	spectre(10);
}

void draw() {
}

void mousePressed() {
	spectre(random(g.colorModeX));
}

void spectre(float hue) {
	if(hue < 0) hue = g.colorModeX - hue;
	if(hue > g.colorModeX ) hue = hue - g.colorModeX;
	int x = 0;
	int y = 0;
	while(x < width) {
		y = 0;
		while(y < height) {
			float sat = map(x,0,width,100,0);
			float bright = map(y,0,height,100,0);
			int c = color(hue,sat,bright);
			set(x,y,c);
			y++;
		}
		x++;
	}
}
