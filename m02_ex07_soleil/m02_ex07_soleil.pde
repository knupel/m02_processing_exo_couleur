void setup() {
	size(640,480);
	colorMode(HSB,360,100,100);
	background(0);
	soleil(width/2, height/2, height/2, 12);
}

void draw() {
}

void mousePressed() {
	background(0);
	soleil(width/2, height/2, random(20, height/2), random(3,1000));
}

float inc = 0;
void soleil(float pos_x, float pos_y, float rayon, float num) {
	float ligne = 0;
	while(ligne < num) {
		ligne++;
		float direction = map(ligne,0,num,0,2*PI);
		float x = sin(direction);
		float y = cos(direction);
		float r = 0;
		inc = abs(sin(ligne)) ;
		float temp_rayon = noise(inc) * rayon;
		while(r < temp_rayon) {
			int c = couleur(inc, r, temp_rayon);
			set(int(x*r+pos_x) ,int(y*r+pos_y),c);
			r++;
		}
	} 
}

int couleur(float direction, float dist, float dist_max) {
	float hue = map(direction, 0, 2 *PI, 0, 360);
	float saturation = map(dist,0,dist_max,0,100);
	return color(hue,saturation,100);
}
