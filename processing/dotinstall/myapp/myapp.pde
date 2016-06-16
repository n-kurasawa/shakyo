float radius = 150;

void setup() {
  size(640, 360, P3D);
  pixelDensity(displayDensity());
}

void draw() {
  background(255);
  translate(width/2, height/2, 0);
  rotateY(frameCount * 0.02);

  for (int dTheta = 0; dTheta <= 180; dTheta += 10) {
    float theta = radians(dTheta);
    float z = radius * cos(theta);
    float r = radius * sin(theta);
    drawCircle(z, r);
  }

}

void drawCircle(float z, float r) {
  for (int dPhi = 0; dPhi < 360; dPhi += 10) {
    float phi = radians(dPhi);
    float x = r * cos(phi);
    float y = r * sin(phi);
    stroke(0);
    strokeWeight(4);
    point(x, y, z);
  }
}