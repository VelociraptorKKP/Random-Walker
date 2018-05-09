Walker w;

void setup() {
  size(640, 480);
  background(0);
  w = new Walker(15);
}

void draw() {
  w.step();
  w.show();
}
