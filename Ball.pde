//TODO
//-fix ball speed so its always the same speed no matter y vel

import java.util.Random;

private PVector pos = new PVector(0, 0);
private PVector vel = new PVector(0, 0);
private final int SIZE = 10;

Random rand = new Random();

class Ball {
  
  void start(){
    //x velocity
    vel.x = rand.nextInt(2);
    if(vel.x == 0){
      vel.x = -1;
    }
    
    vel.y = rand.nextInt(11) - 5;
    
  }

  void show() {
    fill(75);
    ellipse(pos.y, pos.x, SIZE, SIZE);
  }

  void update() {
    pos.x += vel.x;
    pos.y += vel.y;
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
