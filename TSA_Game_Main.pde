//todo
//add collision detection
//add collision physics
//5 seconds of black and white before start
//find better way than hard coding paddle colors

Ball ball = new Ball();
color[] colors = new color[8];
Paddle[] paddles = new Paddle[8];

int degreeVelocity; // 0 = not moving, 1 = counter clockwise, -1 clockwise
float currentDegree = 0;
int radius = 375; // radius of circle the paddles are formed in

void setup() {
  //Create Canvas
  size(800, 800);
  
  //Setup colors array
  colors[0] = color(255, 0, 0); //red
  colors[1] = color(255, 0, 0); 
  colors[2] = color(255, 0, 0); 
  colors[3] = color(255, 0, 0); 
  colors[4] = color(0, 0, 255); //blue
  colors[5] = color(0, 0, 255); 
  colors[6] = color(0, 0, 255); 
  colors[7] = color(0, 0, 255); 
  
  /* COLORS:
  colors[0] = color(0); //black
  colors[1] = color(255, 0, 0); //red
  colors[2] = color(255, 20, 147); //pink
  colors[3] = color(255, 140,0); //orange
  colors[4] = color(255, 255, 0); //yellow
  colors[5] = color(0, 255, 0); //green
  colors[6] = color(0, 0, 255); //blue
  colors[7] = color(148, 0, 211); //purple
  */
  
  //Setup paddles array
  for(int i = 0; i < 8; i++){
    paddles[i] = new Paddle((45 * i), colors[i]); // 45 * i sets up degree of offset
  }
  
  //Initiates ball movement
  ball.start();
}

void draw() {
  
  //Sets up proper coordinate system
  scale(1, -1); //Converts computer grid to real world grid
  translate(width/2, -height/2); //sets origin to center instead of top left corner
  
  simulatePhysics();
  
  processCollisions();
  
  repaint();
  
}

void simulatePhysics() {
  //updates paddle positions
  currentDegree += degreeVelocity;
  
  //updates position of moving ball
  ball.update();
}

void processCollisions() {
  //TODO:
  // - Write code for collision detection on paddles
  // (collides ONLY if colliding with paddle AND paddle is same color as ball)
  // after collision adds 1 point to player score
}

void repaint(){
  background(200);
  noStroke();
  
  //Shows paddles
  for(Paddle paddle : paddles){
    paddle.show();
  }
  
  //Shows ball
  ball.show();
}

void keyPressed() {
  if(keyCode == 68){
    degreeVelocity = -2; //Clockwise
  } else if(keyCode == 65){
    degreeVelocity = 2; //Counter Clockwise
  }
}

void keyReleased() {
  degreeVelocity = 0; //stops paddle movements when key is released
}
