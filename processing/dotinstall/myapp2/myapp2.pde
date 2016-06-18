float radius = 150;

void setup() {
  size(640, 360, P3D);
  pixelDensity(displayDensity());
}

void draw() {
  background(255);
  translate(width/2, height/2, 0);
  rotateY(frameCount * 0.02);

  for (int dTheta = 0, dPhi = 0; dTheta <= 180; dTheta++, dPhi += 10) {
    float theta = radians(dTheta);
    float z = radius * cos(theta);
    float phi = radians(dPhi);
    float x = radius * sin(theta) * cos(phi);
    float y = radius * sin(theta) * sin(phi);
    stroke(0);
    strokeWeight(4);
    point(x, y, z);
  }
}