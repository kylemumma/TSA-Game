//TODO
//-fix ball speed so its always the same speed no matter y vel

import java.util.Random;

private PVector pos = new PVector(0, 0);
private PVector vel = new PVector(0, 0);
private final int DIAMETER = 10;
private final int SPEED = 3;
//private PImage ballImage;

class Ball {
  
  void start(){
    //set ball sprite
    //ballImage = loadImage("ball.png");
    
    setRandomVelocity();
    
  }
  
  void setRandomVelocity(){
    //x velocity
    vel.x = random(11) - 5;
    
    //y velocity
    vel.y = random(11) - 5;
    
    //normalize velocity
    float magnitude = sqrt(vel.x*vel.x + vel.y*vel.y);
    vel.x = SPEED * (vel.x / magnitude);
    vel.y = SPEED * (vel.y / magnitude);
  }

  void show() {
    //image(ballImage, pos.x, pos.y, SIZE, SIZE);
    fill(75);
    ellipse(pos.x, pos.y, DIAMETER, DIAMETER);
  }

  void update() {
    pos.x += vel.x;
    pos.y += vel.y;
  }
  
  float getRadius(){
    return DIAMETER / 2;
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
