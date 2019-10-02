void setup() {
	size(640,480);
	colorMode(HSB,360,100,100);
	background(0);
	disque(width/2, height/2, height/2, 12);
}

void draw() {
}

void mousePressed() {
	background(0);
	disque(width/2, height/2, random(20, height/2), random(50,500));
}

void disque(float pos_x, float pos_y, float rayon, float num) {
	float ligne = 0;
	while(ligne < num) {
		ligne++;
		float direction = map(ligne,0,num,0,2*PI);
		float x = sin(direction);
		float y = cos(direction);
		float r = 0;
		int c = color(random(360),100,100);
		while(r < rayon) {
			set(int(x*r+pos_x) ,int(y*r+pos_y),c);
			r++;
		}
	} 
}
