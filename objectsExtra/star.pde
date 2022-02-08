class Star {

  boolean hitEdge;

  color col;

  float size;

  PVector position;
  PVector velocity;

  Star(color _col, PVector _pos, PVector _vel) {
    col = _col;
    position = _pos;
    velocity = _vel;

    size = random(10, 100);
  }

  void run() {
    update();
    render();
  }

  void render() {
    fill(col);
    ellipse(position.x, position.y, size, size);
  }

  void update() {
    position.add(velocity);

    if (position.x < size / 2) {
      position.x = size / 2;
      velocity.x = 0;
      velocity.y = 0;
      hitEdge = true;
    }
    if (position.x > width - (size/2)) {
      position.x = width - (size / 2);
      velocity.x = 0;
      velocity.y = 0;
      hitEdge = true;
    }
    if (position.y > height - (size / 2)) {
      position.y = height - (size / 2);
      velocity.x = 0;
      velocity.y = 0;
      hitEdge = true;
    }
    if (position.y < size / 2) {
      position.y = size / 2;
      velocity.x = 0;
      velocity.y = 0;
      hitEdge = true;
    }
    if (hitEdge) {
      col = color(random(0, 255));
      if (size >= 50) {
        size = size - 1;
      } else {
        size = size - 0.5;
      }
    }
  }

  boolean isDead() {
    if (size <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
