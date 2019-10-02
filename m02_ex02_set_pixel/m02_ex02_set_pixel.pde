void setup() {
  size(640,480);
  int x = 0;
  int y = 0;
  while(x < width) {
    y = 0;
    while(y < height) {
      y++;
      int c = color(random(255),random(255),random(255));
      set(x,y,c);
    }
    x++;
  }
}
