//TODO:
// - Determine starting coordinates
// - Decide how to determine starting velocity
private PVector pos = new PVector(0, 0);
private PVector vel = new PVector(0, 0);
private final int SIZE = 10;

class Ball {

  void show() {
    ellipse(pos.x, pos.y, SIZE, SIZE);
  }

  void update() {
    //TODO:
    //Write code to move ball in its direction (vel.x, vel.y)
  }

  float getX() {
    return pos.x;
  }

  float getY() {
    return pos.y;
  }

  void setX(float x) {
    pos.x = x;
  }

  void setY(float y) {
    pos.y = y;
  }

  float getVX() {
    return vel.x;
  }

  float getVY() {
    return vel.y;
  }

  void setVX(float vx) {
    vel.x = vx;
  }

  void setVY(float vy) {
    vel.y = vy;
  }
}