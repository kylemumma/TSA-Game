Ball ball = new Ball();

void setup() {
  size(800, 800);
}

void draw() {
  simulatePhysics();
  processCollisions();
}

void simulatePhysics() {
  ball.update();
}

void processCollisions() {
  //TODO:
  // - Write code for collision detection on paddles
  // (collides ONLY if colliding with paddle AND paddle is same color as ball)
  // after collision adds 1 point to player score
}

void keyPressed() {
}

void keyReleased() {
}