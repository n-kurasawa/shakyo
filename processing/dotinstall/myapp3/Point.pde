class Point {
  float x;
  float y;
  float z;
  float targetX;
  float targetY;
  float targetZ;
  float radius;
  
  Point() {
    setTarget();
    x = targetX;
    y = targetY;
    z = targetZ;
  }
  
  void setTarget() {
    if (random(2) < 1) {
      radius = 150;
    } else {
      radius = 75;
    }      
    float phi = random(TWO_PI);
    float unitZ = random(-1, 1);
    targetX = radius * sqrt(1 - unitZ * unitZ) * cos(phi);
    targetY = radius * sqrt(1 - unitZ * unitZ) * sin(phi);
    targetZ = radius * unitZ;
  }
  
  void update() {
    if (frameCount % 120 == 0) {
      setTarget();
    }
    x += (targetX - x) * 0.05;
    y += (targetY - y) * 0.05;
    z += (targetZ - z) * 0.05;
  }
  
  void display() {
    stroke(0);
    strokeWeight(3);
    point(x, y, z);
  }

}