float[] y, x;


void setup() {
  size(1280, 720);
  background(255);
  strokeWeight(2);

  x = new float[width];

  for (int i = 0; i < x.length; i++) {
    x[i] = i;
  }

  y = f(x);

  println(x);
  println(y);

  for (int i = 0; i < x.length; i++) {
    point(x[i], height - y[i]);
  }
}

float func(float x) {
  return 0.1 * x;
}

float[] f(float[] x) {
  float[] y = new float[x.length];
  for (int i = 0; i < x.length; i++) {
    y[i] = func(x[i]);
  }

  return y;
}
