class Walker {
  float x;
  float y;
  float prevX = width / 2;
  float prevY = height /2;
  float speed;

  Walker(int s) {
    this.speed = s;
    this.x = width / 2;
    this.y = height /2;
  }

  void step() {
    int ran = floor(random(0, 4));
    switch(ran) {
    case 0: 
      {
        x += speed;
        break;
      }
    case 1: 
      {
        x -= speed;
        break;
      }
    case 2: 
      {
        y += speed;
        break;
      }
    case 3: 
      {
        y -= speed;
        break;
      }
    }
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void show() {
    stroke(random(255), random(255), random(255));
    strokeWeight(random(1, 10));
    line(x, y, prevX, prevY);
    prevX = x;
    prevY = y;
    delay(500);
  }
}
