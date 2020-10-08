class Waves {
  
  float LPos; 
  float RPos;
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float x4;
  float y4;

  Waves(float left, float right) {
    LPos = left;
    RPos = right;  
    positionwave();
  }

  void positionwave() { 
    x1 = random(LPos,RPos);
    y1 = random(-1000, -250);
    x2 = x1 + 30;
    y2 = y1+240;
    x3 = x2 + 30;
    y3 = y2;
    x4 = x1 + 90;
    y4 = y1;
  }

  void down() {
    y1 = y1 + 5;
    y2 = y2 + 5;
    y3 = y3 + 5;
    y4 = y4 + 5;

    if (y1 > height) {
      positionwave();
    }
  }

  void show() {
    noFill();
    stroke(#FFFFFF);
    strokeWeight(4);
    curve(x1, y1, x2, y2, x3, y3, x4, y4);
  }
}
