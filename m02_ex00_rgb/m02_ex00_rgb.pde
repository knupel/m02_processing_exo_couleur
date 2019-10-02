void setup() {
  size(640,480);
}
float red = 0;
float green = 0;
float blue = 0;
void draw() {
  background(red,green,blue);
}

void mousePressed() {
  red = random(255);
  green = random(255);
  blue = random(255);
}
