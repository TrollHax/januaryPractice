class Star {

  color col;

  float size;

  PVector position;
  PVector velocity;

  Star(color _col, PVector _pos, PVector _vel) {
    col = _col;
    position = _pos;
    velocity = _vel;

    size = random(10, 30);
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
      velocity.x = velocity.x * (-1);
    }
    if (position.x > width - (size / 2)) {
      position.x = width - (size / 2);
      velocity.x = velocity.x * (-1);
    }
    if (position.y > height - (size / 2)) {
      position.y = height - (size / 2);
      velocity.y = velocity.y * (-1);
    }
    if (position.y < size / 2) {
      position.y = size / 2;
      velocity.y = velocity.y * (-1);
    }

    size = size - 0.1;
  }

  boolean isDead() {
    if (size <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
