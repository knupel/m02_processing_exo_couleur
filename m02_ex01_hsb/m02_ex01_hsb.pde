void setup() {
  size(640,480);
  colorMode(HSB,360,100,100);
}

float couleur = 0;
float saturation = 0;
float luminosite = 0;
void draw() {
  noStroke();
  fill(couleur,saturation,luminosite);
  rect(0,0,width,height);
}

void keyPressed() {
  if(key == 'c') {
    couleur = random(360);
  }
  
  if(key == 's') {
    saturation = random(100);
  }
  
  if(key == 'l') {
    luminosite = random(100);
  }
}
