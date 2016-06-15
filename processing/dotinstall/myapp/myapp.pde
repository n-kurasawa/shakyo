float radius = 150;

void setup() {
  size(640, 360, P3D);
  pixelDensity(displayDensity());
}

void draw() {
  background(255);
  translate(width/2, height/2, 0);
  
  for (int dPhi = 0; dPhi < 360; dPhi += 10) {
    float phi = radians(dPhi);
    float x = radius * cos(phi);
    float y = radius * sin(phi);
    
    stroke(0);
    strokeWeight(4);
    point(x, y, 0);
  }
}