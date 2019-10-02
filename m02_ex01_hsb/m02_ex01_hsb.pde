float hue = 0;
float saturation = 100;
float brightness = 100;
void setup() {
	size(640,480);
	colorMode(HSB,360,100,100);
	background(hue,saturation,brightness);
}

void draw() {
	background(0,0,width,height);
}

void keyPressed() {
	if(key == 'h') {
		hue = random(360);
	}
	if(key == 's') {
		saturation = random(100);
	} 
	if(key == 'b') {
		brightness= random(100);
	}
}
