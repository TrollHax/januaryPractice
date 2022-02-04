int[] x, y;

void setup() {
    size(20,60);
    background(255);

    x = new int[20];
    y = new int[20];

    for (int i = 0; i < x.length; i++) {
        x[i] = i;   
    }
    for (int i = 0; i < y.length; i++) {
        y[i] = (x[i] * 3);
    }
    for (int i = 0; i < 20; i++) {
        point(x[i], y[i]);
    }

}