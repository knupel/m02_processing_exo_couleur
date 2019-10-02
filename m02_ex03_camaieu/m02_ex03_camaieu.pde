void setup() {
  size(640,480);
  colorMode(HSB,360,100,100);
  camaieu();
}

void draw() {
}

void mousePressed() {
  camaieu();
}


void camaieu() {
  int x = 0;
  int y = 0;
  int hue_ref = 0 ;
  int max = 40;
  float saturation = random(70,100);
  float brightness = random(30,60);
  while(x < width) {
    y = 0;
    while(y < height) {
      float offset = random(-max, max);
      float hue = hue_ref - offset;
      if(hue < 0) hue = g.colorModeX - hue;
      if(hue > g.colorModeX ) hue = hue - g.colorModeX;
      int colour = color(hue,saturation,brightness);
      set(x,y,colour);
      y++;
    }
    x++;
  }
}
