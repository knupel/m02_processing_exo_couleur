void setup() {
	size(640,480);
	background(0);
	colorMode(HSB,360,100,100);
	chose(width/2, height/2, height/2, 100);
}

void draw() {
}

void mousePressed() {
	background(0);
	chose(width/2, height/2, random(20, height/2), random(50,500));
}

float inc = 0;
void chose(float pos_x, float pos_y, float rayon, float num) {
	float ligne = 0;
	while(ligne < num) {
		ligne++;
		float direction = map(ligne,0,num,0,2*PI);
		float x = sin(direction);
		float y = cos(direction);
		float r = 0;
		inc += 0.01;
		float temp_rayon = noise(inc) * rayon;
		int c = couleur(direction);
		while(r < temp_rayon) {
			set(int(x*r+pos_x) ,int(y*r+pos_y),c);
			r++;
		}
	} 
}

int couleur(float direction) {
	float hue = map(direction, 0, 2 *PI, 0, 360);
	return color(hue,100,100);
}
