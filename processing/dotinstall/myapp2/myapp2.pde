float radius = 150;
float dPhiStep = 0;
float dPhiStepVelocity = 0.05;

void setup() {
  size(640, 360, P3D);
  pixelDensity(displayDensity());
}

void draw() {
  background(255);
  translate(width/2, height/2, 0);
  rotateY(frameCount * 0.02);

  float lastX = 0;
  float lastY = 0;
  float lastZ = 0;

  for (float dTheta = 0, dPhi = 0; dTheta <= 180; dTheta++, dPhi += dPhiStep) {
    float theta = radians(dTheta);
    float phi = radians(dPhi);

    float x = radius * sin(theta) * cos(phi);
    float y = radius * sin(theta) * sin(phi);
    float z = radius * cos(theta);

    stroke(0);
    if (lastX != 0) {
      strokeWeight(1);
      line(lastX, lastY, lastZ, x, y, z);
    }
    strokeWeight(8);
    point(x, y, z);

    lastX = x;
    lastY = y;
    lastZ = z;
  }
  dPhiStep += dPhiStepVelocity;

}
