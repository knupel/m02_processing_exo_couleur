void setup() {
  size(640,480);
}
float rouge = 0;
float vert = 0;
float bleu = 0;
void draw() {
  noStroke();
  fill(rouge,vert,bleu);
  rect(0,0,width,height);
}

void mousePressed() {
  rouge = random(255);
  vert = random(255);
  bleu = random(255);
}
