float[] f, x;
float y, x_;

void setup() {
  size(1280, 720);
  background(255);
  strokeWeight(5);

  f = new float[1000];
  x = new float[100000];

  for (float i = 0; i < x.length; i++) {
    x_ = x_ + 0.1;
    y = f(i);
    
    point(x_, y);
  }
}

float f(float x) {
  return height-(x*x);
}
