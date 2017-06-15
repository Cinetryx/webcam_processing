import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  cam = new Capture(this, width, height);
  cam.start();
  ellipseMode(CENTER);
}

void draw() {
  noStroke();
  background(255);
  for (int i = 0; i < width; i = i+20) {
    for (int j = 0; j < height; j = j+20) {
      fill(cam.get(i, j) * 4);
      ellipse(i, j, 20, 20);
    }
  }

  if (cam.available() == true) {
    cam.read();
  }
  //image(cam, 0, 0);
}

